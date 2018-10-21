<?php
mysqli_connect('127.0.0.1','root','') or die (mysqli_error());
mysqli_select_db('a9862724_phpherr');

$kode=$_GET['code'];

$sql=mysqli_query($koneksidb, "SELECT * FROM pelanggan WHERE kode_aktivasi= '$kode' AND status='N'");

$nums=mysqli_num_rows($sql);
if($nums > 0){
	$data=mysqli_fetch_array($sql);
mysqli_query($koneksidb, "UPDATE pelanggan SET status='Y' WHERE kd_pelanggan='$data[kd_pelanggan]'");
echo "AKUN ANDA TELAH AKTIF";

require "daftar_member.php"; 
}
?>