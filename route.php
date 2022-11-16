<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

//CONEXION BASE DE DATOS
define('DB_URL', 'mysql:host=127.0.0.1;dbname=TPEDB;charset=utf8');
define('DB_USER', 'root');
define('DB_PASS', '');


require_once('./app/Controller/MovieController.php');
require_once('./libs/Router.php');


//Creo controladores 
$movieController = new MovieController();


// crea el router
$router = new Router();

// defina la tabla de ruteo
$router->addRoute('movies', 'GET', 'movieController', 'getMovies'); 
$router->addRoute('movies/:ID', 'GET', 'movieController', 'getMovie');
$router->addRoute('movies/:ID', 'DELETE', 'movieController', 'deleteMovie');
$router->addRoute('movies', 'POST', 'movieController', 'insertMovie'); 
$router->addRoute('movies/:ID', 'PUT', 'movieController', 'editMovie');

// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);

