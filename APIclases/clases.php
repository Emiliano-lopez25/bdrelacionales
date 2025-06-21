<?php
	header("Content-Type: application/json");

	if($_SERVER['REQUEST_METHOD'] !== 'POST'){
		http_response_code(405);
		echo json_encode(['error' => 'solo metodo POST es permitido']);
	}

	require 'conexionSakila.php';
	
	$data = json_decode(file_get_contents('php://input'), true);
	$nombre = $data['nombre'];
	$hora = $data['hora'];
	$profesor = $data['profesor'];
	$aula = $data['aula'];

	$query = $conn->prepare("INSERT INTO clases (nombre, hora, profesor, aula) VALUES (?, ?, ?, ?)");

	if(!$query){
		http_response_code(500);
		echo json_encode(["error" => "Ocurrio un error al insertar"]);
		exit;
	}

	$query->bind_param("sssi", $nombre, $hora, $profesor, $aula);

	if($query->execute()){
		echo json_encode(["mensaje" => "clases insertado correctamente", "id" => $query->insert_id]);
	}else{
		http_response_code(["error" => "Fallo la insercion" . $query->error]);
	}
	
	$query->close();
	$conn->close();
?>