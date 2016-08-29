<?php

class Review_Application_ReviewController extends Application_Controller_Default
{
	
	/**
	 * Affichage de la boxe
	 */
	public function editAction()
	{
		$review_id = $this->getRequest()->getParam('review_id');
		
		if ($review_id) {
			$review = new Review_Model_Review();
			$myReview = $review->find($review_id);
		}
		
		$html = $this->getLayout()
			->addPartial('row', 'admin_view_default', 'review/application/edit.phtml')
			->setOptionValue($this->getRequest()->getParam('option_value_id'))
			->setSectionId($this->getRequest()->getParam('section_id'))
			->setField((!$review_id ? false : $myReview))
			->toHtml();
		
		$this->getLayout()->setHtml($html);
		
	}
	
	/**
	 * Sauvegarde des infos d'un champ
	 */
	public function editpostAction()
	{
		exit;
	}
	
}
