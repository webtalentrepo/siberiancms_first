<?php
/**
 * Created by PhpStorm.
 * User: freelancer
 * Date: 8/27/16
 * Time: 8:59 AM
 */
$schemas = (!isset($schemas)) ? array() : $schemas;
$schemas = ['review'] = array(
	'review_id' => array(
		'type' => 'int(11) unsigned',
		'auto_increment' => true,
		'primary' => true,
	),
	'customer_id' => array(
		'type' => 'int(11) unsigned',
		'is_null' => true,
		'foreign_key' => array(
			'table' => 'customer',
			'column' => 'customer_id',
			'name' => 'FK_REVIEW_CUSTOMER_ID',
			'on_update' => 'CASCADE',
			'on_delete' => 'CASCADE',
		),
	),
	'value_id' => array(
		'type' => 'int(11) unsigned',
	),
	'review_content' => array(
		'type' => 'text',
		'is_null' => true,
		'charset' => 'utf8',
		'collation' => 'utf8_general_ci',
	),
	'created_at' => array(
		'type' => 'datetime',
	),
	'updated_at' => array(
		'type' => 'datetime',
	),
);