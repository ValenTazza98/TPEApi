<?php
class MovieModel {

    private $db;

    public function __construct() {
        $this->db = new PDO(DB_URL, DB_USER, DB_PASS);
    }


    function getMovies($limit, $offset, $nametableSearch, $name, $nametableOrder, $direction) {
       
        if ($nametableSearch == ""){
            $condsearch = "";
        } else {
            $condsearch = "WHERE $nametableSearch = ?";
        }

        if ($offset < 0){
            $condpagination = "";
        } else {
            $condpagination = "LIMIT $limit OFFSET $offset";
        }

        $condorder = "ORDER BY $nametableOrder $direction" ;
        
        
        $query = $this->db->prepare("SELECT * FROM Movie $condsearch $condorder $condpagination");
        if ($nametableSearch != "") {
            $query->execute([$name]);
        } else {
            $query->execute();
        }
        $movies = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $movies;
    }

    function getMovieById($id) {
        $query = $this->db->prepare("SELECT * FROM Movie WHERE id = ?");
        $query->execute([$id]);
        $movie = $query->fetch(PDO::FETCH_OBJ); // devuelve un solo objeto
        return $movie;
    } 

    function insertMovie($title, $description, $img, $genre, $duration) {
        $query = $this->db->prepare("INSERT INTO Movie (title, `description`, img, genre, duration) VALUES (?, ?, ?, ?, ?)");
        $query->execute([$title, $description, $img, $genre, $duration]);

        return $this->db->lastInsertId();
    }

    function editMovie($id, $title, $description, $img, $genre, $duration){
        $query = $this->db->prepare("UPDATE Movie SET title = ?, `description` = ?, img = ?, genre = ?, duration = ? WHERE id = ?");
        $result = $query->execute([$title, $description, $img, $genre, $duration, $id]);
        
        return $result !== false;
    }

    function deleteMovie($id) {
        $query = $this->db->prepare('DELETE FROM Movie WHERE id = ?');
        $result = $query->execute([$id]);

        return $result !== false;
    }
    
}