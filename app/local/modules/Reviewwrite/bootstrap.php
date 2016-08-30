<?php

class Reviewwrite_Bootstrap
{
	
	public static function init($bootstrap)
	{
		# Copy assets
		$previewer_varpath = Core_Model_Directory::getBasePathTo("/app/local/modules/Reviewwrite/resources/var/apps");
		$varpath = Core_Model_Directory::getBasePathTo("/var/apps/browser");
		
		if (file_exists($previewer_varpath) && !file_exists("{$varpath}/js/controllers/reviewwrite.js")) {
			exec("cp -R {$previewer_varpath}/* {$varpath}/");
			exec("chmod -R 777 {$varpath}/");
		}
		
		$indexHtml = Core_Model_Directory::getBasePathTo("/var/apps/browser/index.html");
		$str = file_get_contents($indexHtml);
		if (strpos($str, "reviewwrite") !== false) {
		} else {
			$oldStr = "<script src=\"js/controllers/radio.js\"></script>";
			$oldStr1 = "<script src=\"js/factory/radio.js\"></script>";
			$replaceStr = "<script src=\"js/controllers/radio.js\"></script>\n <script src=\"js/controllers/reviewwrite.js\"></script>";
			$replaceStr1 = "<script src=\"js/factory/radio.js\"></script>\n <script src=\"js/factory/reviewwrite.js\"></script>";
			$str = str_replace($oldStr, $replaceStr, $str);
			$str = str_replace($oldStr1, $replaceStr1, $str);
			file_put_contents($indexHtml, $str);
		}
	}
}