<div class="contentArea">
          
          <div class="topContent">
          </div>
          <div class="mainContent">
               <div class="product_grid" style="position:relative;">
          	<table>
                    <?php 

                    foreach($products as $key => $product):?>
                         <?php if($key%3 == 0):?>
                              <tr>
                                   <td>
                                   <a href="/products/view/<?php echo $product['Product']['id']?>">
                                        <?php echo $product['Product']['name'];?>
                                   </a>
                                       
                                   </td>
                         <?php elseif($key%3 == 1):?>
                                   <td>
                                   <a href="/products/view/<?php echo $product['Product']['id']?>">
                                        <?php echo $product['Product']['name'];?>

                                   </a>
                                        
                                   </td>
                         <?php else:?>
                                   <td>
                                   <a href="/products/view/<?php echo $product['Product']['id']?>">
                                        <?php echo $product['Product']['name'];?>
                                   </a>
                                        
                                   </td>
                              </tr>
                         <?php endif;?>
                    <?php endforeach;?>
               </table>
          </div>
          </div>
          <div class="footerContent">
          </div>
</div>