<?php

class Previewer_Model_Db_Table_Config extends Core_Model_Db_Table {

    protected $_name = "previewer_config";
    protected $_primary = "previewer_id";

    public function findLastByArray($values) {

        $where = array();

        foreach($values as $field => $value) {
            if(is_array($value))
                $where[] = $this->_db->quoteInto($field.' IN (?)', $value);
            else
                $where[] = $this->_db->quoteInto($field.' = ?', $value);
        }

        if(!empty($where)) {
            $where = join(' AND ', $where);
        }

        $cols = array(
            "show_modal_button" => new Zend_Db_Expr("pcl.show_modal_button"),
            "modal_text_1" => new Zend_Db_Expr("pcl.modal_text_1"),
            "modal_text_2" => new Zend_Db_Expr("pcl.modal_text_2"),
            "modal_image" => new Zend_Db_Expr("pcl.modal_image"),
            "qrcode" => new Zend_Db_Expr("pcl.qrcode"),
            "qrcode_alt_text" => new Zend_Db_Expr("pcl.qrcode_alt_text"),
            "qrcode_alt_image" => new Zend_Db_Expr("pcl.qrcode_alt_image")
        );

        $select = $this->select()
            ->from(array("pc" => $this->_name))
            ->joinLeft(array("pcl" => $this->_name."_language"), "pcl.previewer_id = pc.previewer_id", $cols);

        if($where) $select->where($where);

        $select->order("pc.previewer_id DESC")
            ->limit(1)
            ->setIntegrityCheck(false)
        ;

        return $this->fetchRow($select);

    }

    public function saveLanguageData($data) {

        if($data) {

            $language_data = array(
                "previewer_id" => $data["previewer_id"],
                "language_code" => $data["language_code"],
                "show_modal_button" => $data["show_modal_button"],
                "modal_text_1" => $data["modal_text_1"],
                "modal_text_2" => $data["modal_text_2"],
                "modal_image" => $data["modal_image"],
                "qrcode" => $data["qrcode"],
                "qrcode_alt_text" => $data["qrcode_alt_text"],
                "qrcode_alt_image" => $data["qrcode_alt_image"]
            );

            $this->_db->delete($this->_name . '_language', array('previewer_id = ?' => $language_data["previewer_id"], 'language_code = ?' => $language_data["language_code"]));
            $this->_db->insert($this->_name . '_language', $language_data);
        }

    }

}