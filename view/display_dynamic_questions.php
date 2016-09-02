<html>
	 <head>
		<title>Quiz</title>
		<link rel="stylesheet" type="text/css" href="../css/index1.css">
	</head>
	<body>
		<form method="post" action='../app/validate_answer.php'>
			<?php

				session_start();
				if (isset($_SESSION["user"])) {
			?>
				<div id="logo_bar" style="margin-left: 150px; margin-top: 60px;">
			 	<?php
					echo "welcome ".$_SESSION["user"]."</div>";
					unset($_SESSION["user"]);
				}
			?>
			
			<div id="container">
			
				<div class="question">
				  <p>
					  <?php 
					  	print_r($_SESSION["ques"]);
					  ?>
				  </p>
				  <input type="radio" name="ans" value="a" checked ><?php 
					  	print_r($_SESSION["a"]);
					  ?><br>
				  <input type="radio" name="ans" value="b" ><?php 
					  	print_r($_SESSION["b"]);
					  ?><br>
				  <input type="radio" name="ans" value="c" ><?php 
					  	print_r($_SESSION["c"]);
					  ?><br>
				  <input type="radio" name="ans" value="d" ><?php 
					  	print_r($_SESSION["d"]);
					  ?><br>
				  <button class="btn1">next</button>
				</div>
			</div>
		</form>
	</body>
</html>

