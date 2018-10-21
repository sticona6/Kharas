<?php
$my['host']	= "127.0.0.1";
$my['user']	= "root";
$my['pass']	= "";
$my['dbs']	= "a9862724_phpherr";

$koneksidb	= mysqli_connect($my['host'], $my['user'], $my['pass'], $my['dbs']);
if (! $koneksidb) {
  echo "Fallo en la Conexion !";
}
// memilih database pda server
mysqli_select_db($koneksidb, $my['dbs'])
	 or die ("Base de Datos no encontrada, porfavor ponganse en contacto con el administrador del sistema!");
?>