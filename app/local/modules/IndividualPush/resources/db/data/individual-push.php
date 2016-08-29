<?php

$this->query("
    UPDATE `push_delivered_message` SET is_displayed = 1 WHERE is_read = 1 and is_displayed = 0;
");

/** Check if a local Push is installed */
$basepath = Core_Model_Directory::getBasePathTo("/app/local/modules/Push");
$tmppath = Core_Model_Directory::getBasePathTo("/var/tmp/old-push");
if(file_exists($basepath) && is_dir($basepath)) {
    exec("mv '{$basepath}' '{$tmppath}'");
}