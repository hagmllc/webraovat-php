<!-- BEGIN: main -->
<div class="block"></div> 
<h2 class="blockhead">TIN VIP</h2> 
<div class="blockbody"></div>
	<table width="100%" cellspacing="0" border="0"> 
<tr> 

<td width="60%" align="center" class="blocksubhead">Tiêu Đề</td> 
<td width="10%" align="center" class="blocksubhead"><em class="fa fa-eye">&nbsp;</em></td>
<td width="20%" align="center" class="blocksubhead">Nơi Đăng</td>  
</tr> 
</table>
	
	<div class="table-responsive">
    	<table class="table table-bordered table-striped">
    		
    		
    		<tbody>
				<!-- BEGIN: loop -->
    			<tr>
    				
    				<td width="60%"><li><a {TITLE} class="show" href="{ROW.link}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="block_tooltip">{ROW.title}</a></td>
    				<td width="10%">{ROW.hitstotal}</td>
					<td width="20%">{ROW.author}</td>
    			</tr>
				
				<!-- END: loop -->
    		</tbody>
    
    	</table>
	</div>
	

<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->
<!-- END: main -->