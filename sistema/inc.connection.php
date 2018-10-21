<?php
$my['host']	= "127.0.0.1";
$my['user']	= "root";
$my['pass']	= "";
$my['dbs']	= "a9862724_phpherr";

$koneksidb	= mysqli_connect($my['host'], $my['user'], $my['pass']);
if (! $koneksidb) {
  echo "Failed Connection !";
}
// memilih database pda server
mysqli_select_db($my['dbs'])
	 or die ("Database not Found, please contact administrator system!");
?>