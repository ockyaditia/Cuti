<?php
include('config.php');
session_start();

//tangkap data dari form login
$username = $_POST['username'];
$password = $_POST['password'];
 
//untuk mencegah sql injection
//kita gunakan mysql_real_escape_string
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);
 
//cek data yang dikirim, apakah kosong atau tidak
$q = mysql_query("select * from admin_tatausaha where username='$username' and password='$password'");
$q2 = mysql_query("select * from dekanat where username='$username' and password='$password'");
$q3 = mysql_query("select * from dosen_pegawai where username='$username' and password='$password'");
 
if (mysql_num_rows($q) == 1) {
    //kalau username dan password sudah terdaftar di database
	$_SESSION['username'] = $username;
    header('location:../index.php');
}
elseif (mysql_num_rows($q2) == 1) {
    //kalau username dan password sudah terdaftar di database
	$_SESSION['username'] = $username;
    header('location:../index.php');
}
elseif (mysql_num_rows($q3) == 1) {
    //kalau username dan password sudah terdaftar di database
	$_SESSION['username'] = $username;
    header('location:../index.php');
}else {
    //kalau username ataupun password tidak terdaftar di database
    header('location:../index.php?error=1');
}
?>