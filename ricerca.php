<?php
	//per prima cosa mi connetto al database
	$conn= mysqli_connect('localhost','root', '', 'streaming');
	
	$nome=mysqli_real_escape_string($conn, $_GET["nome"]);

	$query="select id, nome from film where nome like '%".$_GET["nome"]."%'";
	
	$res=mysqli_query($conn, $query);
	
	
	$film=array();
	
	while($row=mysqli_fetch_assoc($res)){
		
		$film[]=array("id" => $row["id"],
					   "nome" => $row["nome"]				
		);
		
	}
	echo json_encode($film);
					mysqli_close($conn);

?>