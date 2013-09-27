<?php
App::uses('AppModel', 'Model');
/**
 * Product Model
 *
 */
class Product extends AppModel {

/**
 * Display field
 *
 * @var string
 */
    public $displayField = 'name';

	public $hasMany = array(
        'ProductImage' => array(
            'className'  => 'ProductImage'
        ),
        'ProductVariant' => array(
        	'className' => 'ProductVariant'
    	)
    );

    public $hasOne = 'ProductRepresentativeImage';

/**
 * insert into product_variant ('name') VALUES 'DEFAULT' for new product
 * @param $data expect Post 
 *
 */
    public function createWithDefaultVariant($data){
    	$singleVariant = array('name' => 'DEFAULT');
    	$data['ProductVariant'] = array(
			$singleVariant
			);
    	$this->create();
   		$result = $this->saveAssociated($data);				
   		return $result;
    				
    }

/**
 * retrieve product_variant_count based on product_id
 * @param $product_id 
 *
 */
    public function allowDeleteVariant($product_id){
    	$this->id = $product_id;
    	$count = $this->field('product_variant_count');
    	return ($count >= 2);
    }

/**
 * 
 * @param $options Array of options. 
 *
 * Retrieve the data for /products/view the code may be incomplete
 */

    public function getViewVars($id, $options = array()) {
// the fields you want from Product...
        $fields = array(
            'Product.id', 
            'Product.description', 
            'Product.name',
            'Product.price'
        );
        $conditions = array('Product.id' => $id);
        $product = $this->find('first', array(
            'conditions' => $conditions,
            'fields'     => $fields
        ));
// get variants and their images
        $variantsAndImages = $this->getVariantsAndImages($id);
        $variants            = Hash::combine($variantsAndImages, '{n}.ProductVariant.id', '{n}.ProductVariant');
        $images              = Hash::combine($variantsAndImages, '{n}.ProductVariant.id', '{n}.ProductImage');
        foreach($variants as $variant_id => $variant){
            if(isset($images[$variant_id])) {
                $variants[$variant_id]['images'] = $images[$variant_id];
            }else {
                $variants[$variant_id]['images'] = array();

            }

        }
        $product['Product']['variants'] = array_values($variants);
        return $product;
    }

/**
 * 
 * Retrieve the variants and images
 *
 * @param $id int Product id
 * @param $inOrder boolean Default true if we want the variant and images returned in their order
 */
    public function getVariantsAndImages($id = null, $inOrder = true) {
        $conditions = array(
            'ProductVariant.product_id' => $id,
        );
        $fields = array(
            'ProductVariant.id', 
            'ProductVariant.product_id', 
            'ProductVariant.name'
// and many more where necessary
        );
        $variantOrder = array('ProductVariant.id');
        $imageOrder = array('ProductImage.id');

        if ($inOrder) {
            $variantOrder = array('ProductVariant.order');
            $imageOrder = array('ProductImage.order');
        }
        $variants = $this->ProductVariant->find('all', array(
            'conditions' => $conditions,
            'fields'     => $fields,
            'order'      => $variantOrder,
            'contain'    => array('ProductImage' => array(
                'order' => $imageOrder
            )) // go google at cakephp for containable to get better idea
        ));
        return $variants;
    }

}
