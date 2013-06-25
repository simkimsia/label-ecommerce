<?php
$I = new WebGuy($scenario);
$I->wantTo('Testing for visibility of  email form');
$I->amOnPage('/call');
$I->seeElement('div.mainContent');
