<?php


class Review_MobileController extends Application_Controller_Mobile_Default
{
	public function viewAction()
	{
		$this->loadPartials($this->getFullActionName('_') . '_l' . $this->_layout_id, false);
		$option = $this->getCurrentOptionValue();
		$html = array('html' => $this->getLayout()->render());
		if ($url = $option->getBackgroundImageUrl()) {
			$html['background_image_url'] = $url;
		}
		$html['use_homepage_background_image'] = (int) $option->getUseHomepageBackgroundImage() && !$option->getHasBackgroundImage();
		$html['title'] = $option->getTabbarName();
		
		$this->getLayout()->setHtml(Zend_Json::encode($html));
	}
}