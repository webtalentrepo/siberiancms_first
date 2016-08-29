<?php

class Previewer_Model_Device_Ios extends Application_Model_Device_Ionic_Ios_Abstract {

    const VAR_FOLDER    = "/var";
    const SOURCE_FOLDER = "/var/apps/ionic/previewer/ios";
    const DEST_FOLDER   = "/var/tmp/applications/ionic/previewer/ios";
    const IMAGE_PATH = "/images/previewer";
    const ERROR_PATH = "/errors/";

    public $_zipname = "previewer-ios";

    protected $_current_version = '1.0';
    protected $_folder_name = '';
    protected $_formatted_bundle_name = '';
    protected $_previewer;
    protected $_package_name;
    protected $_logo_max_width = 500;
    protected $_logo_max_height = 115;
    protected $_orig_source;
    protected $_orig_source_amc;
    protected $_orig_source_res;
    protected $_dest_source;
    protected $_dest_source_amc;
    protected $_dest_source_res;

    public function __construct($datas = array()) {
        parent::__construct($datas);

        $this->_os_name = "ios";

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

    public function prepareResources() {

        $this->_application = $this->_previewer; /** The previewer IS the Application */

        /** Prepping paths */
        $this->_preparePathsVars();
        $this->_prepareRequest();
        $this->_cpFolder();
        $this->_prepareUrl();

        /** Shared method */
        $this->setString();
        $this->buildPList();
        $this->ionicResources($this->_previewer);

        $zip = $this->zipFolder();

        return $zip;
    }

    protected function _preparePathsVars() {
        $this->_orig_source         = Core_Model_Directory::getBasePathTo(self::SOURCE_FOLDER);
        $this->_orig_source_amc     = "{$this->_orig_source}/AppsMobileCompany";
        $this->_orig_source_res     = "{$this->_orig_source_amc}/Resources";
        $this->_dest_source         = Core_Model_Directory::getBasePathTo(self::DEST_FOLDER);
        $this->_dest_source_amc     = "{$this->_dest_source}/AppsMobileCompany";
        $this->_dest_source_res     = "{$this->_dest_source_amc}/Resources";
        $this->_package_name        = $this->getData("bundle_id");
        $this->_application_id      = $this->_package_name;
        $this->_application_name    = $this->getData("app_name");
    }

    protected function _prepareUrl() {
        $url_js_content = "
var IS_PREVIEWER = true;";

        file_put_contents($this->_dest_source."/www/js/utils/url.js", $url_js_content, FILE_APPEND);
    }

    public function setString() {
        /** App name */
        $this->__replace(array(
            "PRODUCT_NAME = \"AppsMobileCompany\";" => "PRODUCT_NAME = \"{$this->_application_name}\";",
        ), "{$this->_dest_source}/AppsMobileCompany.xcodeproj/project.pbxproj");

        /** Bundle name */
        $this->__replace(array(
            $this->_default_bundle_name => $this->_package_name,
        ), "{$this->_dest_source_amc}/AppsMobileCompany-Info.plist");

        /** Dict url */
        $search_dict = "#<key>Previewer(.*)</dict>#mi";
        $replace_dict = "<key>Previewer</key><dict><key>Url</key><dict><key>url_key</key><string/><key>url_domain</key><string>{$this->getUrl()}</string><key>url_path</key><string/><key>url_scheme</key><string>http</string></dict>";
        $this->__replace(array(
            $search_dict => $replace_dict,
        ), "{$this->_dest_source_amc}/AppsMobileCompany-Info.plist");


        /** Info text */
        $replacements = array(
            "{#--SB-INFO-TEXT-1--#}" => $this->getInfoText1(),
            "{#--SB-INFO-TEXT-2--#}" => $this->getInfoText2(),
        );
        $this->__replace($replacements, "{$this->_dest_source_res}/Previewer.storyboard");


        /** Colors */
        $searchBackground = "colorWithRed:1 green:1 blue:1";
        $replaceBackground = $this->_getIOSColor($this->getBackgroundColor());
        $searchFont = "colorWithRed:0.07 green:0.66 blue:1";
        $replaceFont = $this->_getIOSColor($this->getFontColor());

        $replacements = array(
            $searchBackground => $replaceBackground,
            $searchFont => $replaceFont,
        );

        $this->__replace($replacements, "{$this->_dest_source_amc}/Plugins/siberian-plugin-previewer/Previewer/CDVCommon.m");

    }

    /*
     * The previewer has a custom logo, preparing this specific resource here.
     */
    protected function ionicResources($application) {
        /** Preparing generic resources */
        parent::ionicResources($application);

        $path_to_logo = Core_Model_Directory::getBasePathTo(static::IMAGE_PATH).$this->getLogo();
        list($width, $height) = getimagesize($path_to_logo);
        $img = imagecreatefromstring(file_get_contents($path_to_logo));

        if ($this->_logo_max_width / $width < $this->_logo_max_height / $height) {
            $newHeight = $this->_logo_max_height;
            $newWidth = round($this->_logo_max_height / $height * $width);
        } else {
            $newWidth = $this->_logo_max_width;
            $newHeight = round($this->_logo_max_width / $width * $height);
        }
        $newIcon = imagecreatetruecolor($newWidth, $newHeight);
        imagealphablending($newIcon, false);
        imagecopyresampled($newIcon, $img, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
        imagesavealpha($newIcon, true);
        imagepng($newIcon, "{$this->_dest_source_res}/previewer_logo.png");
    }


    private function _getIOSColor($color) {
        $color = $this->_toRgb($color);

        return "colorWithRed:{$color["r"]} green:{$color["g"]} blue:{$color["b"]}";
    }

    private function _toRgb($hexStr) {

        $hexStr = preg_replace("/[^0-9A-Fa-f]/", '', $hexStr);
        $rgbArray = array();

        if (strlen($hexStr) == 6) {
            $colorVal = hexdec($hexStr);
            $rgbArray['r'] = round((0xFF & ($colorVal >> 0x10)) / 255, 3);
            $rgbArray['g'] = round((0xFF & ($colorVal >> 0x8)) / 255, 3);
            $rgbArray['b'] = round((0xFF & $colorVal) / 255, 3);
        }

        return $rgbArray;
    }
}