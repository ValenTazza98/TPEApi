<?php
require_once('./app/Model/MovieModel.php');
require_once('./app/Model/ProjectionModel.php');
require_once('./app/View/ApiView.php');

class MovieController {

    private $moviemodel;
    private $apiview;

    private $data;

    public function __construct()
    {
        $this->moviemodel = new MovieModel();
        $this->apiview = new ApiView();
        // lee el body del request
        $this->data = file_get_contents("php://input");
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getMovies($params = null) {
        //primero ver si tiene condiciones o es el get solo

        $offset = -1;
        $limit = 0;
        $nametableSearch = "";
        $name = "";
        $nametableOrder = "id";
        $direction = 'ASC';

        $arrayNametable = [
            "id" => "id",
            "title" => "title",
            "description" => "description",
            "img" => "img",
            "genre" => "genre",
            "duration" => "duration",
            "ASC" => "ASC",
            "DESC" => "DESC",
        ];

        if (isset($_GET['page'])) {
            if (isset($_GET['limit'])) {
                $limit = intval($_GET['limit']);
            } else {
                $limit = 10;
            }
            $page = intval($_GET['page']);
            

            $offset = $page*$limit-$limit;
        }

        //filtro por valor columna
        if (isset($_GET['searchby']) && isset($_GET['element'])) {
            $name = $_GET['element'];
            $nametableSearch = $_GET['searchby'];
            if (isset($arrayNametable[$nametableSearch])) {
                $nametableSearch = $arrayNametable[$nametableSearch];
            }
            else {
                $this->apiview->response("el valor $nametableSearch no esta en la tabla", 404);
            }
            
        }

        //ordenamiento por valor columna
        if (isset($_GET['orderby'])) {
            if (isset($_GET['direction'])) {
                $direction = $_GET['direction'];
            } 
            $nametableOrder = $_GET['orderby'];
            if (isset($arrayNametable[$nametableOrder]) && isset($arrayNametable[$direction] )) {
                $nametableOrder = $arrayNametable[$nametableOrder];
                $direction = $arrayNametable[$direction];
            }
            else {
                $this->apiview->response("el valor $nametableOrder no esta en la tabla", 404);
            }
        }
        
        $movies = $this->moviemodel->getMovies($limit, $offset, $nametableSearch, $name, $nametableOrder, $direction);
        if (empty($movies)) {
            $this->apiview->response("No existen elementos con estas caracteristicas", 404);
        }
        $this->apiview->response($movies);

        
    }

    public function getMovie($params = null) {
        $id = $params[':ID'];

        $movie = $this->moviemodel->getMovieById($id);
        if ($movie) {
            $this->apiview->response($movie);
        } else {
            $this->apiview->response("La tarea con el id=$id no existe", 404);
        }
    }

    public function insertMovie($params = null) {
        $movie = $this->getData();

        if (empty($movie->title) || empty($movie->description) || empty($movie->img) || empty($movie->genre) || empty($movie->duration)) {
            $this->apiview->response("Complete los datos", 400);
        } else {
            $id = $this->moviemodel->insertMovie($movie->title, $movie->description, $movie->img, $movie->genre, $movie->duration);
            $movie = $this->moviemodel->getMovieById($id);
            $this->apiview->response($movie, 201);
        }
    }

    public function editMovie($params = null) {
        $id = $params[':ID'];
        $movie = $this->moviemodel->getMovieById($id);

        if ($movie) {
            $movie = $this->getData();
            if (empty($movie->title) || empty($movie->description) || empty($movie->img) || empty($movie->genre) || empty($movie->duration)) {
                $this->apiview->response("Complete los datos", 400);
            } else {
                $this->moviemodel->editMovie($id, $movie->title, $movie->description, $movie->img, $movie->genre, $movie->duration);
                $this->apiview->response($movie);
            }
        } else {
            $this->apiview->response("La tarea con el id=$id no existe", 404);
        }
    }

    public function deleteMovie($params = null) {
        $id = $params[':ID'];

        $movie = $this->moviemodel->getMovieById($id);
        if ($movie) {
            $this->moviemodel->deleteMovie($id);
            $this->apiview->response("Borrado con exito la pelicula con id $id");
        } else {
            $this->apiview->response("La tarea con el id=$id no existe", 404);
        }
    }
}
