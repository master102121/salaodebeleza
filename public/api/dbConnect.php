<?php

	//Defining Constants
	define('HOST','localhost');
	define('USER','root');
	define('PASS','herba2121');
	define('DB','reservas');

	//Connecting to Database
    $con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Reach our Servers!');
    mysqli_set_charset($con, 'utf8');
