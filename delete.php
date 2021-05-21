<?php
		session_start();
		
		if((isset($_SESSION["nome"]))&&(isset($_SESSION["id"]))){
				//mi connetto al database per recuperare i dati
				$conn=mysqli_connect('localhost','root', '', 'streaming');
	
				$query="delete from preferiti where id_utente=".$_SESSION["id"]. " and id_film=".$_GET["id"];
				
				$res=mysqli_query($conn, $query);

				mysqli_close($conn);

		}

?>