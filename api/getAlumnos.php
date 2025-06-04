<?php
	header("Content-Type: application/json");
	header("Access-Control-Allow-Origin: *");
	
	$usuarios=[
		["id" => 1, "nombre" => "Maximo Coronel", "correo" => "maximo@gmail.com"],
		["id" => 1, "nombre" => "Axel Armando", "correo" => "axel@gmail.com"],
		["id" => 1, "nombre" => "Hector Aaron", "correo" => "hector@gmail.com"],
	];
	
	echo json_encode($usuarios);
?>
		