<?php 
	
	session_start();
	include_once '../db/conn.php';
	function add_user($raw_input, $conn){
		$sql1 = "INSERT INTO `participants` (`participant`, `institution`, `email`) VALUES ('".$raw_input["name"]."','".$raw_input["college"]."','".$raw_input["mail"]."')";
		if(execute_query($sql1, $conn)){
			$_SESSION["email"] = $raw_input['mail'];
			$_SESSION["user"]=$raw_input["name"];
			$_SESSION["i"] = 0;
			header("location: generate_dynamic_questions.php");
		}else{
			echo "not inserted";
		}
	}

	function generate_dynamic_questions($total_array, $total_questions){
		$total_questions = $total_questions-1;
		$id = rand(0,$total_questions);
		$random_array = $total_array[$id];
		$_SESSION['ques']=$random_array['question'];
		$_SESSION['a']=$random_array['a'];
		$_SESSION['b']=$random_array['b'];
		$_SESSION['c']=$random_array['c'];
		$_SESSION['d']=$random_array['d'];
		$_SESSION['ans']=$random_array['ans'];
		$_SESSION["i"]++;


	}

	function get_total_questions($conn){
		$sql = "SELECT COUNT(id) FROM question";
		$result = execute_query($sql, $conn);
		$row = $result->fetch_assoc();
		return $row['COUNT(id)'];

	}


	function get_last_mark($conn, $email){
		$sql = "SELECT `marks` FROM `participants` WHERE `email`='".$email."'"; 
		echo "$sql";
		$result = execute_query($sql, $conn);
		$row = $result->fetch_assoc();
		print_r($row);
		if(empty($row)){
			return 0;
		}else{
			return $row['marks'];
		}
	}

	function check_if_attended_all(){
		if($_SESSION['i'] == 20)
			return true;
		else
			return false;
	}