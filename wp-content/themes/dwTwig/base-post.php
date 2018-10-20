<?php
$context = Timber::get_context();
$post = new TimberPost();
$context['post'] = $post;
$remove_after_dot = current(explode('.', $post->_wp_page_template));
Timber::render( array( 'post-' . $remove_after_dot . '.twig', 'single.twig' ), $context );