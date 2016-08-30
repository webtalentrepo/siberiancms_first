<?php
$name = "Reviewwrite";
$category = "contact";

# Install icons
$icons = array(
	'/app/local/modules/Reviewwrite/resources/media/library/reviewwrite1.png',
	'/app/local/modules/Reviewwrite/resources/media/library/reviewwrite2.png',
);

$result = Siberian_Feature::installIcons($name, $icons);

# Install the Feature
$data = array(
	'library_id' => $result["library_id"],
	'icon_id' => $result["icon_id"],
	'code' => "reviewwrite",
	'name' => $name,
	'model' => "Reviewwrite_Model_Reviewwrite",
	'desktop_uri' => "reviewwrite/application/",
	'mobile_uri' => "reviewwrite/mobile_view/",
	'mobile_uri_parameter' => "customer_id",
	'only_once' => 0,
	'is_ajax' => 1,
	'position' => 190,
	'social_sharing_is_available' => 0
);

$option = Siberian_Feature::install($category, $data, array('code'));

$layout_data = array(1);
$slug = "reviewwrite";

Siberian_Feature::installLayouts($option->getId(), $slug, $layout_data);

# Icons Flat
$icons = array(
	'/app/local/modules/Reviewwrite/resources/media/library/reviewwrite1-flat.png',
	'/app/local/modules/Reviewwrite/resources/media/library/reviewwrite2-flat.png',
);

Siberian_Feature::installIcons("{$name}-flat", $icons);

# Copy assets
$previewer_varpath = Core_Model_Directory::getBasePathTo("/app/local/modules/Reviewwrite/resources/var/apps");
$varpath = Core_Model_Directory::getBasePathTo("/var/apps/browser");

if (file_exists($previewer_varpath) && file_exists($varpath)) {
	exec("cp -R {$previewer_varpath}/* {$varpath}/");
	exec("chmod -R 777 {$varpath}/");
}