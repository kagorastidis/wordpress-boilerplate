<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress-boilerplate');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'W/apKL?/0Bcb)zecw!P-@7&<e^;kD.uXWFLC[KZVpWL~X@JW1vX=%5w/4?)J*khA');
define('SECURE_AUTH_KEY',  'KrdB>`HBxE$&p6]&Er*E*h%F0:3E$8t^RU(j2Ul4qG9WYDA{In^_9]#VQ5LrgZ*s');
define('LOGGED_IN_KEY',    '-$#EjbM]WS}h|jd %~wj:P[6k7_zT0kL(Gnc/bQX.^.%z#;Dp#Us>=6_v37rMtol');
define('NONCE_KEY',        'is3C.QM<;!~*v>FA0TxhR/Kl 8UKj{Kvoo@*3nJ]p.Wi(:Qkrw:~,je`UG=.W,*N');
define('AUTH_SALT',        '}:@^cLsd;hFSIqFw9X)3kx]smS*Nd=cR}anpgT@,oYm8qHEA$p^SC1vc6smck*Fl');
define('SECURE_AUTH_SALT', 'Ot=nn*vbve4+yEzlg;>1OvB;?uG5RgRF=GX{`+Lb.WW<KR,afAPFxw}Y7pnb-9gD');
define('LOGGED_IN_SALT',   '>e}n)$M(u(br0}`N #o8cTg^D9`|w!G247pO;V!RWzf)z7butqUp]Mu0G+BihR}W');
define('NONCE_SALT',       'Hk^Bh#dU{GJQfl44>k]/I)6,OlV[N]$rl-@:HHR;+W}Ufk.>c=qw+ P?d.`CI|FQ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define('WP_AUTO_UPDATE_CORE', false );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
