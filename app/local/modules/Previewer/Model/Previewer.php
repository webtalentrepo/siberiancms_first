<?php
class Previewer_Model_Previewer extends Application_Model_Application {

    protected static $_instance;

    const PATH_IMAGE = "/images/previewer";
    const PATH_ERROR = "/errors/";
    const PATH_TEMPLATES = "__unused__";

    public function __construct($params = array()) {
        parent::__construct($params);
        $this->_db_table = 'Previewer_Model_Db_Table_Config';
        return $this;
    }

    public static function getInstance($params = array()) {

        if(!self::$_instance) {
            self::$_instance = new self();

            if(empty($params["language_code"])) {
                $params["language_code"] = Core_Model_Language::getCurrentLanguage();
            }

            self::$_instance->findLast($params);
        }

        return self::$_instance;
    }

    public function isPublishable() {
        $is_publishable = ($this->getAppName()
            && $this->getBundleId()
            && count(explode(".", $this->getBundleId())) >= 2
            && $this->getBackgroundColor()
            && $this->getFontColor()
            && $this->getInfoText1());

        return $is_publishable;
    }

    /** @todo describe me */
    public function save() {
        if($this->getOrigBackgroundColor() != $this->getBackgroundColor()
            OR $this->getOrigFontColor() != $this->getFontColor()
            OR $this->getOrigQrcodeAltImage() != $this->getQrcodeAltImage()
            OR $this->getOrigQrcodeAltText() != $this->getQrcodeAltText()
            OR $this->getOrigAppleStoreUrl() != $this->getAppleStoreUrl()
            OR $this->getOrigPlayStoreUrl() != $this->getPlayStoreUrl()
        ) {
            $this->generateNoStoreErrorPage($this->getLanguageCode());
        }

        if(!$this->getLanguageCode()) {
            parent::save();
        } else {
            $save_data = $this->getData();

//            if(empty($save_data["previewer_id"])) {
                parent::save();
                $save_data["previewer_id"] = $this->getPreviewerId();
//            }

            $this->getTable()->saveLanguageData($save_data);
        }
    }

    public function getQrcodeUrl() {

        $image = null;

        if($qrcode = self::$_instance->getData("qrcode")) {

            $image = self::getBaseImagePath()."/modal_image/".$qrcode;
            if(!file_exists($image)) {
                $image = null;
            }  else {
                $image = self::getImagePath()."/modal_image/".$qrcode;
            }

        }

        return $image;
    }

    public function getModalImageUrl() {
        $image = null;
        if($this->getModalImage()) {

            $image = self::getBaseImagePath().$this->getModalImage();

            if(!file_exists($image)) {
                $image = null;
            } else {
                $image = self::getImagePath().$this->getModalImage();
            }
        }

        return $image;
    }

    /*** @describe bis */
    public function generateNoStoreErrorPage($language_code = Core_Model_Language::DEFAULT_LANGUAGE) {

        $background_color = $this->getBackgroundColor();
        $font_color = $this->getFontColor();
        $template = '
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <title>'.$this->_("No previewer found for your device").'</title>
                    <style>
                        .img{max-width:600px}
                        .max-width{max-width:600px;margin:auto}
                        .center{text-align:center}
                        .width-100{width:100%}
                        @media screen and (max-width: 768px) {
                            .img{width:100%}
                            .max-width{width:100%;}
                        }
                    </style>
                </head>
                <body style="background-color:'.$background_color.';color:'.$font_color.'">
                    <div class="max-width">
                        <div class="center">[IMAGE]</div>
                        <div class="width-100">[TEXT]</div>
                    </div>
                </body>
            </html>
        ';

        if($this->getQrcodeAltImage()) {
            $template = str_replace("[IMAGE]","<img src='".self::PATH_IMAGE.$this->getQrcodeAltImage()."' class='img'/>",$template);
        } else {
            $template = str_replace("[IMAGE]","",$template);
        }

        if($this->getQrcodeAltText()) {
            $template = str_replace("[TEXT]",$this->getQrcodeAltText(),$template);
        } else {
            $template = str_replace("[TEXT]","",$template);
        }

        $path = Core_Model_Directory::getBasePathTo(self::PATH_ERROR);
        $file = "$language_code-no-store.html";

        file_put_contents($path.$file, $template);

        return $this;
    }


}
