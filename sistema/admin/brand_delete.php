<?php
include_once "../library/inc.sesadmin.php";

// Periksa data Kode pada URL
if(empty($_GET['Kode'])){
    echo "<b>Data yang dihapus tidak ada</b>";
}
else {
    // Hapus data sesuai Kode yang dikirim di URL
    $Kode   = $_GET['Kode'];
    $mySql  = "DELETE FROM brand WHERE kd_brand='$Kode'";
    $myQry  = mysqli_query($koneksidb, $mySql) or die ("Eror hapus data".mysqli_error());
    if($myQry){
        echo "<meta http-equiv='refresh' content='0; url=?open=Brand-Data'>";
    }
}
?>