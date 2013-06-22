<?php
include_once 'connection.php';

$sql = "SELECT DATABASE()";
$sth = $db->prepare($sql);
$qr = $sth->execute();

if ($qr === true) {
	$result = $sth->fetchAll();

	if ($result[0]["DATABASE()"] === $database) {
		echo "database $database is there!\n";
	} else {
		echo "database $database cannot be connected!\n";
	}
} else {
	echo "Something went wrong!!\n";
}


