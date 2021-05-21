<?php
	session_start();

		if((isset($_SESSION["nome"]))&&(isset($_SESSION["id"]))){
				//mi connetto al database per recuperare i dati
				$conn=mysqli_connect('localhost','root', '', 'streaming');
	
	
				$id_film=$_GET["id"];
				$titolo=$_GET["titolo"];
				$query1="Insert into preferiti values(".$_SESSION["id"].",'".$_SESSION["nome"]."','".$titolo."',".$id_film.")";                 
				
				$res=mysqli_query($conn, $query1);

				//$query2="Select where id_utente=$sess";

				if($res!=1){
					echo "Impossibile eseguire l'inserimento";

				}else{
					echo "stampo ".$res;

				}
			
				//$row=mysqli_fetch_row($res);
				echo $res;
			
		}else{
			echo json_encode("Non sei loggato");

		}
?>