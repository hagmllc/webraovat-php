<?php

/**
 * @Project NUKEVIET 3.1
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2011 VINADES.,JSC. All rights reserved
 * @Createdate 24-03-2011 20:08
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! defined( 'NV_IS_CRON' ) ) die( 'Stop!!!' );

// Ham xoa mot tin
if( ! nv_function_exists( 'nv_del_news_content' ) )
{
	function nv_del_news_content ( $id, $mname, $mdata, $del_img = 0 )
	{
		global $db;
		
		list( $id, $listcatid, $title, $homeimgfile, $homeimgthumb ) = $db->sql_fetchrow( $db->sql_query( "SELECT `id`, `listcatid`, `title`, `homeimgfile`, `homeimgthumb` FROM `" . NV_PREFIXLANG . "_" . $mdata . "_rows` WHERE `id`=" . intval( $id ) . "" ) );
		if ( $id > 0 )
		{
			// Xoa cac anh thum va block
			if ( $homeimgthumb != "" and $homeimgthumb != "|" )
			{
				$homeimgthumb_arr = explode( "|", $homeimgthumb );
				foreach ( $homeimgthumb_arr as $file )
				{
					if ( ! empty( $file ) and is_file( NV_ROOTDIR . '/' . NV_FILES_DIR . '/' . $mname . '/' . $file ) )
					{
						@nv_deletefile( NV_ROOTDIR . '/' . NV_FILES_DIR . '/' . $mname . '/' . $file );
					}
				}
			}
			
			// Xoa anh tai thu muc uploads neu co va duoc cau hinh xoa
			if( $del_img and ( $homeimgfile != "" ) )
			{
				if ( is_file( NV_UPLOADS_REAL_DIR . '/' . $mname . '/' . $homeimgfile ) )
				{
					@nv_deletefile( NV_UPLOADS_REAL_DIR . '/' . $mname . '/' . $homeimgfile );
				}
			}
			
			// Xoa tai cac bang chu de
			$array_catid = explode( ",", $listcatid );
			foreach ( $array_catid as $catid_i )
			{
				$catid_i = intval( $catid_i );
				if ( $catid_i > 0 )
				{
					$query = "DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_" . $catid_i . "` WHERE `id`=" . $id;
					$db->sql_query( $query );
					$db->sql_freeresult();
				}
			}
			
			// Xoa trong bang row
			$query = "DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_rows` WHERE `id`=" . $id;
			$db->sql_query( $query );
			
			// Xoa binh luan va bang cau hinh block tin
            $db->sql_query("DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_bodyhtml_" . ceil($id / 2000) . "` WHERE `id` = " . $id);
            $db->sql_query("DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_bodytext` WHERE `id` = " . $id);
            $db->sql_query("DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_comments` WHERE `id` = " . $id);
            $db->sql_query("DELETE FROM `" . NV_PREFIXLANG . "_" . $mdata . "_block` WHERE `id` = " . $id);
			
			$db->sql_freeresult();			
		}
		
		return true;
	}
}

// Cront xoa cac tin cu
function cron_auto_del_news ( $mname, $mdata, $del_img = 0, $timedell = 155520000, $listcat = "" )
{
    global $db;

	// $mname = ten module vi du tin-tuc, news
	// $mdata = ten cua bang CSDL vi du tin_tuc, news
	// $del_img = co xoa hinh anh hay khong
	// $timedell = so giay se xoa ban tin, mac dinh la mot thang
	
	if( ! empty( $mname ) and ! empty( $mdata ) )
	
	$time_out = NV_CURRENTTIME - $timedell;
	
	if( empty( $listcat ) )
	{
		$sql = "SELECT `id` FROM `" . NV_PREFIXLANG . "_" . $mdata . "_rows` WHERE `publtime`<=" . $time_out;
		$result = $db->sql_query( $sql );
		
		while( list( $id ) = $db->sql_fetchrow( $result ) )
		{
			nv_del_news_content ( $id, $mname, $mdata, $del_img );
		}
	}
	else
	{
		$_table = array_filter( array_unique( explode( "|", $listcat ) ) );
		foreach( $_table as $_c )
		{
			$sql = "SELECT `id` FROM `" . NV_PREFIXLANG . "_" . $mdata . "_" . $_c . "` WHERE `publtime`<=" . $time_out;
			$result = $db->sql_query( $sql );
			
			while( list( $id ) = $db->sql_fetchrow( $result ) )
			{
				nv_del_news_content ( $id, $mname, $mdata, $del_img );
			}
		
		}
	}
	
	return true;
}

?>