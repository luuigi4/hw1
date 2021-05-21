<!DOCTYPE>
	<html>
	<head>
		<title>Quale piattaforma streaming ha il film? </title>
		<meta name="viewport"content="width=device-width, initial-scale=1"> 
		<link rel="stylesheet" href="mhw3.css"/>
		<script src="content.js" defer></script>
		<script src="script3.js" defer></script>
	
	
		
		<link rel="preconnetti" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2? family=Alata&family=Lateef&family=Overlock&famiglia=Ubuntu&display=swap" rel="stylesheet">
		<link rel="preconnetti" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2? family=Roboto&display=swap" rel="foglio di stile">	

	</head>
	
	
	<body>
	<?php
		session_start();
		if(isset($_SESSION["nome"])){
			echo " Stampo il nome" .$_SESSION["nome"]; 
		}
		/*$t = date("H");
		if ($t < "10") {
		echo	"<h1> Buongiorno".$_SESSION["nome"]."!</h1>".$t;
		} else if ($t < "20") {
		echo "<h1>Buon pomeriggio".$_SESSION["nome"]."!</h1>".$t;
		} else {
		echo "Buona notte".$_SESSION["nome"]."!".$t;
		}*/
	?>
			<nav>
			<a href="mhw1.php">Disney+</a>
			<a>Infinity</a>
			<a>Netflix</a>
			<a>Now</a>
			<a>Prime Video</a>
	<?php
		if(!isset($_SESSION["nome"])){
			
			echo "<a href='login.php'><img src=login.png>Login</a>";
		}else{
			echo "<a><img src=logout.png>Logout</a>";
		}
	?>
            </nav>

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

			<section class="top">
				<h1>Clicca qui per scoprire i film più visti della settimana!</h1>
				<div class="nascondi"></div>
			</section>
				
				<form> <h2>Cerca altri film non in catalogo</h2>
					<input type='text' id='titolo'>
					<input type='submit' id='submit' value='Cerca'>
				</form>

			<section>
				<div id="informazioni" >
					<div class="wrap nascondi">
		
					</div>
				</div>
			</section>
			
		 </article>
		 <footer> 
			 <div>3)La rivoluzione dello streaming-Luigi Finocchiaro O46002054</div>
			 <address>Università degli Studi di Catania- Ingegneria Informatica</address>
		 </footer>
 

	</body>
	</html>