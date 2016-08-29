<?php

class Push_Model_Customer_Message extends Core_Model_Default {

    public function __construct($datas = array()) {
        parent::__construct($datas);
        $this->_db_table = 'Push_Model_Db_Table_Customer_Message';
    }

    public function findCustomersByMessageId($message_id) {
        $customers = $this->getTable()->findCustomersByMessageId($message_id);
        $data = array();
        foreach($customers as $customer) {
            $data[] = $customer->getCustomerId();
        }

        return $data;
    }

}