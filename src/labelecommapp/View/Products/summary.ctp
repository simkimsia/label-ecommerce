<div class="contentArea">
          
          <div class="topContent">
          </div>
          <div class="mainContent">
               <div class="product_grid" style="position:relative;">
          	<table>
                    <?php 

                    foreach($products as $key => $product):?>
                         <?php 
                         $name = $product['Product']['name'];
                         $id   = $product['Product']['id'];
                         $link = $this->Html->link($name, array('action' => 'view', $id));

                         if ($key % 3 == 0):?>
                              <tr>
                         <?php endif; ?>
                                   <td style="vertical-align:bottom;">
                                        <span><?php echo $link; ?></span>
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