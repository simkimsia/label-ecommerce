<?php
$I = new WebGuy($scenario);
$I->wantTo('ensure /about page works');
$I->amOnPage('/about');
$I->seeElement('p.aboutRight');
$I->seeElement('p.aboutLeft');
