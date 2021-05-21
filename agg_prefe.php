<?php
	session_start();

		if((isset($_SESSION["nome"]))&&(isset($_SESSION["id"]))){
				//mi connetto al database per recuperare i dati
				$conn=mysqli_connect('localhost','root', '', 'streaming');
	

				$query=" select p.Id_Film, p.Titolo, f.Regista, f.streaming, f.genere, f.anno, f.poster from preferiti p join contenuti f on f.id=p.Id_Film where Id_utente=".$_SESSION["id"];                 
				
				//echo $_SESSION["id"];
				$res=mysqli_query($conn, $query);

					$preferiti=array();
					
	
				while($row=mysqli_fetch_assoc($res)){
		
				$preferiti[]=array("Id" => $row["Id_Film"],
							  "Titolo" => $row["Titolo"],
							  "Regista" => $row["regista"],
							  "Streaming" => $row["streaming"],
						      "Genere" => $row["genere"],							  
							  "Anno" => $row["anno"],
							  "Poster" => $row["poster"],
				);
				}	
			echo json_encode($preferiti);
							mysqli_close($conn);


		}else{
			echo json_encode("Non sei loggato");

		}
?>