<?php
	
	function wpb_custom_new_menu() {
	  register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
	}
	add_action( 'init', 'wpb_custom_new_menu' );
	
	add_theme_support( 'post-thumbnails' );
	
	
?>