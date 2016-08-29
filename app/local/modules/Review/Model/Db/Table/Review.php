<?php

class Review_Model_Db_Table_Review extends Core_Model_Db_Table
{
	protected $_name = "review";
	protected $_primary = "review_id";
	
	/**
	 * Fetch By CustomerId and ValueId
	 *
	 * @param $value_id
	 * @param $customer_id
	 * @return null|Zend_Db_Table_Row_Abstract
	 */
	public function findByCustomerId($value_id, $customer_id)
	{
		$select = $this->select()
			->from(array('cc' => $this->_name))
			->where('cc.value_id = ?', $value_id)
			->where('cc.customer_id = ?', $customer_id);
		
		return $this->fetchRow($select);
	}
}