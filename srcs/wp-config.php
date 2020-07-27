<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'wordpressuser' );
define( 'DB_PASSWORD', 'password' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'k5z[Cs:fThS{9#m|r]qu{NQW28^TTs){| U~6q!UpQ$<BZ]J!:-:-1}lyF5[c]/R');
define('SECURE_AUTH_KEY',  'qk%Ea`G,4vm/`KzIOu;2J9e.|FjYKJ84R^hT5k8Zqz>6o6_!vn`R9)u1w}/ZXJ4f');
define('LOGGED_IN_KEY',    'H[187uhwLa?UVYd3w~}98im]mWUc(T9h%<.T-5f5u9QDU!(];<I:XcdFbK:;Pc ]');
define('NONCE_KEY',        'n-o-yy(eVsa6H)m(a{G_35(OAsQCgElIA+N|v^BUnF}Y^ye$#-B8x_C0OB!H>j[w');
define('AUTH_SALT',        '@XO%YWaSurP4K{eo(Prd9<h_f-<L2 +Lt.-q?ew9Qq8%l?1;^SM6aS9~1OK cML)');
define('SECURE_AUTH_SALT', '2q>tHS{0!0eTj4Pom+s+`@{:*QCqOp~k<-LTLX)Y}_9@}d)(Q^TS{iMr;qCIDLDA');
define('LOGGED_IN_SALT',   '>U`9pSSl4K4=,_RHJ/+2*i^ugxOiiBiwMkct+i>LDl1Pdsj,bJ~*@W1);8~0X~Et');
define('NONCE_SALT',       '+VX.E1!E7},bIKBC STv|/2H3!8ke}^jx:`+GB tt>b CH>j5}?7gd-{TqA8<p.=');
define('WP_ALLOW_REPAIR', true);

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );