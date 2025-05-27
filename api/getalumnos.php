<?php
   header("content-Type: application/json");
   header("access-Control-Allow-Origin: *");

   $usuario=[
              ["id" => 1, "nombre" => " Hector Ortiz", "correo" => " hector@gmail.com"],
              ["id" => 1, "nombre" => " Maximo Coronel", "correo" => " maximo@gmail.com"],
              ["id" => 1, "nombre" => " Emiliano Lopez", "correo" => " emiliano@gmail.com"],
              ];

       echo json_encode($usuario);
                 
?>