<?php
class ControllerModuleProductaffilate extends Controller {
	private $error = array();
	
	public function index() {   
		$this->language->load('module/productaffilate');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		
		$this->load->model('catalog/productaffilate');
		//checking update
		$this->model_catalog_productaffilate->checkupdate();

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('productaffilate', $this->request->post);		
				
			$this->session->data['success'] = $this->language->get('text_success');
			if ($this->request->post['redirect'] == 0){			
				$this->response->redirect($this->url->link('module/productaffilate', 'token=' . $this->session->data['token'], 'SSL'));
			}else
			{
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}
		
		$data['heading_title'] = $this->language->get('heading_title');
		$data['button_save_continue'] = $this->language->get('button_save_continue');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_enable_order'] = $this->language->get('text_enable_order');
		$data['text_disable_order'] = $this->language->get('text_disable_order');
		$data['text_content_top'] = $this->language->get('text_content_top');
		$data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$data['text_column_left'] = $this->language->get('text_column_left');
		$data['text_column_right'] = $this->language->get('text_column_right');
		$data['text_enable_cheap_shopbutton'] = $this->language->get('text_enable_cheap_shopbutton');
		$data['text_disable_cheap_shopbutton'] = $this->language->get('text_disable_cheap_shopbutton');
		$data['text_enable_fonts'] = $this->language->get('text_enable_fonts');
		$data['text_font_name'] = $this->language->get('text_font_name');
		$data['text_font_url'] = $this->language->get('text_font_url');
		$data['text_affilate_css'] = $this->language->get('text_affilate_css');
		$data['text_enable_fonts'] = $this->language->get('text_enable_fonts');
		$data['text_default_fonts'] = $this->language->get('text_default_fonts');
		$data['text_font_bookantiqua'] = $this->language->get('text_font_bookantiqua');
		$data['text_font_georgia'] = $this->language->get('text_font_georgia');
		$data['text_font_timesnewroman'] = $this->language->get('text_font_timesnewroman');
		$data['text_font_arialhelvetica'] = $this->language->get('text_font_arialhelvetica');
		$data['text_font_arialblack'] = $this->language->get('text_font_arialblack');
		$data['text_font_comicsans'] = $this->language->get('text_font_comicsans');
		$data['text_font_charcoal'] = $this->language->get('text_font_charcoal');
		$data['text_font_lucidasans'] = $this->language->get('text_font_lucidasans');
		$data['text_font_tahoma'] = $this->language->get('text_font_tahoma');
		$data['text_font_trebuchetms'] = $this->language->get('text_font_trebuchetms');
		$data['text_font_verdana'] = $this->language->get('text_font_verdana');
		$data['text_font_couriernew'] = $this->language->get('text_font_couriernew');
		$data['text_font_lucida'] = $this->language->get('text_font_lucida');
		$data['text_image'] = $this->language->get('text_image');
		$data['text_texxt'] = $this->language->get('text_texxt');
		$data['text_url'] = $this->language->get('text_url');
		
		$data['help_switch_module'] = $this->language->get('help_switch_module');
		$data['help_switch_order'] = $this->language->get('help_switch_order');
		$data['help_switch_cheap_shopbutton'] = $this->language->get('help_switch_cheap_shopbutton');
		$data['help_switch_price_category'] = $this->language->get('help_switch_price_category');
		$data['help_switch_price_product'] = $this->language->get('help_switch_price_product');
		$data['help_show_cheap_price'] = $this->language->get('help_show_cheap_price');

		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_switch_module'] = $this->language->get('entry_switch_module');
		$data['entry_switch_order'] = $this->language->get('entry_switch_order');
		$data['entry_switch_cheap_shopbutton'] = $this->language->get('entry_switch_cheap_shopbutton');
		$data['entry_switch_price_category'] = $this->language->get('entry_switch_price_category');
		$data['entry_switch_price_module'] = $this->language->get('entry_switch_price_module');
		$data['entry_switch_price_product'] = $this->language->get('entry_switch_price_product');
		$data['entry_show_cheap_price'] = $this->language->get('entry_show_cheap_price');
		$data['entry_column_no'] = $this->language->get('entry_column_no');
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_type'] = $this->language->get('entry_type');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_cheapest_button_text'] = $this->language->get('entry_cheapest_button_text');
		$data['entry_tab_text'] = $this->language->get('entry_tab_text');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_save_continue'] = $this->language->get('button_save_continue');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_remove'] = $this->language->get('button_remove');
		
		$data['tab_general_options'] = $this->language->get('tab_general_options');
		$data['tab_font'] = $this->language->get('tab_font');
		$data['tab_css'] = $this->language->get('tab_css');
		$data['tab_table'] = $this->language->get('tab_table');
		$data['button_add_column'] = $this->language->get('button_add_column');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/productaffilate', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link('module/productaffilate', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['productaffilate'] = array();
		
		if (isset($this->request->post['productaffilate'])) {
			$data['productaffilate'] = $this->request->post['productaffilate'];
		} elseif ($this->config->has('productaffilate')) {
			$data['productaffilate'] = $this->config->get('productaffilate');
		}
		
		if (isset($this->request->post['productaffilate_var'])) {
			$data['productaffilate_vars'] = $this->request->post['productaffilate_var'];
		} elseif ($this->config->has('productaffilate_var')) {
			$data['productaffilate_vars'] = $this->config->get('productaffilate_var');
		} else {
			$data['productaffilate_vars'] = array(	'3'			=> array (
																			'title'		=> 'shop',
																			'id'		   => 3,
																			'type'		 => 'image',
																			'sort_order'   => 1,
																			'width'		=> 10
																		),
														'4'			=> array (
																			'title'		=> 'qmark',
																			'id'		   => 4,
																			'type'		 => 'image',
																			'sort_order'   => 2,
																			'width'		=> 10
																		),
														'5'			=> array (
																			'title'		=> 'description',
																			'id'		   => 5,
																			'type'		 => 'texxt',
																			'sort_order'   => 5,
																			'width'		=> 30
																		),
														'6'			=> array (
																			'title'		=> 'url',
																			'id'		   => 6,
																			'type'		 => 'url',
																			'sort_order'   => 6,
																			'width'		=> 20
																		)
													);
		}
		
		if (isset($this->request->post['productaffilate_fix'])) {
			$data['productaffilate_fix'] = $this->request->post['productaffilate_fix'];
		} elseif ($this->config->has('productaffilate_fix')) {
			$data['productaffilate_fix'] = $this->config->get('productaffilate_fix');
		} else {
			$data['productaffilate_fix']	= array(
														'price'		=> array (
																			'title'		=> 'Price',
																			'id'		   => 1,
																			'type'		 => 'price',
																			'sort_order'   => 3,
																			'width'		=> 10
																		),
														'store_ids'	=> array (
																			'title'		=> 'Stores',
																			'id'		   => 2,
																			'type'		 => 'stores',
																			'sort_order'   => 4,
																			'width'		=> 10
																		)													
													);
		}

		$productaffilate_vars = $data['productaffilate_vars'];
		$maxvalue = 2;
		$maxvaluearray = array();
		foreach($productaffilate_vars as $productaffilate_var) {
			$maxvaluearray[] = (int)$productaffilate_var['id'];
		}
		if(!empty($maxvaluearray)) {
			$maxvalue = max($maxvaluearray);
		}
		$data['maxvalue'] = $maxvalue;
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
				
		$this->response->setOutput($this->load->view('module/productaffilate.tpl', $data));
	}

	public function uninstall() {
		$this->load->model('catalog/productaffilate');
		$this->load->model('setting/setting');
		
		// Delete Setting
		$this->model_catalog_productaffilate->deleteaffilates();
		$this->model_setting_setting->editSetting('productaffilate', array());
	}
	
	public function install() {
			$this->load->model('catalog/productaffilate');
			$this->load->model('setting/setting');
			
			// Save Setting
			$this->model_catalog_productaffilate->createaffilates();
	}
		
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/productaffilate')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>