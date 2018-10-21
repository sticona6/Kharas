<?php
include_once "library/inc.connection.php";
$propinsi = $_GET['propinsi'];
$kota = mysqli_query($koneksidb, "SELECT id_kabkot,nama_kabkot FROM kabkot WHERE id_prov='$propinsi' order by nama_kabkot");
echo "<option>-- Seleccione Ciudad/Provincia --</option>";
while($k = mysqli_fetch_array($kota)){
    echo "<option value=\"".$k['id_kabkot']."\">".$k['nama_kabkot']."</option>\n";
}
?>
