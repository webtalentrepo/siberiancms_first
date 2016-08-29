<?php
/**
 *
 * Schema definition for 'previewer_config_language'
 *
 * Last update: 2016-05-18
 *
 */
$schemas = (!isset($schemas)) ? array() : $schemas;
$schemas['previewer_config_language'] = array(
    'previewer_id' => array(
        'type' => 'int(11) unsigned',
        'foreign_key' => array(
            'table' => 'previewer_config',
            'column' => 'previewer_id',
            'name' => 'FK_PREVIEWER_CONFIG_LANGUAGE_PREVIEWER_ID',
            'on_update' => 'CASCADE',
            'on_delete' => 'CASCADE',
        ),
        'index' => array(
            'key_name' => 'FK_PREVIEWER_CONFIG_LANGUAGE_PREVIEWER_ID',
            'index_type' => 'BTREE',
            'is_null' => false,
            'is_unique' => false,
        ),
    ),
    'language_code' => array(
        'type' => 'varchar(3)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
        'default' => 'en',
    ),
    'show_modal_button' => array(
        'type' => 'tinyint(4)',
        'default' => '0',
    ),
    'modal_text_1' => array(
        'type' => 'text',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'modal_text_2' => array(
        'type' => 'text',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'modal_image' => array(
        'type' => 'varchar(150)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'qrcode' => array(
        'type' => 'varchar(150)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'qrcode_alt_text' => array(
        'type' => 'text',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'qrcode_alt_image' => array(
        'type' => 'varchar(250)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
);