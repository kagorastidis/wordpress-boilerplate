<?php

register_sidebar( array(
            'name' => 'Navigation Sidebar',
            'id' => 'navbar',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="rounded">',
            'after_title' => '</h2>',
        ) );

function langBar () {
    register_sidebar( array(
            'name' => 'lang sidebar',
            'id' => 'langbar',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h2 class="rounded">',
            'after_title' => '</h2>',
    ) );
}

function widgets_footer() {
	register_sidebar( array(
            'name' => 'footer 1',
            'id' => 'footer1',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="orange-text uppercase">',
            'after_title' => '</h2>',
	) );
	register_sidebar( array(
            'name' => 'footer 2',
            'id' => 'footer2',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="orange-text uppercase">',
            'after_title' => '</h2>',
	) );
	register_sidebar( array(
            'name' => 'footer 3',
            'id' => 'footer3',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="orange-text uppercase">',
            'after_title' => '</h2>',
	) );
	register_sidebar( array(
            'name' => 'footer 4',
            'id' => 'footer4',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="orange-text uppercase">',
            'after_title' => '</h2>',
	) );
	register_sidebar( array(
            'name' => 'footer 5',
            'id' => 'footer5',
            'before_widget' => '<div>',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="orange-text uppercase">',
            'after_title' => '</h2>',
	) );
}