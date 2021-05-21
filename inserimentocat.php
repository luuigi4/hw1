<?php

//print_r($_GET["genere"]);

   $conn=mysqli_connect('localhost','root', '', 'streaming');
   
   $query1="select nome from film where nome='".$_GET["titolo"]."'";
   
   $query2="select id from regista where Nome='".$_GET["regista"]."'";

		//Procedura per prendere l'id del regista
  	     $res2=mysqli_query($conn, $query2);
		 $row=mysqli_fetch_row($res2);

		 $num_rows = mysqli_num_rows($res2);
		//print_r($num_rows);

		 if($num_rows===0){
				//echo "mi trovo qui";
				$indice="select count(id) from regista";
				$ris=mysqli_query($conn, $indice);
				$riga=mysqli_fetch_row($ris);

				$id=$riga[0]+1;
				$inserimento="insert into regista values(".$id.",'".$_GET["regista"]."')";
				//print_r($inserimento);
				$risult=mysqli_query($conn, $inserimento);

		  } else{
			  $id=$row[0];//id è la variabile da mettere per il regista

		  }
		//echo "ecco il codice del regista";
		//print_r($id);
		
		//procedura per prendere il codice dello streaming		
		$stream=$_GET["streaming"];
		// $stream=urlencode($_GET["streaming"]);
		 //echo"lo stream è:".$stream;
		 $streaming="select codice from catalogo where NomeStreaming='".$stream."'";
		 //echo "la query è:".$streaming;
	     $id_stream=mysqli_query($conn, $streaming);
		 $result=mysqli_fetch_row($id_stream);
		 //echo "ecco il codice dello streaming";
		 //print_r($result[0]);
		 $codice=$result[0];//questo è il codice da mettere nell'insert finale
	
			
  
     $res1=mysqli_query($conn, $query1);
   
  // $row=mysqli_fetch_row($conn, $res1);
   
	$num_righe = mysqli_num_rows($res1);
  
  if($num_righe!==0){
	  echo json_encode( "Impossibile inserire un film già presente!");
  } else{


				$index="select count(id) from film";
				$ri=mysqli_query($conn, $index);
				$r=mysqli_fetch_row($ri);

				$identificativo=$r[0]+1;
				//echo "l'id è" .$identificativo;
				$queryf="insert into film(nome,regista,catalogo,genere,anno,poster,id) values('".$_GET["titolo"]."',".$id.",".$codice.",'".$_GET["genere"]."',".$_GET["anno"].",'".$_GET["poster"]."',".$identificativo.")";
				//echo"stampo la query".$queryf;
				$risultato=mysqli_query($conn,$queryf);
	
		 	  echo json_encode( "Film inserito correttamente!");

		 
	  
  }
  
?>