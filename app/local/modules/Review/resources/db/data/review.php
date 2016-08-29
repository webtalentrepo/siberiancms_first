<?php
$name = "Review";
$category = "contact";

# Install icons
$icons = array(
	'/catalog/catalog6.png',
);

$result = Siberian_Feature::installIcons($name, $icons);

# Install the Feature
$data = array(
	'library_id'    => $result["library_id"],
	'icon_id'       => $result["icon_id"],
	'code'          => "review",
	'name'          => $name,
	'model'         => "Review_Model_Review",
	'desktop_uri'   => "review/application/",
	'mobile_uri'    => "review/mobile_view/",
	'only_once'     => 0,
	'is_ajax'       => 1,
	'position'      => 290,
	'social_sharing_is_available' => 0
);

$option = Siberian_Feature::install($category, $data, array('code'));

# Icons Flat
$icons = array(
	'/catalog/catalog1-flag.png',
);

Siberian_Feature::installIcons("{$name}-flat", $icons);