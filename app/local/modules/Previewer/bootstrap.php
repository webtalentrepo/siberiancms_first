<?php

class Previewer_Bootstrap {

    public static function init($bootstrap) {
        # Register platforms
        Siberian_Assets::addPlatform("ios", "/var/apps/ionic/previewer/ios");
        Siberian_Assets::addPlatform("android", "/var/apps/ionic/previewer/android");

        # Copy assets
        $previewer_varpath = Core_Model_Directory::getBasePathTo("/app/local/modules/Previewer/resources/var/apps");
        $varpath = Core_Model_Directory::getBasePathTo("/var/apps");

        if(file_exists($previewer_varpath) && !file_exists("{$varpath}/ionic/previewer")) {
            exec("cp -R {$previewer_varpath}/* {$varpath}/");
            exec("chmod -R 775 {$varpath}/");
        }
    }
}