<?php
if(isset($_GET['action'])=='submitfunct') {
    submitfunct();
}

function submitfunct() {
	include("Config/config.php");
	
	$id_form_cuti = $_POST['id'];
	$catatan = $_POST['catt'];
	$pengesahan = $_POST['button'];
	
	$mydate = getdate(date("U"));
	$date1 = "$mydate[mday]-$mydate[mon]-$mydate[year]";
	
	if ($pengesahan == '1') {
		$sql1 = "UPDATE form_cuti SET status_pengesahan = 'Setuju', catatan = '$catatan', tanggal_pengesahan = '$date1' WHERE id_form_cuti = '$id_form_cuti'";
		
		if (!mysql_query($sql1, $connect))
			die('Gagal insert data ke table: ' .mysql_error($connect));
		else
			echo "<script>alert('Cuti disetujui');</script>";
		
		mysql_close($connect);
		exit;
	}
	elseif ($pengesahan == '2') {
		$sql1 = "UPDATE form_cuti SET status_pengesahan = 'Tidak Setuju', catatan = '$catatan', tanggal_pengesahan = '$date1' WHERE id_form_cuti = '$id_form_cuti'";
		
		if (!mysql_query($sql1, $connect))
			die('Gagal insert data ke table: ' .mysql_error($connect));
		else {
			echo "<script>alert('Cuti tidak disetujui');</script>";
			header("Location: pengesahan.php");
		}
		
		mysql_close($connect);
		exit;
	}
}
?>