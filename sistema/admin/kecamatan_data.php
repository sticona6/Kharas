<?php
include_once "../library/inc.sesadmin.php";   // Validasi, mengakses halaman harus Login
include_once "../library/inc.connection.php"; // Membuka koneksi
include_once "../library/inc.library.php";    // Membuka librari peringah fungsi

# UNTUK PAGING (PEMBAGIAN HALAMAN)
$baris = 50;
$hal = isset($_GET['hal']) ? $_GET['hal'] : 0;
$pageSql = "SELECT id_prov, id_kabkot, id_kec, nama_kec FROM Kec";
$pageQry = mysqli_query($koneksidb, $pageSql) or die ("error paging: ".mysqli_error());
$jumlah	 = mysqli_num_rows($pageQry);
$maksData= ceil($jumlah/$baris);
?>
<table width="800" border="0" cellpadding="2" cellspacing="1" class="table-common">
  <tr>
    <td colspan="2" align="right"><h1><b>DATOS DE DISTRITO</b></h1></td>
  </tr>
  
  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td colspan="2" align="right"><a href="?open=Kecamatan-Add" target="_self"><img src="../images/btn_add_data.png" height="30" border="0" /></a></td>
  </tr>
  <tr>
    <td colspan="2">
	<table class="table-list" width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <th width="26" align="center" bgcolor="#CCCCCC"><strong>Nro</strong></th>
        <th width="88" align="center" bgcolor="#CCCCCC"><strong>ID Departamento</strong></th>
        <th width="150" bgcolor="#CCCCCC"><strong>ID Ciudad</strong></th>
        <th width="200" bgcolor="#CCCCCC"><strong> Nombre Ciudad / Provincia</strong></th>
        <td colspan="3" align="center" bgcolor="#CCCCCC"><strong>Herramientas</strong></td>
        </tr>
      <?php	
	$mySql = "SELECT id_prov,id_kabkot,id_kec,nama_kec FROM kec ORDER BY id_kec ASC LIMIT $hal, $baris";
	$myQry = mysqli_query($koneksidb, $mySql)  or die ("Query salah : ".mysqli_error());
	$nomor = $hal; 
	while ($myData = mysqli_fetch_array($myQry)) {
		$nomor++;
		$Kode = $myData['id_kec'];
	?>
      <tr>
        <td align="center"><?php echo $nomor; ?></td>
        <td><?php echo $myData['id_prov']; ?></td>
        <td><?php echo $myData['id_kabkot']; ?></td>
		<!--<td><?php //echo $myData['id_kec']; ?></td>-->
        <td><?php echo $myData['nama_kec']; ?></td>
        <td width="44" align="center"><a href="?open=kecamatan-edit&Kode=<?php echo $Kode; ?>" target="_self" alt="Edit Data">Editar</a></td>
        <td width="42" align="center"><a href="?open=kecamatan-delete&Kode=<?php echo $Kode; ?>" target="_self" alt="Delete Data" onclick="return confirm('Seguro que va a ELIMNAR ESTE DISTRITO  ... ?')">Eliminar</a></td>
      </tr>
      <?php } ?>
    </table></td>
  </tr>
  <tr class="selKecil">
    <td width="407"><b>Numero de datos :</b> <?php echo $jumlah; ?> </td>
    <td width="384" align="right"><b>Pagina de :</b>
      <?php
	for ($h = 1; $h <= $maksData; $h++) {
		$list[$h] = $baris * $h - $baris;
		echo " <a href='?open=Kota-Data&hal=$list[$h]'>$h</a> ";
	}
	?></td>
  </tr>
</table>
