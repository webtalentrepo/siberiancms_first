<?php
/**
 *
 * Schema definition for 'previewer_config'
 *
 * Last update: 2016-05-18
 *
 */
$schemas = (!isset($schemas)) ? array() : $schemas;
$schemas['previewer_config'] = array(
    'previewer_id' => array(
        'type' => 'int(10) unsigned',
        'auto_increment' => true,
        'primary' => true,
    ),
    'app_name' => array(
        'type' => 'varchar(50)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'bundle_id' => array(
        'type' => 'varchar(150)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'background_color' => array(
        'type' => 'varchar(8)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'font_color' => array(
        'type' => 'varchar(8)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'info_text_1' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'info_text_2' => array(
        'type' => 'varchar(250)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'startup_image' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'startup_image_retina' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'startup_image_retina_4' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'startup_image_iphone_6' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'startup_image_iphone_6_plus' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'logo' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'icon' => array(
        'type' => 'varchar(250)',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
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
    'show_modal_button' => array(
        'type' => 'tinyint(4)',
        'default' => '0',
    ),
    'qrcode' => array(
        'type' => 'varchar(150)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'apple_store_url' => array(
        'type' => 'varchar(250)',
        'is_null' => true,
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
    ),
    'play_store_url' => array(
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