<?php
/**
 * @Project NUKEVIET
 * @Author Thaotrinh member forum nukeviet  
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );
if ( ! nv_function_exists( 'plugin_sticky_navbar' ) )
{
    function nv_block_config_plugin_sticky_navbar ( $module, $data_block, $lang_block )
    {		 
		$select_idclass1= ($data_block['idclass']=='id')? 'selected="selected"': '';$select_idclass2= ($data_block['idclass']=='class')? 'selected="selected"': '';$select_style1= ($data_block['style']=='top')? 'selected="selected"': '';$select_style2= ($data_block['style']=='bottom')? 'selected="selected"': ''; $html = ""; $html .= '<tr><td colspan="2" class="infoGlobal"> <style>/*CSS FrameWork globalTj v1.0 :D*/.infoGlobal { cursor: pointer; font-weight:bold;background: #eceeef!important;; text-shadow: 1px 1px 2px #FFF;}.infoGlobal .name:hover {color:#ff0000;}#infoTj {display:none;position: fixed;cursor: default;width: 100%;height: 100%;top: 0;left: 0;right: 0;bottom: 0;background: rgba(38, 68, 42, 0.61);z-index: 999;text-shadow: none;color: white;}#infoTj .contentTj{width: auto;height: auto;position: relative;margin: auto;border: 5px solid #ccc;padding: 15px;cursor: help;background: rgb(97, 129, 99);}#infoTj .contentTj a {color:#fdfdfd; text-decoration:none;}#infoTj .contentTj a:hover {color:#00ff00;}.buttonSH {cursor: pointer;background: rgb(204, 204, 204);width: 25px;height: 25px;line-height: 25px;text-align: center;border-radius: 50%;text-shadow: 1px 1px 2px #000;position: absolute;top: -15px;right: 15px;} </style> <div class="name" onclick="document.getElementById(\'infoTj\').style.display=\'flex\';">Sticky navbar </div><div id="infoTj"><div class="contentTj"><div class="buttonSH" onclick="document.getElementById(\'infoTj\').style.display = \'none\'; ">X</div><ul><li>Project NUKEVIET 4.x</li><li>Sticky navbar</li><li>Author thaotrinh </li><li>Createdate 22/01/2015</li><li>License GNU/GPL version 2 or any later version</li><li>Using jquery</li> </ul> </div> </div></td></tr><tr><td>' . $lang_block['block'] . '</td><td><select name="config_idclass" class="form-control w200 pull-left"> <option value="id" '.$select_idclass1.'> id </option> <option value="class" '.$select_idclass2.' > class </option> </select><input type="text" name="config_block" value="' . $data_block['block'] . '" class="form-control w300" /></td></tr><tr><td>' . $lang_block['style'] . '</td><td><select name="config_style" class="form-control w300 pull-left" > <option value="top" '.$select_style1.' > ' . $lang_block['style1'] . ' </option> <option value="bottom" '.$select_style2.' > ' . $lang_block['style2'] . ' </option> </select><input type="number" name="config_distance" value="' . $data_block['distance'] . '" class="form-control w200"/> </td></tr><td> CSS </td><td> <textarea name="config_css" class="form-control w500">' . $data_block['css'] . '</textarea></td></tr>';
        return $html;
    }
    function nv_block_config_plugin_sticky_navbar_submit ( $module, $lang_block )
    {
		global $nv_Request; $return = array(); $return['error'] = array(); $return['config'] = array(); $return['config']['idclass'] = $nv_Request->get_string( 'config_idclass', 'post', '' ); $return['config']['block'] = $nv_Request->get_string( 'config_block', 'post', '' ); $return['config']['style'] = $nv_Request->get_string( 'config_style', 'post', '' ); $return['config']['distance'] = $nv_Request->get_string( 'config_distance', 'post', '' ); $return['config']['css'] = $nv_Request->get_string( 'config_css', 'post', '' ); 
        return $return;
    }
    function plugin_sticky_navbar ( $block_config )
    {
		$x='';$idclass=$block_config['idclass'];$block=$block_config['block'];$style=$block_config['style'];$distance=$block_config['distance'];$css=$block_config['css'];if($idclass == 'id') {$x= '#'.$block;} else {$x= '.'.$block;} $content =''; $content .='<style>.stickyTj {position: fixed;'.$style.': '.$distance.'px;z-index: 1984;} '.$css.' </style>';$content .= '<script> $(document).ready(function() {var stickyTjNavTop = $("'.$x.'").offset().top;var stickyTjNav = function(){var scrollTop = $(window).scrollTop(); if (scrollTop > stickyTjNavTop) { $("'.$x.'").addClass("stickyTj");} else {$("'.$x.'").removeClass("stickyTj"); }};stickyTjNav(); $(window).scroll(function() {stickyTjNav();});});</script>';
		return $content;
    }
}
if ( defined( 'NV_SYSTEM' ) )
{
    $content = plugin_sticky_navbar( $block_config );
}
?>