<?php


define('SUPER_ADMIN', 1);
define('SHOP_ADMIN', 3);
define('CUSTOMER', 4);

define('EMAIL_ON', true);


Configure::write('IB_BANK', 'DBS');
Configure::write('ACCOUNT_CODE', '104-900514-3');
Configure::write('ACCOUNT_TYPE', 'Current Account');
Configure::write('ACCT_NAME', 'Child Label');

Configure::write('PAYPAL', 'live');
?>