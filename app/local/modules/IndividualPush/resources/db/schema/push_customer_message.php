<?php
/**
 *
 * Schema definition for 'push_customer_message'
 *
 * Last update: 2016-05-18
 *
 */
$schemas = (!isset($schemas)) ? array() : $schemas;
$schemas['push_customer_message'] = array(
    'customer_message_id' => array(
        'type' => 'int(11) unsigned',
        'auto_increment' => true,
        'primary' => true,
    ),
    'message_id' => array(
        'type' => 'int(11)',
        'is_null' => true,
        'foreign_key' => array(
            'table' => 'push_messages',
            'column' => 'message_id',
            'name' => 'FK_PUSH_CUSTOMER_MESSAGE_MESSAGE_ID',
            'on_update' => 'CASCADE',
            'on_delete' => 'CASCADE',
        ),
        'index' => array(
            'key_name' => 'message_id',
            'index_type' => 'BTREE',
            'is_null' => true,
            'is_unique' => false,
        ),
    ),
    'customer_id' => array(
        'type' => 'int(11) unsigned',
        'is_null' => true,
        'foreign_key' => array(
            'table' => 'customer',
            'column' => 'customer_id',
            'name' => 'FK_PUSH_CUSTOMER_MESSAGE_CUSTOMER_ID',
            'on_update' => 'CASCADE',
            'on_delete' => 'CASCADE',
        ),
        'index' => array(
            'key_name' => 'customer_id',
            'index_type' => 'BTREE',
            'is_null' => true,
            'is_unique' => false,
        ),
    ),
);