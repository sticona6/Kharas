<?php
include_once "../library/inc.sesadmin.php";   // Validasi halaman harus Login
include_once "../library/inc.connection.php"; // Membuka koneksi
include_once "../library/inc.library.php";    // Membuka librari peringah fungsi
?>
<h2> INFORME POR CATEGORIAS</h2>
<table class="table-list" width="600" border="0" cellspacing="1" cellpadding="2">
  <tr>
    <td width="22" align="center" bgcolor="#CCCCCC"><strong>Nro</strong></td>
    <td width="62" bgcolor="#CCCCCC"><strong>Codigo</strong></td>
    <td width="500" bgcolor="#CCCCCC"><strong>Nombre Categoria</strong></td>
  </tr>
<?php
$mySql = "SELECT * FROM kategori ORDER BY kd_kategori ASC";
$myQry = mysqli_query($koneksidb, $mySql)  or die ("Query salah : ".mysqli_error());
$nomor  = 0; 
while ($myData = mysqli_fetch_array($myQry)) {
	$nomor++;
?>
  <tr>
    <td align="center"><?php echo $nomor; ?></td>
    <td><?php echo $myData['kd_kategori']; ?></td>
    <td><?php echo $myData['nm_kategori']; ?></td>
  </tr>
  <?php } ?>
</table>
