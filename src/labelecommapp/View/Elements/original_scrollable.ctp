                <a href="#"><div class="leftArrow"></div></a>
                    <div class="productCircle">
                        <ul>
                            <li><a href="#">
                                <?php
                                echo $this->Html->image($product['Product']['variants'][0]['images'][0]['view_url'], array('width'=>'200'));?>
                            </a></li>
                            <li>
                                <?php echo $this->Html->image('divider.png', array('class'=>'pddivider'));?>
                            </li>
                            <li><a href="#">
                                <?php echo $this->Html->image($product['Product']['variants'][0]['images'][1]['view_url'], array('width'=>'200'));?>

                                <!-- <?php echo $this->Html->image('circleBlue.png', array('width'=>'200'));?> -->
                            </a></li>
                            <li>
                                <?php echo $this->Html->image('divider.png', array('class'=>'pddivider'));?>

                            <li><a href="#">
                                <?php 
                                    echo $this->Html->image($product['Product']['variants'][0]['images'][2]['view_url'], array('width' => '200'));
                                // echo $this->Html->image('circleLightblue.png', array('width'=>'200'));
                                ?>
                            </a></li>
                        </ul>
                    </div>
                    <a href="#"><div class="rightArrow"></div></a>
                    <div class="clearBoth"></div>
                    <div class="chooseColor">
                        <a href="#">
                            <?php echo $this->Html->image('circleBlue.png', array('width'=>'20'));?>

                        </a>&nbsp;&nbsp;
                        <a href="#">
                            <?php echo $this->Html->image('circleGrey.png', array('width'=>'20'));?>
                        </a>&nbsp;&nbsp;
                        <a href="#">
                            <?php echo $this->Html->image('circleMangenta.png', array('width'=>'20'));?>
                        </a>&nbsp;&nbsp;
                        <a href="#">
                            <?php echo $this->Html->image('circleYellow.png', array('width'=>'20'));?>
                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>Choose a Label Colour</strong>
                    </div>