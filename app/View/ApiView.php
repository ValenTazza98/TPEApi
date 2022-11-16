<?php

class ApiView {

    public function response($data, $status = 200) {
        header("Content-Type: application/json");
        header("HTTP/1.1 " . $status . " " . $this->_requestStatus($status));
        
        // convierte los datos a un formato json
        echo json_encode($data);
    }

    public function errorResponse($data, $status = 400) {
      $this->response([ "error" => $data ], $status); 
    }

    private function _requestStatus($code){
        $status = array(
          200 => "OK",
          201 => "Created",
          400 => "Bad request",
          404 => "Not found",
          500 => "Internal Server Error"
        );
        return (isset($status[$code])) ? $status[$code] : $status[500];
      }
  
}