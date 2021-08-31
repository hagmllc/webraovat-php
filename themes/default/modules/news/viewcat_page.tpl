<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="news_column">
	<div class="alert alert-info clearfix">
		<h1>{CONTENT.title}</h1>
		<!-- BEGIN: image -->
		<img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
		<!-- END: image -->
		<p>{CONTENT.description}</p>
	</div>
</div>
<!-- END: viewdescription -->
<!-- BEGIN: viewcatloop -->
<div class="news_column">
	
	<div class="block"></div> 
<h2 class="blockhead">Những bài viết mới nhất</h2> 
<div class="blockbody"></div>
	<table width="100%" cellspacing="0" border="0"> 
<tr> 
<td width="10%" align="left" class="blocksubhead"><em class="fa fa-clock-o">&nbsp;</em></td> 
<td width="60%" align="center" class="blocksubhead">Tiêu Đề</td> 
<td width="10%" align="center" class="blocksubhead"><em class="fa fa-eye">&nbsp;</em></td>
<td width="20%" align="center" class="blocksubhead">Nơi Đăng</td>  
</tr> 
</table> 

<!-- BEGIN: featured -->
		 <div class="table-responsive">
    	<table class="table table-bordered table-striped">
    		
    		
    		<tbody>
    	
    			<tr>
    				<td width="10%">{CONTENT.publtime}</td>
    				<td width="60%"><a href="{CONTENT.link}" title="{CONTENT.title}">{CONTENT.title}</a><!-- BEGIN: newday --><span class="icon_new">&nbsp;</span><!-- END: newday -->
			<!-- BEGIN: adminlink -->
					<p>
					{ADMINLINK}
					</p>
			<!-- END: adminlink -->
					</td>
    				<td width="10%">{CONTENT.hitstotal}</td>
					<td width="20%">{CONTENT.author}</td>
    			</tr>
				
    		
    		</tbody>
    
    	</table>
    </div>
	<!-- END: featured -->
	
	 <div class="table-responsive">
    	<table class="table table-bordered table-striped">
    		
    		
    		<tbody>
    			<!-- BEGIN: news -->
    			<tr>
    				<td width="10%">{CONTENT.publtime}</td>
    				<td width="60%"><a href="{CONTENT.link}" title="{CONTENT.title}">{CONTENT.title}</a><!-- BEGIN: newday --><span class="icon_new">&nbsp;</span><!-- END: newday -->
			<!-- BEGIN: adminlink -->
					<p>
					{ADMINLINK}
					</p>
			<!-- END: adminlink -->
					</td>
    				<td width="10%">{CONTENT.hitstotal}</td>
					<td width="20%">{CONTENT.author}</td>
    			</tr>
				
    			<!-- END: news -->
    		</tbody>
    
    	</table>
    </div>
	

	
</div>
<!-- END: viewcatloop -->

<!-- BEGIN: related -->
<hr/>
<h4>{ORTHERNEWS}</h4>
<ul class="related">
	<!-- BEGIN: loop -->
	<li>
		<em class="fa fa-angle-right">&nbsp;</em><a href="{RELATED.link}" title="{RELATED.title}">{RELATED.title} <em>({RELATED.publtime}) </em></a>
		<!-- BEGIN: newday -->
		<span class="icon_new">&nbsp;</span>
		<!-- END: newday -->
	</li>
	<!-- END: loop -->
</ul>
<!-- END: related -->
<!-- BEGIN: generate_page -->
<div class="clearfix"></div>
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<!-- END: main -->