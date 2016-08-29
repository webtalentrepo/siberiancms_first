<?php

class Previewer_Backoffice_ModalController extends Backoffice_Controller_Default
{
    public function loadAction() {

        $html = array(
            "title" => $this->_("Previewer Modal"),
            "icon" => "fa-picture-o",
        );

        $this->_sendHtml($html);

    }

    public function saveAction() {

        if($values = Zend_Json::decode($this->getRequest()->getRawBody())) {
            try {

                $language_code = Core_Model_Language::DEFAULT_LANGUAGE;
                if(!empty($values["language_code"])) {
                    $language_code = $values["language_code"];
                }

                $previewer = new Previewer_Model_Previewer();
                $previewer = $previewer->findLast();

                $apple_store_url = $previewer->getAppleStoreUrl();
                $play_store_url = $previewer->getPlayStoreUrl();
                $qrcode_alt_text = $previewer->getQrcodeAltText();

                if(stripos($previewer->getQrcode(), "$language_code-") === false || !$previewer->getQrcodeUrl()) {
                    $base_path = Core_Model_Directory::getBasePathTo(Previewer_Model_Previewer::PATH_IMAGE);
                    $path = $base_path."/modal_image/";
                    $image_name = "$language_code-qrcode.png";
                    $url = urlencode($this->getUrl("application/device/check",array("app_id" => "previewer", "language_code" => $language_code)));

                    if(!is_dir($path)) {
                        mkdir($path, 0777, true);
                    }

                    copy('http://api.qrserver.com/v1/create-qr-code/?color=000000&bgcolor=FFFFFF&data='.$url.'&qzone=1&margin=0&size=200x200&ecc=L', $path.$image_name);

                    $values["qrcode"] = $image_name;
                }

                $previewer->addData($values)
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

                if (empty($_FILES) || empty($_FILES['file']['name'])) {
                    throw new Exception("No file has been sent");
                }

                $base_path = Core_Model_Directory::getBasePathTo(Previewer_Model_Previewer::PATH_IMAGE);
                $path = $base_path . "/" . $code;

                $params = array(
                    "destination_folder" => $path,
                    "uniq" => 1,
                    "validators" => array()
                );

                $uploader = new Core_Model_Lib_Uploader();
                $file = $uploader->upload($params);

                if ($file) {

                    $language_code = Core_Model_Language::DEFAULT_LANGUAGE;
                    if($this->getRequest()->getPost("language_code")) {
                        $language_code = $this->getRequest()->getPost("language_code");
                    }

                    //We save the image url in database to use it later
                    $previewer = Previewer_Model_Previewer::getInstance(array("language_code" => $language_code));

                    $new_path = "/".$code."/" . $file;

                    $data_previewer = $previewer->getData();
                    $data_previewer[$code] = $new_path;
                    $data_previewer["language_code"] = $language_code;

                    $previewer->setData($data_previewer)
                        ->save()
                    ;

                    $data = array(
                        "success" => 1,
                        "message" => $this->_("Your image has been successfully saved."),
                        "file" => $file
                    );

                } else {
                    $message = $this->_("An error occurred during the process. Please try again later.");
                    throw new Exception($message);
                }
            } catch (Exception $e) {
                $data = array(
                    "error" => 1,
                    "message" => $e->getMessage()
                );
            }

            $this->_sendHtml($data);
        }
    }
}
