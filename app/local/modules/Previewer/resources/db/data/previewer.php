<?php

$data = array(
    "code"  => "previewer",
    "label" => "Previewer",
    "url"   =>  "application/previewer/*",
);

$acl_resource = new Acl_Model_Resource();
$acl_resource
    ->setData($data)
    ->insertOnce(array("code"));

# Copy assets once at install time updating files !!!
$previewer_varpath = Core_Model_Directory::getBasePathTo("/app/local/modules/Previewer/resources/var/apps");
$varpath = Core_Model_Directory::getBasePathTo("/var/apps");

exec("cp -R {$previewer_varpath}/* {$varpath}/");
exec("chmod -R 775 {$varpath}/");
