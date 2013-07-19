                    <div style="margin:0 auto; width: 600px; height:250px; text-align: center;">
                        <!-- "previous page" action -->
                        <a class="prev browse left leftArrow"></a>
                        <!-- root element for scrollable -->
                        <div class="scrollable" id="scrollable">
                          <!-- root element for the items -->
                          <div class="items">
                            <!-- 1-5 -->
                            <?php foreach($product['Product']['variants'][0]['images'] as $key => $array): ?>
                            <div>
                              <?php
                                echo $this->Html->image($array['view_url'], array('width'=>'200'));?>
                            </div>
                          <?php endforeach; ?>
                          </div><!-- end of items -->
                        </div><!-- end of scrollable -->
                        <!-- "next page" action -->
                        <a class="next browse right rightArrow1"></a>
                    </div>
