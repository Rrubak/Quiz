<?php 
	if ($_POST['username'] == 'ezrubak' && $_POST['password'] == 'ezrubak') {
		header("Location:../app/home.html");
	}else{
		header('Location:../index.html?stauts = failed');
	}