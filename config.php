<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2016 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 28 May 2016 07:42:25 GMT
 */

if ( ! defined( 'NV_MAINFILE' ) )
{
	die( 'Stop!!!' );
}

$db_config['dbhost'] = '127.0.0.1';
$db_config['dbport'] = '';
$db_config['dbname'] = 'nukeraovat';
$db_config['dbsystem'] = 'nukeraovat';
$db_config['dbuname'] = 'root';
$db_config['dbpass'] = '';
$db_config['dbtype'] = 'mysql';
$db_config['collation'] = 'utf8mb4_unicode_ci';
$db_config['charset'] = 'utf8mb4';
$db_config['persistent'] = false;
$db_config['prefix'] = 'nv4';

$global_config['site_domain'] = '';
$global_config['name_show'] = 0;
$global_config['idsite'] = 0;
$global_config['sitekey'] = '312aab43629157ab56ec834ca770b314';// Do not change sitekey!
$global_config['hashprefix'] = '{SSHA}';
$global_config['cached'] = 'files';
$global_config['extension_setup'] = 3; // 0: No, 1: Upload, 2: NukeViet Store, 3: Upload + NukeViet Store