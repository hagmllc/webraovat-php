<!-- BEGIN: main -->
<div class="padding">
<ul class="company_info" itemscope itemtype="http://schema.org/LocalBusiness">
<!-- BEGIN: company_name --><li class="company_name"><span itemprop="name">{DATA.company_name}</span><!-- BEGIN: company_sortname --> (<span itemprop="alternateName">{DATA.company_sortname}</span>)<!-- END: company_sortname --></li><!-- END: company_name -->
<!-- BEGIN: company_regcode --><li><em class="fa fa-file-text"></em><span>{LICENSE}</span></li><!-- END: company_regcode -->
<!-- BEGIN: company_responsibility --><li><em class="fa fa-flag"></em><span>{LANG.company_responsibility}: <span itemprop="founder" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{DATA.company_responsibility}</span></span></span></li><!-- END: company_responsibility -->
<!-- BEGIN: company_address --><li><a<!-- BEGIN: company_map_triger --> class="pointer" id="company-address"<!-- END: company_map_triger -->><em class="fa fa-map-marker"></em><span>{LANG.company_address}: <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality">{DATA.company_address}</span></span></span></a></li><!-- END: company_address -->
<!-- BEGIN: company_phone --><li><em class="fa fa-phone"></em><span>{LANG.company_phone}: <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href --><span itemprop="telephone">{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --></span></li><!-- END: company_phone -->
<!-- BEGIN: company_fax --><li><em class="fa fa-fax"></em><span>{LANG.company_fax}: <span itemprop="faxNumber">{DATA.company_fax}</span></span></li><!-- END: company_fax -->
<!-- BEGIN: company_email --><li><em class="fa fa-envelope"></em><span>{LANG.company_email}: <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="mailto:{EMAIL}"><span itemprop="email">{EMAIL}</span></a><!-- END: item --></span></li><!-- END: company_email -->
<!-- BEGIN: company_website --><li><em class="fa fa-globe"></em><span>{LANG.company_website}: <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="{WEBSITE}" target="_blank"><span itemprop="url">{WEBSITE}</span></a><!-- END: item --></span></li><!-- END: company_website -->
</ul>
</div>
<!-- BEGIN: company_map_modal -->
<!-- START FORFOOTER -->
<div class="modal fade" id="company-map-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
				<div id="company-map" data-clat="{DATA.company_mapcenterlat}" data-clng="{DATA.company_mapcenterlng}" data-lat="{DATA.company_maplat}" data-lng="{DATA.company_maplng}" data-zoom="{DATA.company_mapzoom}"></div>
            </div>
        </div>
    </div>
</div>
<!-- END FORFOOTER -->
<!-- END: company_map_modal -->
<!-- END: main -->