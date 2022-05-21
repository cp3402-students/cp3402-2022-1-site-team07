<?php
/**
 * UnderStrap functions and definitions
 *
 * @package Understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

// UnderStrap's includes directory.
$understrap_inc_dir = 'inc';

// Array of files to include.
$understrap_includes = array(
    '/theme-settings.php',                  // Initialize theme default settings.
    '/setup.php',                           // Theme setup and custom theme supports.
    '/widgets.php',                         // Register widget area.
    '/enqueue.php',                         // Enqueue scripts and styles.
    '/template-tags.php',                   // Custom template tags for this theme.
    '/pagination.php',                      // Custom pagination for this theme.
    '/hooks.php',                           // Custom hooks.
    '/extras.php',                          // Custom functions that act independently of the theme templates.
    '/customizer.php',                      // Customizer additions.
    '/custom-comments.php',                 // Custom Comments file.
    '/class-wp-bootstrap-navwalker.php',    // Load custom WordPress nav walker. Trying to get deeper navigation? Check out: https://github.com/understrap/understrap/issues/567.
    '/editor.php',                          // Load Editor functions.
    '/block-editor.php',                    // Load Block Editor functions.
    '/deprecated.php',                      // Load deprecated functions.
);

// Load WooCommerce functions if WooCommerce is activated.
if ( class_exists( 'WooCommerce' ) ) {
    $understrap_includes[] = '/woocommerce.php';
}

// Load Jetpack compatibility file if Jetpack is activiated.
if ( class_exists( 'Jetpack' ) ) {
    $understrap_includes[] = '/jetpack.php';
}

// Include files.
foreach ( $understrap_includes as $file ) {
    require_once get_theme_file_path( $understrap_inc_dir . $file );
}


add_action( 'admin_enqueue_scripts', 'my_admin_style');

function my_admin_style() {
    wp_enqueue_style( 'admin-style', get_stylesheet_directory_uri() . '/admin-style.css' );
}






// Custom port types
function cptui_register_my_cpts() {

    /**
     * Post Type: Bands.
     */

    $labels = [
        "name" => __( "Bands", "team07theme2" ),
        "singular_name" => __( "Band", "team07theme2" ),
        "menu_name" => __( "Bands", "team07theme2" ),
        "all_items" => __( "All Bands", "team07theme2" ),
        "add_new" => __( "Add New", "team07theme2" ),
        "add_new_item" => __( "Add New Band", "team07theme2" ),
        "edit_item" => __( "Edit Band", "team07theme2" ),
        "new_item" => __( "New BAnd", "team07theme2" ),
        "view_item" => __( "View Band", "team07theme2" ),
        "view_items" => __( "View Bands", "team07theme2" ),
        "search_items" => __( "Search Bands", "team07theme2" ),
        "not_found" => __( "No Bands found", "team07theme2" ),
        "not_found_in_trash" => __( "No Bands found in Trash", "team07theme2" ),
        "parent" => __( "Parent Band", "team07theme2" ),
        "insert_into_item" => __( "Insert into Band", "team07theme2" ),
        "uploaded_to_this_item" => __( "Uploaded to this Band", "team07theme2" ),
        "filter_items_list" => __( "Filter bands list", "team07theme2" ),
        "items_list_navigation" => __( "Bands list navigation", "team07theme2" ),
        "items_list" => __( "Bands List", "team07theme2" ),
        "attributes" => __( "Bands Attributes", "team07theme2" ),
        "name_admin_bar" => __( "Bands", "team07theme2" ),
        "item_published" => __( "Band published", "team07theme2" ),
        "item_published_privately" => __( "Band published privately", "team07theme2" ),
        "item_reverted_to_draft" => __( "Band reverted to draft", "team07theme2" ),
        "item_scheduled" => __( "Band scheduled", "team07theme2" ),
        "item_updated" => __( "Band updagted", "team07theme2" ),
        "parent_item_colon" => __( "Parent Band", "team07theme2" ),
    ];

    $args = [
        "label" => __( "Bands", "team07theme2" ),
        "labels" => $labels,
        "description" => "",
        "public" => true,
        "publicly_queryable" => true,
        "show_ui" => true,
        "show_in_rest" => true,
        "rest_base" => "",
        "rest_controller_class" => "WP_REST_Posts_Controller",
        "rest_namespace" => "wp/v2",
        "has_archive" => false,
        "show_in_menu" => true,
        "show_in_nav_menus" => true,
        "delete_with_user" => false,
        "exclude_from_search" => false,
        "capability_type" => "post",
        "map_meta_cap" => true,
        "hierarchical" => false,
        "can_export" => false,
        "rewrite" => [ "slug" => "band", "with_front" => true ],
        "query_var" => true,
        "menu_icon" => "dashicons-groups",
        "supports" => [ "title", "editor", "thumbnail", "custom-fields" ],
        "taxonomies" => [ "members" ],
        "show_in_graphql" => false,
    ];

    register_post_type( "band", $args );
}

add_action( 'init', 'cptui_register_my_cpts' );
function cptui_register_my_cpts_band() {

    /**
     * Post Type: Bands.
     */

    $labels = [
        "name" => __( "Bands", "team07theme2" ),
        "singular_name" => __( "Band", "team07theme2" ),
        "menu_name" => __( "Bands", "team07theme2" ),
        "all_items" => __( "All Bands", "team07theme2" ),
        "add_new" => __( "Add New", "team07theme2" ),
        "add_new_item" => __( "Add New Band", "team07theme2" ),
        "edit_item" => __( "Edit Band", "team07theme2" ),
        "new_item" => __( "New BAnd", "team07theme2" ),
        "view_item" => __( "View Band", "team07theme2" ),
        "view_items" => __( "View Bands", "team07theme2" ),
        "search_items" => __( "Search Bands", "team07theme2" ),
        "not_found" => __( "No Bands found", "team07theme2" ),
        "not_found_in_trash" => __( "No Bands found in Trash", "team07theme2" ),
        "parent" => __( "Parent Band", "team07theme2" ),
        "insert_into_item" => __( "Insert into Band", "team07theme2" ),
        "uploaded_to_this_item" => __( "Uploaded to this Band", "team07theme2" ),
        "filter_items_list" => __( "Filter bands list", "team07theme2" ),
        "items_list_navigation" => __( "Bands list navigation", "team07theme2" ),
        "items_list" => __( "Bands List", "team07theme2" ),
        "attributes" => __( "Bands Attributes", "team07theme2" ),
        "name_admin_bar" => __( "Bands", "team07theme2" ),
        "item_published" => __( "Band published", "team07theme2" ),
        "item_published_privately" => __( "Band published privately", "team07theme2" ),
        "item_reverted_to_draft" => __( "Band reverted to draft", "team07theme2" ),
        "item_scheduled" => __( "Band scheduled", "team07theme2" ),
        "item_updated" => __( "Band updagted", "team07theme2" ),
        "parent_item_colon" => __( "Parent Band", "team07theme2" ),
    ];

    $args = [
        "label" => __( "Bands", "team07theme2" ),
        "labels" => $labels,
        "description" => "",
        "public" => true,
        "publicly_queryable" => true,
        "show_ui" => true,
        "show_in_rest" => true,
        "rest_base" => "",
        "rest_controller_class" => "WP_REST_Posts_Controller",
        "rest_namespace" => "wp/v2",
        "has_archive" => false,
        "show_in_menu" => true,
        "show_in_nav_menus" => true,
        "delete_with_user" => false,
        "exclude_from_search" => false,
        "capability_type" => "post",
        "map_meta_cap" => true,
        "hierarchical" => false,
        "can_export" => false,
        "rewrite" => [ "slug" => "band", "with_front" => true ],
        "query_var" => true,
        "menu_icon" => "dashicons-groups",
        "supports" => [ "title", "editor", "thumbnail", "custom-fields" ],
        "taxonomies" => [ "members" ],
        "show_in_graphql" => false,
    ];

    register_post_type( "band", $args );
}

add_action( 'init', 'cptui_register_my_cpts_band' );
function cptui_register_my_taxes() {

    /**
     * Taxonomy: Members.
     */

    $labels = [
        "name" => __( "Members", "team07theme2" ),
        "singular_name" => __( "Member", "team07theme2" ),
        "menu_name" => __( "Members", "team07theme2" ),
        "all_items" => __( "All Members", "team07theme2" ),
        "edit_item" => __( "Edit Member", "team07theme2" ),
        "view_item" => __( "View Member", "team07theme2" ),
        "update_item" => __( "Update Member name", "team07theme2" ),
        "add_new_item" => __( "Add new Member", "team07theme2" ),
        "new_item_name" => __( "New Member name", "team07theme2" ),
        "parent_item" => __( "Parent Member", "team07theme2" ),
        "parent_item_colon" => __( "Parent Member:", "team07theme2" ),
        "search_items" => __( "Search Members", "team07theme2" ),
        "popular_items" => __( "Popular Members", "team07theme2" ),
        "separate_items_with_commas" => __( "Separate Members with commas", "team07theme2" ),
        "add_or_remove_items" => __( "Add or remove Members", "team07theme2" ),
        "choose_from_most_used" => __( "Choose from the most used Members", "team07theme2" ),
        "not_found" => __( "No Members found", "team07theme2" ),
        "no_terms" => __( "No Members", "team07theme2" ),
        "items_list_navigation" => __( "Members list navigation", "team07theme2" ),
        "items_list" => __( "Members list", "team07theme2" ),
        "back_to_items" => __( "Back to Members", "team07theme2" ),
        "name_field_description" => __( "The name is how it appears on your site.", "team07theme2" ),
        "parent_field_description" => __( "Assign a parent term to create a hierarchy. The term Jazz, for example, would be the parent of Bebop and Big Band.", "team07theme2" ),
        "slug_field_description" => __( "The slug is the URL-friendly version of the name. It is usually all lowercase and contains only letters, numbers, and hyphens.", "team07theme2" ),
        "desc_field_description" => __( "The description is not prominent by default; however, some themes may show it.", "team07theme2" ),
    ];


    $args = [
        "label" => __( "Members", "team07theme2" ),
        "labels" => $labels,
        "public" => true,
        "publicly_queryable" => true,
        "hierarchical" => false,
        "show_ui" => true,
        "show_in_menu" => true,
        "show_in_nav_menus" => true,
        "query_var" => true,
        "rewrite" => [ 'slug' => 'members', 'with_front' => true, ],
        "show_admin_column" => false,
        "show_in_rest" => true,
        "show_tagcloud" => false,
        "rest_base" => "members",
        "rest_controller_class" => "WP_REST_Terms_Controller",
        "rest_namespace" => "wp/v2",
        "show_in_quick_edit" => false,
        "sort" => false,
        "show_in_graphql" => false,
    ];
    register_taxonomy( "members", [ "band" ], $args );
}
add_action( 'init', 'cptui_register_my_taxes' );


// Fix 404 error for custom posts
flush_rewrite_rules( false );
