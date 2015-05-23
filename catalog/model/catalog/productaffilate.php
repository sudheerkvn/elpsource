<?php 
class ModelCatalogProductaffilate extends Model {
	public function getProductAffilates($product_id) {
		$product_affilate_data = array();
		$product_attribute_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_affilate WHERE product_id = '" . (int)$product_id . "'");			
		return $product_attribute_query->rows;
	}
}
?>