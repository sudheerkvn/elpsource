<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
        <div class="container-fluid">
        	<div class="pull-right">
            	<button onclick="validate_form('1');" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
            	<button onclick="validate_form('0');" form="form-product" data-toggle="tooltip" title="<?php echo $button_save_continue; ?>" class="btn btn-primary" style="background:#F66"><i class="fa fa-save"></i></button>
            	<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
            </div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
  	</div>
  	<div class="container-fluid">
    	<?php if ($error_warning) { ?>
    	<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    		<button type="button" class="close" data-dismiss="alert">&times;</button>
    	</div>
    	<?php } ?>
    	<div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general_options; ?></a></li>
                    <li><a href="#tab-font" data-toggle="tab"><?php echo $tab_font; ?></a></li>
                    <li><a href="#tab-css" data-toggle="tab"><?php echo $tab_css; ?></a></li>
                    <li><a href="#tab-table" data-toggle="tab"><?php echo $tab_table; ?></a></li>
                </ul>
            
                <div class="tab-content">
                    <!--Tab General-->
                    <div class="tab-pane active" id="tab-general">
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-module"><?php echo $entry_switch_module; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[status]" id="entry-switch-module" class="form-control">
                                <?php if ($productaffilate['status']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-order"><?php echo $entry_switch_order; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_order]" id="entry-switch-order" class="form-control">
                                <?php if ($productaffilate['switch_order']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-cheap-shopbutton"><?php echo $entry_switch_cheap_shopbutton; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_cheap_shopbutton]" id="entry-switch-cheap-shopbutton" class="form-control">
                                <?php if ($productaffilate['switch_cheap_shopbutton']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-price-category"><?php echo $entry_switch_price_category; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_price_category]" id="entry-switch-price-category" class="form-control">
                                <?php if ($productaffilate['switch_price_category']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-price-module"><?php echo $entry_switch_price_module; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_price_module]" id="entry-switch-price-module" class="form-control">
                                <?php if ($productaffilate['switch_price_module']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-switch-price-product"><?php echo $entry_switch_price_product; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_price_product]" id="entry-switch-price-product" class="form-control">
                                <?php if ($productaffilate['switch_price_product']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-show-cheap-price"><?php echo $entry_show_cheap_price; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[switch_cheap_price]" id="entry-show-cheap-price" class="form-control">
                                <?php if ($productaffilate['switch_cheap_price']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="entry-cheapest-button-text"><?php echo $entry_cheapest_button_text;?></label>
                            <div class="col-sm-10">
                              <input type="text" name="productaffilate[cheapest_button_text]" value="<?php if(isset($productaffilate['cheapest_button_text'])) {echo $productaffilate['cheapest_button_text'];} ?>" placeholder="" id="entry-cheapest-button-text" class="form-control" />***<br /><i style="color:#999">Default value: <b style="color:#666">Goedkoopste winkel</b></i>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="entry-tab-text"><?php echo $entry_tab_text;?></label>
                            <div class="col-sm-10">
                              <input type="text" name="productaffilate[tab_text]" value="<?php if(isset($productaffilate['tab_text'])) {echo $productaffilate['tab_text'];} ?>" placeholder="" id="entry-tab-text" class="form-control" />***<br /><i style="color:#999">Default value: <b style="color:#666">Prijzen</b></i>
                            </div>
                        </div>
                    </div>
                    
                    <!--Tab Font-->
                    <div class="tab-pane" id="tab-font">
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-default-fonts"><?php echo $text_default_fonts; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[affilate_font_default]" id="entry-default-fonts" class="form-control">
                                <?php if ($productaffilate['affilate_font_default']== "") { ?>
                                  <option value="" selected="selected">--None--</option>
                                  <?php } else {?>
                                  <option value="">--None--</option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Palatino Linotype', 'Book Antiqua', Palatino, serif") { ?>
                                  <option value="'Palatino Linotype', 'Book Antiqua', Palatino, serif" selected="selected">
                                  <?php echo $text_font_bookantiqua; ?></option>
                                  <?php } else { ?>
                                  <option value="'Palatino Linotype', 'Book Antiqua', Palatino, serif"><?php echo $text_font_bookantiqua; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="Georgia, serif") { ?>
                                  <option value="Georgia, serif" selected="selected"><?php echo $text_font_georgia; ?></option>
                                  <?php } else { ?>
                                  <option value="Georgia, serif"><?php echo $text_font_georgia; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Times New Roman', Times, serif") { ?>
                                  <option value="'Times New Roman', Times, serif" selected="selected"><?php echo $text_font_timesnewroman; ?></option>
                                  <?php } else { ?>
                                  <option value="'Times New Roman', Times, serif"><?php echo $text_font_timesnewroman; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="Arial, Helvetica, sans-serif") { ?>
                                  <option value="Arial, Helvetica, sans-serif" selected="selected"><?php echo $text_font_arialhelvetica; ?></option>
                                  <?php } else { ?>
                                  <option value="Arial, Helvetica, sans-serif"><?php echo $text_font_arialhelvetica; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Arial Black', Gadget, sans-serif") { ?>
                                  <option value="'Arial Black', Gadget, sans-serif" selected="selected"><?php echo $text_font_arialblack; ?></option>
                                  <?php } else { ?>
                                  <option value="'Arial Black', Gadget, sans-serif"><?php echo $text_font_arialblack; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Comic Sans MS', cursive, sans-serif") { ?>
                                  <option value="'Comic Sans MS', cursive, sans-serif" selected="selected"><?php echo $text_font_comicsans; ?></option>
                                  <?php } else { ?>
                                  <option value="'Comic Sans MS', cursive, sans-serif"><?php echo $text_font_comicsans; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="Impact, Charcoal, sans-serif") { ?>
                                  <option value="Impact, Charcoal, sans-serif" selected="selected"><?php echo $text_font_charcoal; ?></option>
                                  <?php } else { ?>
                                  <option value="Impact, Charcoal, sans-serif"><?php echo $text_font_charcoal; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Lucida Sans Unicode', 'Lucida Grande', sans-serif") { ?>
                                  <option value="'Lucida Sans Unicode', 'Lucida Grande', sans-serif" selected="selected"><?php echo $text_font_lucidasans; ?></option>
                                  <?php } else { ?>
                                  <option value="'Lucida Sans Unicode', 'Lucida Grande', sans-serif"><?php echo $text_font_lucidasans; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="Tahoma, Geneva, sans-serif") { ?>
                                  <option value="Tahoma, Geneva, sans-serif" selected="selected"><?php echo $text_font_tahoma; ?></option>
                                  <?php } else { ?>
                                  <option value="Tahoma, Geneva, sans-serif"><?php echo $text_font_lucidasans; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Trebuchet MS', Helvetica, sans-serif") { ?>
                                  <option value="'Trebuchet MS', Helvetica, sans-serif" selected="selected"><?php echo $text_font_trebuchetms; ?></option>
                                  <?php } else { ?>
                                  <option value="'Trebuchet MS', Helvetica, sans-serif"><?php echo $text_font_trebuchetms; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="Verdana, Geneva, sans-serif") { ?>
                                  <option value="Verdana, Geneva, sans-serif" selected="selected"><?php echo $text_font_verdana; ?></option>
                                  <?php } else { ?>
                                  <option value="Verdana, Geneva, sans-serif"><?php echo $text_font_verdana; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Courier New', Courier, monospace") { ?>
                                  <option value="'Courier New', Courier, monospace" selected="selected"><?php echo $text_font_couriernew; ?></option>
                                  <?php } else { ?>
                                  <option value="'Courier New', Courier, monospace"><?php echo $text_font_couriernew; ?></option>
                                  <?php } ?>
                                  <?php if ($productaffilate['affilate_font_default']=="'Lucida Console', Monaco, monospace") { ?>
                                  <option value="'Lucida Console', Monaco, monospace" selected="selected"><?php echo $text_font_lucida; ?></option>
                                  <?php } else { ?>
                                  <option value="'Lucida Console', Monaco, monospace"><?php echo $text_font_lucida; ?></option>
                                  <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="entry-enable-fonts"><?php echo $text_enable_fonts; ?></label>
                            <div class="col-sm-10">
                              <select name="productaffilate[affilate_enable_fonts]" id="showhide_googlefonts" class="form-control">
                                <?php if($productaffilate['affilate_enable_fonts']=='1') {?>
                                    <option value="1" selected="selected">Yes</option>
                                    <?php } else { ?>
                                    <option value="1">Yes</option>
                                    <?php } ?>
                                    <?php if($productaffilate['affilate_enable_fonts']=='0') {?>
                                    <option value="0" selected="selected">No</option>
                                    <?php } else { ?>
                                    <option value="0">No</option>
                                    <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="form-group required" id="google_fonts">
                            <label class="col-sm-2 control-label" for="entry-font-name"><?php echo $text_font_name;?></label>
                            <div class="col-sm-10">
                              <input type="text" name="productaffilate[affilate_font_name]" value="<?php if(isset($productaffilate['affilate_font_name'])) {echo $productaffilate['affilate_font_name'];} ?>" placeholder="" id="entry-font-name" class="form-control" />***&nbsp;<i style="color:#999">Example: <b style="color:#666">font-family: 'Roboto', sans-serif;</b></i>
                            </div>
                        </div>
                        <div class="form-group required" id="google_fontss">
                            <label class="col-sm-2 control-label" for="entry-font-url"><?php echo $text_font_url;?></label>
                            <div class="col-sm-10">
                              <input type="text" name="productaffilate[affilate_font_url]" value="<?php if(isset($productaffilate['affilate_font_url'])) {echo $productaffilate['affilate_font_url'];} ?>" placeholder="" id="entry-font-url" class="form-control" />***<i style="color:#999">Example: link href="<b style="color:#666">http://fonts.googleapis.com/css?family=Open+Sans:400,700</b>" rel="stylesheet" type="text/css"</i>
                            </div>
                        </div>
                    </div>
                    <!--Tab CSS-->
                    <div class="tab-pane" id="tab-css">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="entry-affilate-css"><?php echo $text_affilate_css;?></label>
                            <div class="col-sm-10">
                              <textarea name="productaffilate[css]" style="height:200px; width:600px; margin-left:10px;"><?php if(isset($productaffilate['css'])) {echo $productaffilate['css'];} ?></textarea><br />&nbsp;&nbsp;&nbsp;
                        ***<i style="color:#999">Example: <b style="color:#333">.class {color:#9F0; background-color:#990}</b></i>
                            </div>
                        </div>
                    </div>
                    <!--Tab table-->
                    <div class="tab-pane" id="tab-table">
                      <div class="table-responsive">
                        <table id="column" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <td class="text-left"><?php echo $entry_title; ?></td>
                                    <td class="text-left"><?php echo $entry_type; ?></td>
                                    <td class="text-left"><?php echo $entry_width; ?></td>
                                    <td class="text-right"><?php echo $entry_sort_order; ?></td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">
                                        <input type="text" name="productaffilate_fix[price][title]" value="<?php echo $productaffilate_fix['price']['title']; ?>" class="form-control" />***<br/><i style="color:#999">Default value: <b style="color:#333">Price</b></i>
                                        <input type="hidden" name="productaffilate_fix[price][id]" value="1" />  
                                    </td>
                                    <td class="text-left">
                                        <input type="hidden" name="productaffilate_fix[price][type]" value="price" class="form-control" />
                                    </td>
                                    <td class="text-left">
                                        <input type="text" name="productaffilate_fix[price][width]" value="<?php echo $productaffilate_fix['price']['width']; ?>" class="pf_width" />
                                    </td>
                                    <td class="text-right">
                                        <input type="text" name="productaffilate_fix[price][sort_order]" value="<?php echo $productaffilate_fix['price']['sort_order']; ?>" class="pf_sort_order" /> 
                                    </td>
                                    <td class="text-left">&nbsp;</td>
                                </tr>
                            </tbody>
                            <tbody>
                                <tr>
                                    <td class="text-left">
                                        <input type="text" name="productaffilate_fix[store_ids][title]" value="<?php echo $productaffilate_fix['store_ids']['title']; ?>" class="form-control" />***<br/><i style="color:#999">Default value: <b style="color:#333">Stores</b></i>
                                        <input type="hidden" name="productaffilate_fix[store_ids][id]" value="2" />
                                    </td>
                                    <td class="text-left">&nbsp;<input type="hidden" name="productaffilate_fix[store_ids][type]" value="stores" class="form-control" /></td>
                                    <td class="text-left">&nbsp;</td>
                                    <td class="text-right">
                                        <input type="text" name="productaffilate_fix[store_ids][sort_order]" value="<?php echo $productaffilate_fix['store_ids']['sort_order']; ?>" class="pf_sort_order" />
                                    </td>
                                    <td class="text-left">&nbsp;</td>
                                </tr>
                            </tbody>
                            <?php $column_row = 0; ?>
                            <?php if (isset($productaffilate_vars)) { ?>
                            <?php foreach ($productaffilate_vars as $productaffilate_var) { ?>
                            <tbody id="column-row<?php echo $column_row; ?>">
                                <tr>
                                    <td class="text-left">
                                        <input type="text" name="productaffilate_var[<?php echo $column_row; ?>][title]" value="<?php echo $productaffilate_var['title']; ?>" id="column-title<?php echo $column_row; ?>" class="form-control" />
                                        <input type="hidden" name="productaffilate_var[<?php echo $column_row; ?>][id]" value="<?php echo $productaffilate_var['id']; ?>" />   
                                    </td>
                                    <td class="text-left">
                                        <select name="productaffilate_var[<?php echo $column_row; ?>][type]" id="column-type<?php echo $column_row; ?>" class="form-control">
                                          <?php if ($productaffilate_var['type']=='image') { ?>
                                          <option value="image" selected="selected"><?php echo $text_image; ?></option>
                                          <?php } else { ?>
                                          <option value="image"><?php echo $text_image; ?></option>
                                          <?php } ?>
                                          <?php if ($productaffilate_var['type']=='texxt') { ?>
                                          <option value="texxt" selected="selected"><?php echo $text_texxt; ?></option>
                                          <?php } else { ?>
                                          <option value="texxt"><?php echo $text_texxt; ?></option>
                                          <?php } ?>
                                          <?php if ($productaffilate_var['type']=='url') { ?>
                                          <option value="url" selected="selected"><?php echo $text_url; ?></option>
                                          <?php } else { ?>
                                          <option value="url"><?php echo $text_url; ?></option>
                                          <?php } ?>
                                        </select>
                                    </td>
                                    <td class="text-left">
                                        <input type="text" name="productaffilate_var[<?php echo $column_row; ?>][width]" value="<?php echo $productaffilate_var['width']; ?>" id="column-width<?php echo $column_row; ?>" class="pf_width" />
                                    </td>
                                    <td class="text-right">
                                        <input type="text" name="productaffilate_var[<?php echo $column_row; ?>][sort_order]" value="<?php echo $productaffilate_var['sort_order']; ?>" id="column-sort-order<?php echo $column_row; ?>" class="pf_sort_order" />
                                    </td>
                                    <td class="text-left">
                                        <button type="button" onclick="$('#column-row<?php echo $column_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button>
                                    </td>
                                </tr>
                            </tbody>
                            <?php ++$column_row; ?>
                            <?php } ?>
                            <?php } ?>
                            <tfoot>
                                <tr>
                                    <td colspan="4"></td>
                                    <td class="text-left"><button type="button" onclick="addcolumn();" data-toggle="tooltip" title="<?php echo $button_add_column; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button>
                                </tr>
                            </tfoot>
                        </table>
                    </div> 
                    <input type="hidden" name="redirect" id="redirect" value="1" />
                </div>
             </div><!--div tab content-->
             </form>
         </div><!--div panel body-->
     </div><!--div panel default-->
     </div><!-- div container fluid-->
<script type="text/javascript"><!--
$(document).ready(function(){
	$('#showhide_googlefonts').bind('change', function(){
		val = $(this).val();
		if(val == 1) {
			$('#google_fonts').show();
			$('#google_fontss').show();
		} else {
			$('#google_fonts').hide();
			$('#google_fontss').hide();
		}
	});
	$('#showhide_googlefonts').trigger('change');
});
//--></script>
<script type="text/javascript"><!--
var column_row = <?php echo $column_row; ?>;
var column_id = <?php echo ++$maxvalue; ?>;
function addcolumn() {	
	html  = '<tbody id="column-row' + column_row + '">';
	html += '  <tr>'; 
   	html += '	 <td class="text-left"><input type="text" name="productaffilate_var[' + column_row + '][title]" value="" id="column-title' + column_row + '" class="form-control" /><input type="hidden" name="productaffilate_var[' + column_row + '][id]" value="' + column_id + '" /></td>';
	html += '    <td class="text-left">';
	html += '    	<select name="productaffilate_var[' + column_row + '][type]" id="column-type' + column_row + '" class="form-control">';
	html += '    		<option value="image"><?php echo $text_image; ?></option>';
	html += '    		<option value="texxt"><?php echo $text_texxt; ?></option>';
	html += '    		<option value="url"><?php echo $text_url; ?></option>';
	html += '    	</select>';
    html += '    </td>';
	html += '	 <td class="text-left">';
	html += '    	<input type="text" name="productaffilate_var[' + column_row + '][width]" value="" id="column-width' + column_row + '" class="pf_width" />';
	html += '	 </td>';
	html += '    <td class="text-right">';
	html += '    	<input type="text" name="productaffilate_var[' + column_row + '][sort_order]" value="" id="column-sort-order' + column_row + '" class="pf_sort_order" />';
	html += '    </td>';
	html += '    <td class="text-left">';
	html += '		<button type="button" onclick="$(\'#column-row' + column_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button>';
	html += '	</td>';
	html += '  </tr>';	
    html += '</tbody>';
	
	$('#column tfoot').before(html);
	
	column_row++;
	column_id++;
}

function validate_form(redirect) {
	$('.pf_error').remove();
	submit_form = true;
	$('.pf_sort_order').each(function(){
		val = parseInt($(this).val());
		val = Number(/^[0-9]+$/.exec(val));

		if(val <= 0) {
			$(this).after('<p class="pf_error">Please provide integer value</p>');
			submit_form = false;
		}
	});
	if(redirect == 1) { $('#redirect').val(1); } else { $('#redirect').val(0); }
	if(submit_form) { $('#form').submit(); } else { $('#tab_table_link').trigger('click'); return false; }
}
//--></script> 
<style type="text/css">.pf_error { color:#F00; font-size: 11px; }</style>
</div>
<?php echo $footer; ?>