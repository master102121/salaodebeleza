<?php
	date_default_timezone_set("America/Sao_Paulo");
	//$txt = fopen("txt.txt", "a+");
	echo json_encode(
		["time"=>(date("H").(":").date("i").(" ").date("d").("-").date("m").("-").date("Y"))]);
?>
