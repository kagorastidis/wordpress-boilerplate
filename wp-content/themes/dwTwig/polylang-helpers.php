<?php
/**
 * 
 * Returns a post or a page Object in the current language
 * 
 * @param int   $id  The id of the post / page
 * 
 */ 

function getSingleContentById($id) {
	return get_post(pll_get_post($id));
}

/**
 * 
 * Returns a post or a page URL in the current language
 * 
 * @param int   $id  The id of the post / page
 * 
 */ 

function getSingleContentUrlById($id) {
	return get_permalink(pll_get_post($id));
}

/**
 * 
 * Returns a Taxonomy type eg category || tag || custom
 * 
 * @param int   $id  The id of the post / page
 * 
 */ 

function getTaxonomyType($id) {
	return get_term($id)->taxonomy;
}

/**
 * 
 * Returns a taxonomy Object in the current language
 * 
 * @param int   $id  The id of the taxonomy
 *  
 */ 

function getTaxonomyById($id) {
	return get_term(pll_get_term($id));
}

/**
 * 
 * Returns a taxonomy URL in the current language
 * 
 * @param int   $id  The id of the post / page
 * 
 */ 

function getTaxonomyUrlById($id) {
	$type= getTaxonomyType($id);
	return get_category_link(pll_get_term(get_term_by('id', $id, $type)->term_id));
}

/**
 * 
 * Returns a posts array from a specific taxonomy in the current language
 * 
 * @param int   $id  The id of the taxonomy. Can be either tag or category
 * 
 */ 

function getTaxonomyPosts($id) {
    if(getTaxonomyType($id) == 'post_tag') {
        return 'tag_id='.getTaxonomyById($id)->term_id;
    }
    return 'cat='.getTaxonomyById($id)->term_id; 
}

/**
 * 
 * Adds translatable fields to WP_ADMIN->Languages-> language Strings
 * 
 */ 

if(is_admin()) {
	if (function_exists('pll_register_string')) {
		$strings = [
			'inline' => [
				'contact',
				'view all'
			],
			'multiline' => [
				'contact_details'
			]
		];
		foreach($strings['inline'] as $string) {
	    	pll_register_string($string, $string);
		}
		foreach($strings['multiline'] as $string) {
	    	pll_register_string($string, $string, 'polylang', true);
		}
	}
}

/**
 * 
 * Filter to include ACF to polylangs translatable values
 * 
 */ 

add_filter('pll_get_post_types', 'unset_cpt_pll', 10, 2);

function unset_cpt_pll( $post_types, $is_settings ) {
    $post_types['acf'] = 'acf';
    return $post_types;
}