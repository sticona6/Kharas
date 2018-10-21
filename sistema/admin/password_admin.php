<?php
// Validasi Login : yang boleh mengakses halaman ini hanya yang sudah Login admin
include_once "../library/inc.sesadmin.php";

# Tombol Simpan diklik
if(isset($_POST['btnSimpan'])){
	// Baca form
	$txtPassBaru= $_POST['txtPassBaru'];
	$txtPassLama= $_POST['txtPassLama'];
	
	// Validasi form
	$pesanError = array();
	if (trim($txtPassBaru)=="") {
		$pesanError[] = "<b> Nueva Contraseña </b> no especificada !";		
	}
	
	// Validasi Password lama (harus benar)
	$sqlCek = "SELECT * FROM admin WHERE username='admin' AND password ='".md5($txtPassLama)."'";
	$qryCek = mysqli_query($koneksidb, $sqlCek)  or die ("Query Periksa Password Salah : ".mysqli_error());
	if(mysqli_num_rows($qryCek) <1){
		$pesanError[] = "Maaf, <b> Password Anda Salah</b>....silahkan ulangi";
	}
	
	# JIKA ADA PESAN ERROR DARI VALIDASI
	if (count($pesanError)>=1 ){
		echo "<div class='mssgBox'>";
		echo "<img src='../images/attention.png'> <br><hr>";
			$noPesan=0;
			foreach ($pesanError as $indeks=>$pesan_tampil) { 
			$noPesan++;
				echo "&nbsp;&nbsp; $noPesan. $pesan_tampil<br>";	
			} 
		echo "</div> <br>"; 
	}
	else {
		# SIMPAN DATA KE DATABASE. Jika tidak menemukan pesan error, simpan data ke database
		$mySql	= "UPDATE admin SET password='".md5($txtPassBaru)."'";
		$myQry	= mysqli_query($koneksidb, $mySql);
		if($myQry){
			echo "<meta http-equiv='refresh' content='0; url=?page=Logout&Info=Password Berhasil Diganti'>";
		}
	}	
}  

# Membaca Data Login untuk diedit
$mySql = "SELECT * FROM admin";
$myQry = mysqli_query($koneksidb, $mySql)  or die ("Query salah : ".mysqli_error());
$myData= mysqli_fetch_array($myQry);
?>
<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" name="form1">
<table class="table-list" width="100%">
	<tr>
	  <th colspan="3">ADMIN CAMBIAR CONTRASE&#209;A </th>
	</tr>
	<tr>
	  <td width="15%"><strong>Usuario</strong></td>
	  <td width="1%"><b>:</b></td>
	  <td width="84%"><strong><?php echo $myData['username']; ?></strong></td>
	</tr>
	<tr>
      <td><strong>Antigua Contrase&#241;a</strong></td>
	  <td><b>:</b></td>
	  <td><input name="txtPassLama" type="password" value="" size="40" maxlength="30"/></td>
	</tr>
	<tr>
	  <td><strong>Nueva Contrase&#241;a</strong></td>
	  <td><b>:</b></td>
	  <td><input name="txtPassBaru" type="password"  value="" size="40" maxlength="30"/></td>
	</tr>
	<tr><td>&nbsp;</td>
	  <td>&nbsp;</td>
	  <td><input type="submit" name="btnSimpan" value="Cambiar " style="cursor:pointer;"></td>
    </tr>
</table>
Tambien puede cambiar la contrase&#241;a a traves de herramientas <strong>phpMyAdmin</strong>, Utilice un tipo de cifrado de datos <strong>MD5</strong> para la contrase&#241;a.
</form>