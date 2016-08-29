<?php


class Review_Model_Review extends Core_Model_Default
{
	public function __construct($params = array())
	{
		parent::__construct($params);
		$this->_db_table = 'Review_Model_Db_Table_Review';
		return $this;
	}
	
	public function findByCustomerId($value_id, $customer_id)
	{
		return $this->getTable()->findByCustomerId($value_id, $customer_id);
	}
}