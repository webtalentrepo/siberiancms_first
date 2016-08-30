<?php


class Reviewwrite_Model_Reviewwrite extends Core_Model_Default
{
	public function __construct($params = array())
	{
		parent::__construct($params);
		$this->_db_table = 'Reviewwrite_Model_Db_Table_Reviewwrite';
		return $this;
	}
	
	public function findByCustomerId($value_id, $customer_id)
	{
		return $this->getTable()->findByCustomerId($value_id, $customer_id);
	}
	
	public function saveData($data, $where)
	{
		$this->getTable()->saveData($data, $where);
	}
}