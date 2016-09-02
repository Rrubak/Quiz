<?php 
	include_once 'common_functions.php';
	include_once '../db/conn.php';
	$conn = db_connect();
	print_r($_SESSION);
	print_r($_POST);
	if($_SESSION['ans'] == $_POST['ans']){

		$lastmark = get_last_mark($conn, $_SESSION['email']);
		echo "$lastmark";
		$lastmark++;
		$sql = "UPDATE `participants` SET `marks` = '".$lastmark."' WHERE `email` = '".$_SESSION['email']."'";
		echo "$sql";
		execute_query($sql, $conn);
	}
	header("Location: generate_dynamic_questions.php");
