<?php

    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../classes/Product.php');
	$pro = new Product();

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$search = $_POST['search'];
		$search = $pro->searchAutoComplate($search);
	}

?>