<?php
$name = "Review";
$category = "contact";

# Install icons
$icons = array(
	'/app/local/modules/Review/resources/media/library/review1.png',
	'/app/local/modules/Review/resources/media/library/review2.png',
);

$result = Siberian_Feature::installIcons($name, $icons);

# Install the Feature
$data = array(
	'library_id' => $result["library_id"],
	'icon_id' => $result["icon_id"],
	'code' => "review",
	'name' => $name,
	'model' => "Review_Model_Review",
	'desktop_uri' => "review/application/",
	'mobile_uri' => "review/mobile_view/",
	'mobile_uri_parameter' => "customer_id",
	'only_once' => 0,
	'is_ajax' => 1,
	'position' => 1000,
	'social_sharing_is_available' => 0
);

$option = Siberian_Feature::install($category, $data, array('code'));

$layout_data = array(1);
$slug = "review";

Siberian_Feature::installLayouts($option->getId(), $slug, $layout_data);

# Icons Flat
$icons = array(
	'/app/local/modules/Review/resources/media/library/review1.png',
	'/app/local/modules/Review/resources/media/library/review2.png',
);

Siberian_Feature::installIcons("{$name}-flat", $icons);