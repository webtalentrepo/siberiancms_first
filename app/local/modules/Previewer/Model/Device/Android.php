<?php

class Previewer_Model_Device_Android extends Application_Model_Device_Ionic_Android_Abstract {

    const VAR_FOLDER    = "/var";
    const SOURCE_FOLDER = "/var/apps/ionic/previewer/android";
    const DEST_FOLDER   = "/var/tmp/applications/ionic/previewer/android";
    const IMAGE_PATH = "/images/previewer";
    const ERROR_PATH = "/errors/";

    public $_zipname = "previewer-android";

    protected $_current_version = '1.0';
    protected $_folder_name = '';
    protected $_formatted_bundle_name = '';
    protected $_previewer;
    protected $_package_name;
    protected $_package_path;
    protected $_logo_max_width = 500;
    protected $_logo_max_height = 115;
    protected $_orig_source;
    protected $_orig_source_src;
    protected $_orig_source_res;
    protected $_dest_source;
    protected $_dest_source_src;
    protected $_dest_source_res;

    public function __construct($datas = array()) {
        parent::__construct($datas);

        $this->_os_name = "android";

        return $this;
    }

    public function setPreviewer($previewer) {
        $this->_previewer = $previewer;
        foreach($previewer->getData() as $key => $value) {
            if(!is_numeric($key)) {
                $this->setData($key, $value);
            }
        }
    }

    public function getCurrentVersion() {
        return $this->_current_version;
    }

    public function prepareResources() {

        $this->_application = $this->_previewer; /** The previewer IS the Application */

        $this->_preparePathsVars();
        $this->_cpFolder();
        $this->_prepareUrl();
        $this->ionicResources($this->_application);
        $this->androidManifest();
        $this->renameMainPackage();
        $this->gradleConfig();
        $this->colors();

        $attributes = array(
            "#<string name=\"url\">(.*)</string>#mi" => "<string name=\"url\">{$this->getUrl()}</string>",
            "#<string name=\"info_paragraph_1\">(.*)</string>#mi" => "<string name=\"info_paragraph_1\"><![CDATA[{$this->getInfoText1()}]]></string>",
            "#<string name=\"info_paragraph_2\">(.*)</string>#mi" => "<string name=\"info_paragraph_2\"><![CDATA[{$this->getInfoText2()}]]></string>",
        );
        $this->setStrings($attributes);


        $zip = $this->zipFolder();
        return $zip;
    }

    protected function _preparePathsVars() {
        $this->_orig_source     = Core_Model_Directory::getBasePathTo(self::SOURCE_FOLDER);
        $this->_dest_source     = Core_Model_Directory::getBasePathTo(self::DEST_FOLDER);
        $this->_dest_source_res = "{$this->_dest_source}/res";
        $this->_dest_source_src = "{$this->_dest_source}/src";
        $this->_package_name    = $this->getData("bundle_id");
        $this->_package_path    = str_replace(".", "/", $this->_package_name);
        $this->_application_id   = $this->_package_name;
        $this->_application_name = $this->getData("app_name");
    }

    protected function _cpFolder() {
        // Cleaning the old directory
        if(is_dir($this->_dest_source)) {
            exec("rm -Rf \"$this->_dest_source\"");
        }
        @mkdir($this->_dest_source, 0777, true);

        // Checking the rights
        if(!is_dir($this->_dest_source) OR !is_writable($this->_dest_source)) {
            throw new Exception("Previewer folder is not writable. Can't generate.");
        }


        Core_Model_Directory::duplicate($this->_orig_source, $this->_dest_source);
        Core_Model_Directory::move("{$this->_dest_source_src}/{$this->_default_bundle_path}", "{$this->_dest_source_src}/{$this->_package_path}");
    }

    protected function _prepareUrl() {
        $url_js_content = "
var IS_PREVIEWER = true;";

        file_put_contents($this->_dest_source."/assets/www/js/utils/url.js", $url_js_content, FILE_APPEND);
    }

    /*
     * The previewer has a custom logo, preparing this specific resource here.
     */
    protected function ionicResources($application) {
        /** Preparing generic resources */
        parent::ionicResources($application);

        $logo_path = Core_Model_Directory::getBasePathTo(static::IMAGE_PATH).$this->getLogo();
        $logos = array(
            "1"     => $this->_dest_source_res.'/drawable-ldpi/logo.png',
            "1"     => $this->_dest_source_res.'/drawable-mdpi/logo.png',
            "1.5"   => $this->_dest_source_res.'/drawable-hdpi/logo.png',
            "2"     => $this->_dest_source_res.'/drawable-xhdpi/logo.png',
            "3"     => $this->_dest_source_res.'/drawable-xxhdpi/logo.png',
            "3"     => $this->_dest_source_res.'/drawable-xxxhdpi/logo.png',
        );

        // Logo
        foreach($logos as $size_ratio => $logo) {
            list($width, $height) = getimagesize($logo_path);

            $img = imagecreatefromstring(file_get_contents($logo_path));

            if ($this->_logo_max_width / $width < $this->_logo_max_height / $height) {
                $newHeight  = $this->_logo_max_height;
                $newWidth   = $this->_logo_max_height / $height * $width;
            } else {
                $newWidth   = $this->_logo_max_width;
                $newHeight  = $this->_logo_max_width / $width * $height;
            }

            $newWidth   *= (float)$size_ratio;
            $newHeight  *= (float)$size_ratio;

            $newIcon = imagecreatetruecolor($newWidth, $newHeight);
            imagealphablending($newIcon, false);
            imagecopyresampled($newIcon, $img, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
            imagesavealpha($newIcon, true);
            imagepng($newIcon, $logo);
        }
    }

    /*
     * Custom previewer colors
     */
    private function colors() {
        $replacements = array(
            "#<color name=\"background_color\">(.*)</color>#mi" => "<color name=\"background_color\">{$this->_previewer->getBackgroundColor()}</color>",
            "#<color name=\"text_color\">(.*)</color>#mi"       => "<color name=\"text_color\">{$this->_previewer->getFontColor()}</color>",
            "#<color name=\"divider_color\">(.*)</color>#mi"    => "<color name=\"divider_color\">{$this->_previewer->getFontColor()}</color>",
        );

        $this->__replace($replacements, "{$this->_dest_source_res}/values/colors.xml", true);
    }
}