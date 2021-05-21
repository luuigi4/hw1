<html>
  <head>
    <title> La rivoluzione dello streaming-Login</title>
	<link rel="stylesheet" href="news.css"/>
	<script src="java.js" defer></script>
	</head>
	
	<body>

			<nav>
			<a href="HomePage.php">Home</a>
			<a href="Catalogo.php">Catalogo</a>
			<a href="Collabora.php">Collabora</a>
			<a href="news.php">News</a>
			<?php
					session_start();

					if(!isset($_SESSION["nome"])){
						header("Location:Login.php");
						$_SESSION["pagina"]="news.php";

					}else{
						echo "<a href='logout.php'><img src=logout.png>Logout</a>";
					}
			?>
            </nav>
			   <?php
			if(isset($_SESSION["nome"])){
			echo "<div id='profilo'>"; 
			echo "<img src='utente.png'/>";
			echo "<h2>Benvenuto ".$_SESSION["nome"]."</h2 >";
			echo "</div>";
			//echo " Stampo il nome" .$_SESSION["nome"]; 
		}
		       ?>
			<article>
			<h1>Le ultime News sulle principali piattaforme di Streaming!</h1>
	
	
			
			</article>
			

	</body>
	
	
</html>