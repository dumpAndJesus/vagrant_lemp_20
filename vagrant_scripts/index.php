<style>
* {
	font-family: sans-serif;
}
</style>

<?php 
  echo "Hello from PHP api file \n";
?>
<br /><br /><br />
<strong> GET: </strong>
<br />
<?php 
  print_r($_GET);
?>
<br /><br /><br />
<strong> POST: </strong>
<br />
<?php 
  print_r($_POST);
?>
<br /><br /><br />
<strong> GET / POST & COOCKIE: </strong>
<br />
<?php 
  print_r($_REQUEST);
?>

