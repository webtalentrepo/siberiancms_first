<?php
# Previewer un-installer
$name = "Previewer";

$previewer_path = Core_Model_Directory::getBasePathTo("/var/apps/ionic/previewer");
if($previewer_path != "/") {
    exec("rm -rf {$previewer_path}");
}

# Clean-up DB be really carefull with this.
$tables = array(
    "previewer_config",
    "previewer_config_language",
);
Siberian_Feature::dropTables($tables);

# Clean-up module
Siberian_Feature::uninstallModule($name);
