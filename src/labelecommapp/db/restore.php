<?php
include_once 'connection.php';

$scriptsDir = $currentDir . DS . 'deploy' . DS .  'scripts' . DS;
$iterator = new DirectoryIterator($scriptsDir);

$mtime = -1;
$file;
foreach ($iterator as $fileinfo) {
	if ($fileinfo->isFile() && $fileinfo->getExtension() === 'sql') {
		if ($fileinfo->getMTime() > $mtime) {
			$file = $fileinfo->getFilename();
		}
	}
}
if (!empty($file)) {
	$sql = file_get_contents($scriptsDir . $file);
	$qr = $db->exec($sql);
	if ($qr === 0) {
		echo "successfully restored using $file\n";
	} else {
		echo "NOT successfully restored using $file\n";
	}

} else {
	echo "No new scripts to migrate!\n";
}
