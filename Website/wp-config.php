<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'team-07-a2' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '5;Ig@%n@rvZ0.~;Ye>pI<V.O>zJ`mex}8IK.j(r^K/PP#P)QhJ.A39,x#1r{:[]&' );
define( 'SECURE_AUTH_KEY',  '+=0S|m}!7.Zz!V`fTmX*?c+ 68@N2WyM&:r@f3qHRLBN^t4c0m<;R5 <3j.e9G0:' );
define( 'LOGGED_IN_KEY',    '1<1F~u}Es8wnLC[+!%jth3P.waJoEQoYAWcJ$y(?S&Ov(/K#_^?Nm?PxNS78C=`7' );
define( 'NONCE_KEY',        'z*vCB/k|CTMfcqid]F&7Q2X>tT&/Q5*}LMR!O%olw%FR=f,:4pwddmk0O.e[|;Xc' );
define( 'AUTH_SALT',        'dUu|wfz;HfNSa&S.M450Y~9 AG[zZC&k~ #]6$>xfaDc)uVMES8bvvMug9$_yx3G' );
define( 'SECURE_AUTH_SALT', '/5Slv-teNQs^~4ts+nMi03T||[ub;-k7.*Kb`1Z!k=c+XGt{<cb#sEB]9P7uppr$' );
define( 'LOGGED_IN_SALT',   'wbvTm~q*hKOwg1iSLXQI^OnMpkS~xA2$}g/d2=QpmKc-YhNSG0}|_SW,Bqcft9%.' );
define( 'NONCE_SALT',       'ykCcXTB1g#rk19G0&`p(gdqV99!4(h5MxxM4- }M-S$IFqaL,@o,{T55.wl}B2hI' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
