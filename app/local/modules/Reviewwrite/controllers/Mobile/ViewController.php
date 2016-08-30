<?php

class Reviewwrite_Mobile_ViewController extends Application_Controller_Mobile_Default
{
	public function findAction()
	{
		if ($value_id = $this->getRequest()->getParam('value_id')) {
			
			$data = array();
			$option = $this->getCurrentOptionValue();
			$reviewwrite = $option->getObject();
			
			$data["page_title"] = $option->getTabbarName();
			$customer_id = $this->getSession()->getCustomerId();
			if (empty($customer_id)) {
				$customer_id = $this->getSession()->getAdminId();
			}
			$customer = new Customer_Model_Customer();
			$customer->find($customer_id);
			if (!$customer->getId()) {
				$data["current_user"] = '';
				$data["customer_id"] = '';
				$data["rewritewrite_content"] = '';
			} else {
				$data["current_user"] = $customer->getData('email');
				$data["customer_id"] = $customer->getId();
				$r = $reviewwrite->findByCustomerId($value_id, $data["customer_id"]);
				if (!$r) {
					$data["rewritewrite_content"] = '';
				} else {
					$rowArray = $r->toArray();
					$data["rewritewrite_content"] = $rowArray["reviewwrite_content"];
				}
			}
			$this->_sendHtml($data);
		}
	}
	
	public function postAction()
	{
		if ($data = Zend_Json::decode($this->getRequest()->getRawBody())) {
			try {
				$data = $data["form"];
				$option = $this->getCurrentOptionValue();
				$reviewwrite = $option->getObject();
				$errors = '';
				if ($data["customer_id"] == '') {
					$customer = new Customer_Model_Customer();
					$rEmail = $customer->findByEmail($data["user_email"]);
					if (!$rEmail->getId()) {
						$errors .= $this->_('Inputted user email is no exist!<br/>');
					} else {
						$data["customer_id"] = $rEmail->getId();
					}
				}
				$r = $reviewwrite->findByCustomerId($data["value_id"], $data["customer_id"]);
				if (!$r) {
					$saveData = array(
						'value_id' => $data['value_id'],
						'customer_id' => $data['customer_id'],
						'reviewwrite_content' => $data['reviewwrite_content'],
						'created_at' => date('Y-m-d H:i:s'),
						'updated_at' => date('Y-m-d H:i:s')
					);
					$reviewwrite->saveData($saveData, '');
				} else {
					$row = $r->toArray();
					$updateData = array(
						'reviewwrite_content' => $data['reviewwrite_content'],
						'updated_at' => date('Y-m-d H:i:s')
					);
					$where = array('reviewwrite_id = ?' => $row['reviewwrite_id']);
					$reviewwrite->saveData($updateData, $where);
				}
				if (empty($errors)) {
					$html = array(
						"success" => 1,
						"message" => $this->_("The form has been sent successfully")
					);
				} else {
					$html = array('error' => 1, 'message' => $errors);
				}
			} catch (Exception $e) {
				$html = array('error' => 1, 'message' => $e->getMessage());
			}
			$this->_sendHtml($html);
		}
	}
}