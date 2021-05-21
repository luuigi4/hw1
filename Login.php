<?php

	session_start();
		$err=0;
	
	if (isset($_SESSION["nome"])){//verifico l'accesso
		//vado nella seconda pagina
		if(isset($_SESSION["pagina"])){
			header("Location:".$_SESSION["pagina"]."");
		}else{
		header("Location:HomePage.php");
		//exit;
		}
	}
	//verifico se mi sto registrando per la prima volta
	if (isset($_POST["nome"])&& isset($_POST["email"])&& isset($_POST["password"])){
		$conn= mysqli_connect('localhost','root', '', 'streaming');

		$nome=mysqli_real_escape_string($conn, $_POST["nome"]);
		$email=mysqli_real_escape_string($conn, $_POST["email"]);
		$password=mysqli_real_escape_string($conn, $_POST["password"]);
		
		
		$utente="select id from utenti where email like '".$email."'";
		$risultato=mysqli_query($conn, $utente);
		//$row=mysqli_fetch_row($res);
		$numero_res = mysqli_num_rows($risultato);
		
			if($numero_res==1){
				$err=1;
			}else{
		
					$indice="select count(id) from utenti";
					$res=mysqli_query($conn, $indice);
					$row=mysqli_fetch_row($res);
					$id=$row[0]+1;
		
					$query="insert into utenti values(".$id.",'".$nome."','".$email."','".$password."')";
					$res2=mysqli_query($conn, $query);
		}	
	
}
		//VERIFICO l'esistenza di dati post
	if(isset($_POST["email"])&& isset($_POST["password"])){
		//echo "Verifico l'esistenza di dati post<br> ";
		$conn= mysqli_connect('localhost','root', '', 'streaming');

		$email=mysqli_real_escape_string($conn, $_POST["email"]);
		$password=mysqli_real_escape_string($conn, $_POST["password"]);
		
		$query="select id,nome from utenti where email='".$email."'  "."and password='".$password."'";
		//echo "stampo la query: ".$query."<br>";
		$res=mysqli_query($conn, $query);
		$row=mysqli_fetch_assoc($res);
		$num_rows=mysqli_num_rows($res);
		
		//echo "Stampo le row trovate " .$num_rows."<br>";
			
		if($num_rows!==1){
			
			$errore=1;
		} else{
			//echo "Mi trovo nel ramo vero dell'if!<br>";
			//include "logout.php";
			//logout();
			$_SESSION["id"]=$row["id"];
			$_SESSION["nome"]=$row["nome"];
			//echo "La prima è:". $_SESSION["id"]."<br>";
			//echo "La seconda è:".$_SESSION["nome"];
			
			header("Location:Login.php");
			exit;
		}			
	
	}
	?>

<html>
  <head>
    <title> La rivoluzione dello streaming-Login</title>
	<link rel="stylesheet" href="login1.css"/>
	<script src="login1.js" defer></script>
	</head>
	

   <body>
		<?php
			if (isset($errore)){
				echo "<h2>E-mail o password errate</h2><br>";
			}
		?>
   		
		

	<div class='stile'>
			<h1>Accedi</h1>
 		<form name='nome_form' method='post'>
			<label>E-mail <input type='text' name='email'></label>
			<label>Password <input type='password' name='password'></label>
			<label>&nbsp; <input type='submit'></label>
		</form>
		<h3><span>Non sei ancora registrato? Registrati qui!</span></h3>

	</div>	

		<div id='contenitore' class='hidden stile2'>
					<h1>Registrati</h1>
		<?php
			if ($err==1){
				echo "<h2>E-mail già usata!</h2><br>";
			}
		?>
			<form id="reg" name='Registrazione' method='post'>
				<label>Nome <input type='text' name='nome'></label>
				<label>E-mail <input type='text' name='email'></label>
				<label>Password <input type='password' name='password'></label>
				<label>&nbsp; <input type='submit'></label>
			</form>
			<h3><span>Clicca qui per accedere</span></h3>
			<h4 class="hidden">Compila tutti i campi!</h4>
			<h4 class="hidden">La password deve contenere almeno 6 e massimo 12 caratteri alfanumerici</h4>

		</div>
		
		<div class ="overlay"></div>
		
		<h2><span></span></h2>
   </body>
</html>	