<?php 
	include_once 'common_functions.php';
	include_once '../db/conn.php'; 
	$conn = db_connect();
	add_user($_POST, $conn);