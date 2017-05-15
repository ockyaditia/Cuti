<?php

if(isset($_GET['action'])=='submitfunct') {
    submitfunct();
}

function submitfunct() {
	include("Config/config.php");
	
	$id_dosen_pegawai = $_POST['id'];
	$sisa_cuti = (int)$_POST['sisa_cuti'];
	$tanggal = $_POST['tanggal'];
	$mengajukan = $_POST['mengajukan'];
	$alasan_khusus_text = $_POST['alasan_khusus_text'];
	$alasan_lain_text = $_POST['alasan_lain_text'];
	$alasan_penting_text = $_POST['alasan_penting_text'];
	$luar_tanggungan_text = $_POST['luar_tanggungan_text'];
	$jumlah_hari = (int)$_POST['jumlah_hari'];
	
	$tanggal_awal = $_POST['tanggal_awal'];
	$date1 = date('Y-m-d', strtotime($tanggal_awal));
	
	$tanggal_berakhir = $_POST['tanggal_berakhir'];
	$date2 = date('Y-m-d', strtotime($tanggal_berakhir));
	
	$date1_c_1 = date_create($date1);
	$date2_c_1 = date_create($date2);
	$diff = date_diff($date1_c_1,$date2_c_1);
	
	$keterangan = $_POST['keterangan'];
	$status_pengesahan = "Belum";
	
	if ($keterangan == "Surat tugas")
		$laporan = $_POST['laporan'];
	else	
		$laporan = "";
	
	if ($mengajukan == "Cuti") {
		$mengajukan_insert = $_POST['jenis_cuti'];
	}
	else if ($mengajukan == "Ijin") {
		$mengajukan_insert = $_POST['tidak_masuk_kerja'];
	}
	
	if ($mengajukan == "Cuti") {
		if ($sisa_cuti < $jumlah_hari) {
			echo "<script>alert('Anda tidak bisa mengambil cuti. Cek sisa cuti');</script>";
		}
		else if ($diff->format("%a") != $jumlah_hari-1) {
			echo "<script>alert('Tanggal tidak sesuai dengan jumlah hari');</script>";
		}
		else {
			mysql_query("UPDATE dosen_pegawai SET waktu_cuti = waktu_cuti-$jumlah_hari WHERE id_dosen_pegawai = '$id_dosen_pegawai'");
			
			$sql1 = "INSERT INTO form_cuti (tanggal, id_dosen_pegawai, mengajukan, alasan_khusus_text, alasan_lain_text, alasan_penting_text, luar_tanggungan_text, jumlah_hari, tanggal_awal, tanggal_berakhir, keterangan, status_pengesahan, laporan)
					VALUES ('$tanggal', '$id_dosen_pegawai', '$mengajukan_insert', '$alasan_khusus_text', '$alasan_lain_text', '$alasan_penting_text', '$luar_tanggungan_text',' $jumlah_hari', '$tanggal_awal', '$tanggal_berakhir', '$keterangan', '$status_pengesahan', '$laporan')";
		
			if (!mysql_query($sql1, $connect))
				die('Gagal insert data ke table: ' .mysql_error($connect));
			else {
				echo "<script> location.replace('cetak.php'); </script>";
			}
			
			mysql_close($connect);
			exit;
		}
	}
	else if ($diff->format("%a") != $jumlah_hari-1) {
		echo "<script>alert('Tanggal tidak sesuai dengan jumlah hari');</script>";
	}
	else {
		$sql1 = "INSERT INTO form_cuti (tanggal, id_dosen_pegawai, mengajukan, alasan_khusus_text, alasan_lain_text, alasan_penting_text, luar_tanggungan_text, jumlah_hari, tanggal_awal, tanggal_berakhir, keterangan, status_pengesahan, laporan)
					VALUES ('$tanggal', '$id_dosen_pegawai', '$mengajukan_insert', '$alasan_khusus_text', '$alasan_lain_text', '$alasan_penting_text', '$luar_tanggungan_text',' $jumlah_hari', '$tanggal_awal', '$tanggal_berakhir', '$keterangan', '$status_pengesahan', '$laporan')";
		
		if (!mysql_query($sql1, $connect))
			die('Gagal insert data ke table: ' .mysql_error($connect));
		else {
			echo "<script> location.replace('cetak.php'); </script>";
		}
		
		mysql_close($connect);
		exit;
	}
}
?>