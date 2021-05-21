<?php
	//per prima cosa mi connetto al database
	$conn= mysqli_connect('localhost','root', '', 'streaming');
	
	$query="select * from contenuti order by id";
	
	$res=mysqli_query($conn, $query);
	
	$film=array();
	
	while($row=mysqli_fetch_assoc($res)){
		
		$film[]=array("id" => $row["id"],
					   "titolo" => $row["titolo"],
					   "regista" => $row["regista"],
					   "streaming" => $row["streaming"],
					   "genere" => $row["genere"],
					   "anno" => $row["anno"],
					   "poster" => $row["poster"]				
		);
		
	}
	echo json_encode($film);
					mysqli_close($conn);

	
?>