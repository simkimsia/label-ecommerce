<?php
$I = new WebGuy($scenario);
$I->wantTo('test contact form link is properly linked');
$I->amOnPage('/faq');
$I->seeLink('contact form','call');
