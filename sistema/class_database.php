<?php 

class database
{
	//PROPERTI
	private $dbHost	= "127.0.0.1";
	private $dbUser = "root";
	private $dbPass = "";
	private $dbName = "radjabangunandb";

	function connectMySQL(){
		mysqli_connect($this->dbHost, $this->dbUser,$this->dbPass);
		mysqli_select_db($this->dbName) or die("Database Tidak Ada");
	}

	//method simpan data 
	function tambahPesanan($KodePemesanan, $Kode,$Harga, $Jumlah){
		$KodePemesanan   =buatKode("pemesanan","PS");
		$query = "INSERT INTO pemesanan_item(no_pemesanan, kd_barang, harga, jumlah) VALUES('$KodePemesanan','$Kode','$Harga','$Jumlah')";
	}

	function tampilPesanan(){
		$query = mysqli_query($koneksidb, "SELECT * FROM pemesanan_item WHERE kd_pelanggan");
		while ($row=mysqli_fetch_array($query))
			$data[]=$row;
			return $data;
	}

	function tampilPelanggan($txtNama){

	}

	function tampilTmpKeranjang($KodePelanggan,$Kode,$Harga,$Jumlah){
		$KodePelanggan=$_SESSION['SES_PELANGGAN'];
		 $bacaSql="SELECT *  FROM tmp_keranjang WHERE kd_pelanggan='$KodePelanggan'";
            $bacaQry =mysqli_query($koneksidb, $bacaSql)or die("Gagal Keranjang tmp".mysqli_error());
            while ($bacaData =mysqli_fetch_array($bacaQry)) {
                # SIMPAN DATA DARI KERANJANG BELANJA KE PEMESANAN ITEM
                $Kode       = $bacaData['kd_barang'];
                $Harga      = $bacaData['harga'];
                $Jumlah     = $bacaData['jumlah'];
	}
}

}
?>