<?php
define("DS", DIRECTORY_SEPARATOR);
$currentDir = dirname(__FILE__);
$cakeAppDir = dirname($currentDir);
$cakeConfigDir = $cakeAppDir . DS . 'Config' . DS;
include_once $cakeConfigDir . 'database.php';

$dbConfig = new DATABASE_CONFIG();

$dbSettings = $dbConfig->default;
$host = $dbSettings['host'];
$database = $dbSettings['database'];
$dsn = "mysql: host = $host; dbname=$database";

$db = new PDO($dsn, $dbSettings['login'], $dbSettings['password']);