
<?php 
$gotMultipleVariants = (count($product['Product']['variants']) > 1);
foreach($product['Product']['variants'] as $index => $variant) { 
  $hidden_class = 'hidden';
  if($index == 0) {

    $hidden_class = '';

  } 
  
?>

                    <div id="variant_<?php echo $variant['id'];?>_images" class="variant_images_scrollable <?php echo $hidden_class; ?>" style="margin:0 auto;margin-top:60px; width: 800px; height:250px; text-align: center;">
                        <!-- "previous page" action -->
                        <a class="prev browse left leftArrow"></a>
                        <!-- root element for scrollable -->
                        <div class="scrollable" id="scrollable_<?php echo $variant['id'];?>:">
                          <!-- root element for the items -->
                          <div class="items">
                            <!-- 1-5 -->
                            <?php 
                            if ($gotMultipleVariants) {
                              $itemsPerRow = 3;
                            } else {
                              $itemsPerRow = 4;
                            }
                            $count = count($variant['images']);
                            if (!function_exists('checkLast')) {
                              function checkLast($index, $itemsPerRow, $totalItemsCount) {
                                $lastItemOfRow = ($index % $itemsPerRow == $itemsPerRow - 1);
                                $lastItemPeriod = ($index == $totalItemsCount - 1);
                                return ($lastItemOfRow || $lastItemPeriod);
                              }
                            }
                            foreach($variant['images'] as $key => $array): 
                            ?>
                            <?php 
                            if (($key % $itemsPerRow) == 0) {
                              echo "<div class='item_page'>";
                            }
                            echo $this->Html->image($array['view_url'], array('width'=>'200', 'height' => '200', 'style' => 'border-style:solid;border-color:white;'));
                            if (checkLast($key, $itemsPerRow, $count)) {
                              echo "</div>";
                            }
                            ?>
                          <?php endforeach; ?>
                          </div><!-- end of items -->
                        </div><!-- end of scrollable -->
                        <!-- "next page" action -->
                        <a class="next browse right rightArrow1"></a>
                    </div>
<?php
}
?>