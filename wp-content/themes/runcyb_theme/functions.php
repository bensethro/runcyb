<?php

function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'sub-menu' => __( 'Sub Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );

add_theme_support( 'post-thumbnails' );



if ( function_exists( 'add_theme_support' ) ) {
	add_theme_support( 'post-thumbnails' );
        set_post_thumbnail_size( 800, 400 ); // default Post Thumbnail dimensions   
}

if ( function_exists( 'add_image_size' ) ) { 
	add_image_size( 'featureimage', 1000, 9999 ); 
	add_image_size( 'event-logo', 400, 100 ); 
	
}

if (function_exists('register_sidebar')) {
	
	register_sidebar(array(
		'name'=> 'posts',
		'id' => 'posts',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));
	
		register_sidebar(array(
		'name'=> 'top sidebar',
		'id' => 'top_sidebar',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));

	register_sidebar(array(
		'name'=> 'bottomleft',
		'id' => 'bottom_left',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));
		register_sidebar(array(
		'name'=> 'bottommid',
		'id' => 'bottom_lmid',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));
		register_sidebar(array(
		'name'=> 'bottomright',
		'id' => 'bottom_right',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	));
}


function custom_excerpt_length( $length ) {
	return 20;
}
add_filter( 'excerpt_length', 'custom_excerpt_length', 100 );






// /**
//  * Add Twitter & Facebook Sharing Icon to Posts
//  */
// function gpp_social_buttons_below($content) {
// 	global $post;
// 	$permalink = get_permalink($post->ID);
// 	$title = get_the_title();
// 	if(!is_feed() && !is_home() && !is_page()) {
// 		$content = $content . '<div class="social-links">
// 	<a href="http://twitter.com/share" class="twitter-share-button" data-count="none" data-url="'.$permalink.'" data-text="'.$title.'">Tweet</a>
// 	<div id="fb-root"></div><fb:like href="'.$permalink.'" layout="button_count" width="100" show_faces="false" font="">fbqwew</fb:like>
// </div>';
// 	}
// 	return $content;
// }
// add_filter('the_content', 'gpp_social_buttons_below');



?>