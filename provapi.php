
<?php
//'https://api.themoviedb.org/3/discover/movie?api_key=ba19f39ba1a719d4d5c62ab7aa10ce20&sort_by=popularity.desc&language=it-en&with_original_language=en&year=2021';


	$curl= curl_init();
	curl_setopt($curl, CURLOPT_URL,"https://api.themoviedb.org/3/discover/movie?api_key=ba19f39ba1a719d4d5c62ab7aa10ce20&sort_by=popularity.desc&language=it-en&with_original_language=en&year=2021");
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	$result=curl_exec($curl);
	echo $result;
	curl_close($curl);
					mysqli_close($conn);

	

?>