<?php 
class ModelCatalogProductaffilate extends Model {
	public function getProductAffilates($product_id) {
	 $product_affilate_data = array();
		$product_attribute_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_affilate WHERE product_id = '" . (int)$product_id . "' GROUP BY affilate_id");
			
		return $product_attribute_query->rows;
	}
	
	public function createaffilates() {
		
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  `" . DB_PREFIX . "product_affilate` (
		`affilate_id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
		 `product_id` INT( 11 ) NOT NULL ,
		 `shop` VARCHAR( 255 ) DEFAULT NULL ,
		 `qmark` VARCHAR( 255 ) DEFAULT NULL ,
		 `description` TEXT NOT NULL ,
		 `price` DECIMAL( 15, 4 ) NOT NULL ,
		 `url` VARCHAR( 255 ) NOT NULL ,
		PRIMARY KEY (  `affilate_id` )
		) ENGINE = MYISAM DEFAULT CHARSET = utf8;");
		
	}
	
	public function deleteaffilates() {
		$query = $this->db->query("DROP TABLE " . DB_PREFIX . "product_affilate;");
	}
	
	public function checkupdate() {
		$result = $this->db->query("SHOW COLUMNS FROM `" . DB_PREFIX . "product_affilate` LIKE 'columns'");
		$exists = ($result->rows)?TRUE:FALSE;
		if(!$exists) {
			$query = $this->db->query("ALTER TABLE `" . DB_PREFIX . "product_affilate` ADD `columns` TEXT NOT NULL ;");
		}
	}
}

?>