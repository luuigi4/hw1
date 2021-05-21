<html>
	<head>
		<title>Quale piattaforma streaming ha il film? </title>
		<meta name="viewport"content="width=device-width, initial-scale=1"> 
		<link rel="stylesheet" href="collabora.css"/>
		<script src="collabora.js" defer></script>
	


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
						$_SESSION["pagina"]="Catalogo.php";
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
	<h1>Aiutaci a rendere più completo il nostro database!</h1>
	<h1>Cerca un film non ancora in catalogo</h1>
	
					<form  name='nome_form' method='post'> 
					<label><span>Titolo</span><input type='text' name='titolo'></label>
					<label>&nbsp; <input type='submit'></label>
					</form>
				
				<h2 class="nascondi">Film non trovato!</h2>

			<section>
				<div id="informazioni" >
					<div class="wrap nascondi">
		
					</div>
				</div>
			</section>
			
			<section id="options" class="nascondi">
			<h1>Quale piattaforma di streaming ha i diritti?</h1>
				<form  name='streaming' method='post'> 
				<select name='Streaming'>
				<option value='Amazon prime'>Amazon Prime Video</option>
				<option value='Disney+'>Disney+</option>
				<option value='Infinity'>Infinity</option>
				<option value='Netflix'>Netflix</option>
				<option value='Now Tv'>Now Tv</option>
				</select>
				<label>&nbsp; <input type='submit'></label>
				</form>
				<h2 class="nascondi">Film inserito correttamente</h2>
			</section>
			
	</body>