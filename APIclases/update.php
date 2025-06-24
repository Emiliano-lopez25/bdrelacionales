<?php
    header("Content-Type:application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }


    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $nombre = $conn->real_escape_string($input["nombre"]);
    $hora = $conn->real_escape_string($input["hora"]);
    $profesor = $conn->real_escape_string($input["profesor"]);
    $aula = $conn->real_escape_string($input["aula"]);

    $query = "UPDATE clases SET nombre = ?, hora = ?, profesor = ?, aula = ? WHERE id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("sisii", $nombre, $hora, $profesor, $aula, $id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "clases actualizando correctamente"]);
        }else{
            http_response_code(404);
            echo json_encode(["error" => "No se encontró con el id: $id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();
?>    