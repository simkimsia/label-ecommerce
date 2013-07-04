        <div class="contentArea">
          <div class="topContent"></div>
          <div class="mainContent">

          	<div class="theContents clearfix">
                <div class="areabox">
                  <div class="leftContent clearfix">
                    <?php $session = $this->Session->flash(); 
                    if (empty($session)) : ?>
                    <strong>We’d love to hear from you!</strong><br /><br />
                    If you have a special order, or require any assistance, drop us an email at sales@childlabel.com or fill up the contact form on the right and we’ll be sure to reply as soon as we can.
                    <?php else : 
                      echo $session;
                    ?>
                    <?php endif; ?>
                  </div>
                  <div class="rightContent clearfix">
                    <?php echo $this->Html->image('contactForm.png'); ?>
                    <?php echo $this->Form->create(null, array('url' => '/enquiry_email/add', 'div' => false, 'label' => false)); ?>
                      <?php echo $this->Form->input('User.full_name', array('type' => 'text', 'placeholder'=> 'Name', 'div' => false, 'label' => false)); ?>
                      <?php echo $this->Form->input('User.email', array('type' => 'text', 'placeholder'=> 'Email', 'div' => false, 'label' => false)); ?>
                      <?php echo $this->Form->input('User.contact_number', array('type' => 'text', 'placeholder'=> 'Contact Number', 'div' => false, 'label' => false)); ?>
                      <?php echo $this->Form->input('User.message', array('type' => 'textarea', 'placeholder'=> 'Message', 'div' => false, 'label' => false)); ?>
                      <?php echo $this->Form->submit('Submit', array('div' => false, 'class'=> 'submitbtn')); ?>
                    <?php echo $this->Form->end(); ?>
                  </div>
                </div>
                <div class="imagesontop"></div>	
            </div>
            
          </div>
          <div class="callmesotongRight"></div>  
          <div class="footerContent"></div>
        </div>


        <div style="clear:both;"></div>

        <script type="text/javascript">
          $(document).ready(function() {

          });
        </script>
