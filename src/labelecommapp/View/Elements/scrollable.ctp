                    <div style="margin:0 auto; width: 600px; height:250px;">
                        <!-- "previous page" action -->
                        <a class="prev browse left leftArrow"></a>
                        <!-- root element for scrollable -->
                        <div class="scrollable" id="scrollable">
                          <!-- root element for the items -->
                          <div class="items">
                            <!-- 1-5 -->
                            <div>
                              <?php echo $this->Html->image('circleBlue.png', array('width'=>'200'));?>
                            </div>
                            <!-- 5-10 -->
                            <div>
                              <?php echo $this->Html->image('circleRed.png', array('width'=>'200'));?>
                            </div>
                            <!-- 10-15 -->
                            <div>
                              <?php echo $this->Html->image('circleBlue.png', array('width'=>'200'));?>
                            </div>
                          </div><!-- end of items -->
                        </div><!-- end of scrollable -->
                        <!-- "next page" action -->
                        <a class="next browse right rightArrow1"></a>
                    </div>
