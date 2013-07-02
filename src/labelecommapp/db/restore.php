<?php
include_once 'connection.php';

$scriptsDir = $currentDir . DS . 'deploy' . DS .  'scripts' . DS;
$iterator = new DirectoryIterator($scriptsDir);

$mtime = -1;
$file;
$files = array();
// this iterates the $scriptsDir folder and then check if the entry is a sql file
foreach ($iterator as $fileinfo) {
	if ($fileinfo->isFile() && $fileinfo->getExtension() === 'sql') {
		// if the file is indeed sql we will keep the file inside $files array
		if ($fileinfo->getMTime() > $mtime) {
			$file = $fileinfo->getFilename();
			$files[] = $file;
		}
	}
}

if (!empty($files)) {
	// we will iterate the $files array and then one by one run the restore operation
	foreach($files as $file) {
		$sql = file_get_contents($scriptsDir . $file);
		$qr = $db->exec($sql);
		if ($qr === 0) {
			echo "successfully restored using $file\n";
		} else {
			echo "NOT successfully restored using $file\n";
		}
	}
} else {
	echo "No new scripts to migrate!\n";
}
