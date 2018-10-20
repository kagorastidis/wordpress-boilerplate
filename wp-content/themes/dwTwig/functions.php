<?php

require_once __DIR__ . '/config.php';
require_once __DIR__ . '/lib/widgets.php';
require_once __DIR__ . '/polylang-helpers.php';

// hide the admin bar
add_filter('show_admin_bar', '__return_false');

if ( ! class_exists( 'Timber' ) ) {
	add_action( 'admin_notices', function() {
		echo '<div class="error"><p>Timber not activated. Make sure you activate the plugin in <a href="' . esc_url( admin_url( 'plugins.php#timber' ) ) . '">' . esc_url( admin_url( 'plugins.php') ) . '</a></p></div>';
	});
	
	add_filter('template_include', function($template) {
		return get_stylesheet_directory() . '/static/no-timber.html';
	});
	
	return;
}

function returnAnalyticsAPI() {
  return ANALYTICS_API;
}

function returnMapsAPI() {
  return MAPS_API;
}

function my_acf_google_map_api( $api ){
	$api['key'] = MAPS_API;
	return $api;
}

function getContactForm() {
	if(pll_current_language() == 'en'):
		return '[contact-form-7 id="94" title="Contact Form EN"]';
	endif;
	return '[contact-form-7 id="36" title="Contact form EL"]';
}

function getCurrentMenu() {
	if(pll_current_language() == 'en'):
		return 'main-menu-en';
	endif;
	return 'main-menu';
}

Timber::$dirname = array('templates', 'views');

class StarterSite extends TimberSite {

	function __construct() {
		add_theme_support( 'post-formats' );
		add_theme_support( 'post-thumbnails' );
		add_theme_support( 'menus' );
		add_theme_support( 'html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption' ) );
		add_filter( 'timber_context', array( $this, 'add_to_context' ) );
		add_filter( 'get_twig', array( $this, 'add_to_twig' ) );
		add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');
		add_action( 'init', array( $this, 'register_post_types' ) );
        add_action( 'init', array( $this, 'register_taxonomies' ) );
        add_action( 'init', array( $this, 'register_menus' ) );        
		add_action('widgets_init', 'widgets_footer');
        add_action('widgets_init', 'langBar');
		parent::__construct();
	}

  function register_menus() {
    register_nav_menus( array(
        'menu_main' => 'Main Menu',
    ) );
  }

	function register_post_types() {
		//this is where you can register custom post types
	}

	function register_taxonomies() {
		//this is where you can register custom taxonomies
	}

	function add_to_context( $context ) {
        $menu = getCurrentMenu();
        $context['analytics_key'] = ANALYTICS_API;
        $context['api_key'] = MAPS_API;
        $context['menu'] = new TimberMenu($menu);
        $context['term'] = new TimberTerm();
        $context['site'] = $this;
        $context['posts'] = Timber::get_posts(); // args: getTaxonomyPosts(category_id / tag_id)
        $context['news_posts'] = Timber::get_posts(getTaxonomyPosts(3));
        $context['isHome'] = is_front_page();
        $context['pagination'] = Timber::get_pagination();
        $context['langbar'] = Timber::get_widgets('langbar');
        $context['footer1'] = Timber::get_widgets('footer1');
        $context['footer2'] = Timber::get_widgets('footer2');
        $context['footer3'] = Timber::get_widgets('footer3');
        $context['footer4'] = Timber::get_widgets('footer4');
        $context['footer5'] = Timber::get_widgets('footer5');
        $context['contact_form'] = getContactForm();
		$context['current_lang'] = pll_current_language();
		return $context;
	}

	function add_to_twig( $twig ) {
		/* this is where you can add your own functions to twig */
		$twig->addExtension( new Twig_Extension_StringLoader() );
		$twig->addFilter('myfoo', new Twig_SimpleFilter('myfoo', array($this, 'myfoo')));
		return $twig;
	}

}

new StarterSite();