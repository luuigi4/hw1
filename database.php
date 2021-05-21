<pre>
<?php
//mi connetto al db streaming
$conn= mysqli_connect('localhost','root', '', 'streaming');

$query="select * from utenti";

$res=mysqli_query($conn, $query);

//$row=mysqli_fetch_row($res);
while($row=mysqli_fetch_row($res)){
	echo $row[0].", ".$row[1].",".$row[2]."\n";
}
?>
</pre>