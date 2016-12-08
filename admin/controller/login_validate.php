<?php 
	if ($_POST['username'] == 'ezrubak' && $_POST['password'] == 'ezrubak') {
		header("Location:../app/home.php");
	}else{
		header('Location:../index.html?stauts = failed');
	}