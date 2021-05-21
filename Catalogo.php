<!DOCTYPE>
	<html>
	<head>
		<title>Quale piattaforma streaming ha il film? </title>
		<meta name="viewport"content="width=device-width, initial-scale=1"> 
		<link rel="stylesheet" href="catalogo.css"/>
		<script src="ajax_contenuti.js" defer></script>
	
	
		
		<link rel="preconnetti" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2? family=Alata&family=Lateef&family=Overlock&famiglia=Ubuntu&display=swap" rel="stylesheet">
		<link rel="preconnetti" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2? family=Roboto&display=swap" rel="foglio di stile">	

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
						$_SESSION["pagina"]="Catalogo.php";
						header("Location:Login.php");
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
			<header>
			<h1> Vuoi vedere un film, ma non sai quale piattaforma ha i diritti?</h1>
			<h1>Cerca qui il film che desideri e scoprilo!</h1> 
			<span>Cerca </span> <input type="text"> 
			
			</header>
			
			
			<section id="sez_prefe" class="hidden layout">
			<h1>I tuoi film preferiti sono:</h1>
			<div ></div>
			</section>
			
			<section class="struttura">

			</section>

			
		 </article>
		 <footer> 
			 <div>3)La rivoluzione dello streaming-Luigi Finocchiaro O46002054</div>
			 <address>Università degli Studi di Catania- Ingegneria Informatica</address>
		 </footer>
 

	</body>
	</html>