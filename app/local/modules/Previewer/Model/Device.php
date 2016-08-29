<?php

class Previewer_Model_Device extends Core_Model_Default
{
    /**
     * @param $type
     * @return Previewer_Model_Device_Android|Previewer_Model_Device_Ios|boolean
     */
    public function getType($type) {
        if(!empty($type)) {
            $class = sprintf("%s_%s", get_class(), ucfirst(strtolower($type)));

            $type = new $class();
            $type->setDevice($type);

            return $type;
        }

        return false;
    }

}