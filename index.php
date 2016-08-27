<?php

ini_set("display_errors", 1);
error_reporting(E_ALL);

set_time_limit(300);
ini_set('max_execution_time', 300);

defined('BASE_PATH') || define('BASE_PATH', realpath(dirname(__FILE__)));

defined('DS') || define('DS', DIRECTORY_SEPARATOR);

$base_url = "http://{$_SERVER["HTTP_HOST"]}";
$hash = "135103oIx1ABNvDHddnoiSbtwbmEuXCh";
$url = "http://updates.siberiancms.com".DS."installs".DS."get.php?hash=$hash";
$md5 = null;

$archive_base_path = BASE_PATH.DS."siberiancms.source.tgz";

try {

    if(!fileIsValid()) {
        downloadFile();
    }

    if(fileIsValid()) {

        extractFile();

        if(!checkContents()) {
            die("Unable to unzip the package. Please, check the exec function is not disabled and your SiberianCMS installation folder permissions.");
        }

        setPermissions();

        @unlink($archive_base_path);

        header("Location: {$base_url}");
        die;

    } else {
        die("The content of the package seems to be corrupted. Please, try again.");
    }

} catch(Exception $e) {
    echo $e->getMessage(); die;
}


function checkPermissions() {
    return is_writable(BASE_PATH);
}

function checkFunctions() {
    return function_exists("exec");
}

function fileIsValid($md5 = null) {
    global $archive_base_path;
    return is_file($archive_base_path) AND @md5_file($archive_base_path) == _getMd5();
}

function downloadFile() {
    global $archive_base_path;
    if(is_file($archive_base_path)) @unlink($archive_base_path);
    file_put_contents($archive_base_path, fopen(_getFileUrl(), "r"));
}

function extractFile() {
    global $archive_base_path;
    exec('tar -xzf "'.$archive_base_path.'"');
}

function checkContents() {
    $base_file_path = BASE_PATH.DS."check_connection.php";
    return is_file($base_file_path) AND file_get_contents($base_file_path) == "1";
}

function setPermissions() {

    $collection = new RecursiveIteratorIterator(new RecursiveDirectoryIterator(BASE_PATH));
    $full_permissions_directories = array("images", "languages", "var");
    foreach($collection as $item) {

        if(in_array($item->getFilename(), array(".", "..", ".DS_Store", ".htaccess"))) continue;

        $path = str_replace(BASE_PATH, "", $item->getRealPath());
        if(substr($path, 0, 1) == DS) $path = substr($path, 1, strlen($path) -1);
        if(empty($path)) continue;

        $part = current(explode("/", $path));

        if(empty($part)) continue;

        if($item->isDir() AND in_array($part, $full_permissions_directories)) @chmod($item->getRealPath(), 0777);
        else if($item->isDir()) @chmod($item->getRealPath(), 0775);
        else if($item->isFile() AND in_array($part, $full_permissions_directories)) @chmod($item->getRealPath(), 0666);
        else if($item->isFile() AND $item->getRealpath() == BASE_PATH.DS."index.php") @chmod($item->getRealPath(), 0644);
        else if($item->isFile()) @chmod($item->getRealPath(), 0664);

    }
}

function _getMd5() {
    global $md5;
    if(!$md5) _fetchData();
    return $md5;
}

function _getFileUrl() {
    global $file_url;
    if(!$file_url) _fetchData();
    return $file_url;
}

function _fetchData() {

    global $url, $md5, $file_url;

    $data = file_get_contents($url);

    $data = @json_decode($data);

    if(empty($data) OR empty($data->url) OR empty($data->md5)) {
        throw new Exception("Unable to communicate with SiberianCMS server.");
    }

    $file_url = $data->url;
    $md5 = $data->md5;

}
