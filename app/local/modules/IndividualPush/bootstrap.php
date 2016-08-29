<?php
class IndividualPush_Bootstrap {

    public static function init($bootstrap)
    {
        $base = Core_Model_Directory::getBasePathTo("/app/local/modules/IndividualPush/");

        # Models
        require_once "{$base}/Model/Customer/Message.php";
        require_once "{$base}/Model/Db/Table/Customer/Message.php";
    }
}