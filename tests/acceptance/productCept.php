<?php
$I = new WebGuy($scenario);
$I->wantTo('ensure product view works');
$I->amOnPage('/products/view/1');
$I->seeElement('div.desc');
$I->seeElement('h2.price');
$I->seeElement('div.productdetails');
