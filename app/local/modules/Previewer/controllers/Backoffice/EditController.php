<?php

class Previewer_Backoffice_EditController extends Backoffice_Controller_Default
{

    public function loadAction() {
        $html = array(
            "title" => $this->_("Previewer"),
            "icon" => "fa-picture-o",
        );

        $this->_sendHtml($html);
    }

    public function findAction() {
        $params = array();

        $params["language_code"] = Core_Model_Language::DEFAULT_LANGUAGE;
        if($this->getRequest()->getParam("language_code")) {
            $params["language_code"] = $this->getRequest()->getParam("language_code");
            $previewer = Previewer_Model_Previewer::getInstance($params);
        } else {
            $previewer = new Previewer_Model_Previewer();
            $previewer = $previewer->findLast();
        }

        $previewer_data = $previewer->getData();

        $previewer_data_array = array();
        foreach($previewer_data as $key => $value) {
            $previewer_data_array[$key] = $value;
        }
        $preview_data["previewer"] = $previewer->getData() ? $previewer->getData() : null;

        $preview_data["show_modal_button"] = $previewer_data["show_modal_button"] == 1;

        $languages = array();
        foreach(Core_Model_Language::getLanguages() as $language) {
            $languages[$language->getCode()] = $language->getName();
        }

        $preview_data["languages"] = $languages;
        $preview_data["current_language"] = $params["language_code"];

        $this->_sendHtml($preview_data);
    }

    public function saveAction() {

        if($values = Zend_Json::decode($this->getRequest()->getRawBody())) {

            try {

                if(count(explode(".", $values["bundle_id"])) < 2) {
                    throw new Exception($this->_("The entered bundle id is incorrect, it should be like: com.mycompany.previewer"));
                }

                $previewer = new Previewer_Model_Previewer();
                $previewer = $previewer->findLast();

                $previewer->setAppName($values["app_name"])
                    ->setBundleId($values["bundle_id"])
                    ->setBackgroundColor($values["background_color"])
                    ->setFontColor($values["font_color"])
                    ->setInfoText1(htmlspecialchars($values["info_text_1"]))
                    ->setInfoText2(htmlspecialchars($values["info_text_2"]))
                    ->save()
                ;

                $data = array(
                    "success" => 1,
                    "message" => $this->_("Data saved successfully.")
                );
                
                $this->_sendHtml($data);

            } catch(Exception $e) {

                $data = array(
                    "error" => 1,
                    "message" => $e->getMessage()
                );
                $this->_sendHtml($data);
            }
        } else {

            $data = array(
                "error" => 1,
                "message" => $this->_("An error occurred during the process. Please try again later.")
            );

            $this->_sendHtml($data);

        }
    }

    public function uploadAction() {

        if($code = $this->getRequest()->getPost("type_upload")) {

            try {

                if(empty($_FILES) || empty($_FILES['file']['name'])) {
                    throw new Exception("No file has been sent");
                }

                $base_path = Previewer_Model_Previewer::getBaseImagePath();
                $path = $base_path."/".$code;

                $params = array(
                    "validators" => array(
                        "Size" => array(
                            "min" => 100,
                            "max" => 8000000
                        )
                    ),
                    "destination_folder" => $path,
                    "uniq" => 1,
                    "uniq_prefix" => "previewer_",
                );

                $sizes = array("minwidth", "minheight", "maxwidth", "maxheight");
                foreach($sizes as $key) {
                    if($size = $this->getRequest()->getPost($key)) {
                        $params["validators"]["ImageSize"][$key] = $size;
                    }
                }

                $uploader = new Core_Model_Lib_Uploader();
                $file = $uploader->upload($params);

                if($file) {

                    //We save the image url in database to use it later
                    $previewer = new Previewer_Model_Previewer();
                    $previewer = $previewer->findLast();

                    $new_path = "/".$code."/".$file;
                    $previewer->setData($code, $new_path)->save();

                    $data = array(
                        "success" => 1,
                        "message" => $this->_("Your %s image has been successfully saved.", $code)
                    );

                } else {
                    $message = $this->_("An error occurred during the process. Please try again later.");
                    throw new Exception($message);
                }
            } catch(Exception $e) {
                $data = array(
                    "error" => 1,
                    "message" => $e->getMessage()
                );
            }

            $this->_sendHtml($data);

        }

    }

    public function downloadsourceAction()
    {
        try {
            // Get the previewer config
            $previewer = new Previewer_Model_Previewer();
            $previewer = $previewer->findLast();

            if (!$previewer->getId()) {
                throw new Exception("No previewer find in database.");
            } else {
                // Checking if all the required informations are filled.
                if ($this->getRequest()->getParam("type") && $previewer->isPublishable()) {

                    $type = strtolower($this->getRequest()->getParam("type"));
                    $device = (new Previewer_Model_Device())->getType($type);
                    $device->setPreviewer($previewer);

                    $path = $device->getResources();

                    $this->_download($path, "{$device->_zipname}.zip", 'application/octet-stream');

                } else {
                    throw new Exception("Missing fields.");
                }
            }
        } catch(Exception $e) {
            Zend_Registry::get("logger")->sendException(print_r($e, true), "previewer_");
            $this->_redirect('previewer/backoffice_edit');
        }

    }
}
