<?php
class Review_Bootstrap {

    public static function init($bootstrap)
    {
        $base = Core_Model_Directory::getBasePathTo("/app/local/modules/Review/");

        # Models
        require_once "{$base}/Model/Review.php";
        require_once "{$base}/Model/Db/Table/Review.php";
	
    }
}