<?php
	//per prima cosa mi connetto al database
	$conn= mysqli_connect('localhost','root', '', 'streaming');
	
	$query="select * from news";
	
	$res=mysqli_query($conn, $query);
	
	$news=array();
	
	while($row=mysqli_fetch_assoc($res)){
		
		$news[]=array("Id" => $row["Id"],
					   "Titolo" => $row["Titolo"],
					   "Autore" => $row["Autore"],
					   "Data" => $row["Data"],
					   "Categoria" => $row["Categoria"],
					   "Descrizione" => $row["Descrizione"],
					   "Immagine" => $row["Immagine"],				
					   "Url" => $row["Url"]	
		);
		
	}
	echo json_encode($news);
				mysqli_close($conn);

?>