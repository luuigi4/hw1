<?php

	if(isset($_GET["titolo"])){
	$curl= curl_init();
	$titolo=urlencode($_GET["titolo"]);
	$url="http://www.omdbapi.com/?i=tt3896198&apikey=c64fe1d3&t=".$titolo;
	//echo $url;
	curl_setopt($curl, CURLOPT_URL,$url);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	$result=curl_exec($curl);
	echo $result;

	curl_close($curl);
	

	}
?>
