<?php

class Review_Mobile_ViewController extends Application_Controller_Mobile_Default
{
	public function findAction()
	{
		if($value_id = $this->getRequest()->getParam('value_id')) {
			
			$data = array();
			$option = $this->getCurrentOptionValue();
			
			$data["page_title"] = $option->getTabbarName();
			
			$this->_sendHtml($data);
		}
	}
	
	public function postAction()
	{
		exit;
	}
}