<?php
include_once "../library/inc.sesadmin.php";

//Periksa data Kode pada URL 
if (empty($_GET['Kode'])) {
	echo "<b>Data Yang Dihapus tidak ada</b>";
}
else {
	//	HPUS DATA SESUAI KODE YANG DIKRIIM DI URL 
	 $Kode = $_GET['Kode'];
	 $mySql = "DELETE FROM tiki WHERE kd_kota='$Kode'";
	 $myQry = mysqli_query ($koneksidb, $mySql) or die ("Error hapus Data".mysqli_error());
	 if ($myQry) {
	 	echo "<meta http-equiv='refresh' content='0; url=?open=Tiki-Data'>";
	 }
}
?>