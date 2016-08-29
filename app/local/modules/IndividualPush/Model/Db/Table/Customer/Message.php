<?php

class Push_Model_Db_Table_Customer_Message extends Core_Model_Db_Table {

    protected $_name = "push_customer_message";
    protected $_primary = "customer_message_id";

    public function findCustomersByMessageId($message_id) {
        $select = $this->select()
            ->from(array('pum' => $this->_name))
            ->where('pum.message_id = ?', $message_id)
        ;

        return $this->fetchAll($select);
    }
}
