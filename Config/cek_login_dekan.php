
<?php

	session_start();

	//jika session username belum dibuat, atau session username kosong
	if (!isset($_SESSION['username']) || empty($_SESSION['username'])) {
			//redirect ke halaman index 
			header('location:index.php');
	}
	else {
		$username = $_SESSION['username'];
					
		include("Config/config.php");
		$result = mysql_query("SELECT `nama`, `status` FROM `dekanat` WHERE `username` = '$username'");
		$result2 = mysql_query("SELECT `nama`, `status` FROM `dosen_pegawai` WHERE `username` = '$username'");
		$result3 = mysql_query("SELECT `nama`, `status` FROM `admin_tatausaha` WHERE `username` = '$username'");
		$row = mysql_fetch_array($result);
		$row2 = mysql_fetch_array($result2);
		$row3 = mysql_fetch_array($result3);
		
		if ($row["status"] != "dekan") {
			header('location:index.php');
		}
	}

?>