<div class="contentArea">
          
          <div class="topContent">
          </div>
          <div class="mainContent">
               <div class="product_grid" style="position:relative;">
          	<table>
                    <?php 

                    foreach($products as $key => $product):?>
                         <?php if ($key % 3 == 0):?>
                              <tr>
                         <?php endif; ?>
                                   <td style="vertical-align:bottom;">
                                        <span>
                                        <a href="/products/view/<?php echo $product['Product']['id']?>"><?php echo $product['Product']['name'];?>
                                        </a>
                                        </span>
                                   </td>
                         <?php if ($key % 3 == 2):?>
                              </tr>
                         <?php endif; ?>
                    <?php endforeach;?>
               </table>
          </div>
          </div>
          <div class="footerContent">
          </div>
</div>