<?php 

	include_once '../db/conn.php'; 
	include_once '../app/common_functions.php';
	$conn = db_connect();
	$sql = "SELECT * FROM `question`";
	$result = execute_query($sql, $conn);
	while ($row = $result->fetch_assoc()) {
		$final[] = $row;
	}

	$total_questions = get_total_questions($conn);
	generate_dynamic_questions($final, $total_questions);
	if(check_if_attended_all()){
		header("Location: ../view/end.php");
	}else{
		header("Location: ../view/display_dynamic_questions.php");

	}