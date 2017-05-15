<?php
	/*
//host yang digunakan
//99,9% tidak perlu dirubah
$host = 'mysql.idhostinger.com';
//username untuk login ke host
//biasanya didapatkan pada email konfirmasi order hosting
$user = 'u494124434_kst';
//jika menggunakan PC sendiri sebagai host,
//secara default password dikosongkan
$pass = 'kedirismarttraveller';
//isikan nama database sesuai database
//yang dibuat pada langkah-1
$dbname = 'u494124434_kst';
//mengubung ke host

$connect = mysql_connect($host, $user, $pass) or die(mysql_error());
//memilih database yang akan digunakan

$dbselect = mysql_select_db($dbname);*/
	
	//host yang digunakan
//99,9% tidak perlu dirubah
$host = 'localhost';
//username untuk login ke host
//biasanya didapatkan pada email konfirmasi order hosting
$user = 'root';
//jika menggunakan PC sendiri sebagai host,
//secara default password dikosongkan
$pass = '';
//isikan nama database sesuai database
//yang dibuat pada langkah-1
$dbname = 'cuti';
//mengubung ke host

$connect = mysql_connect($host, $user, $pass);
//memilih database yang akan digunakan

$dbselect = mysql_select_db($dbname);
?>