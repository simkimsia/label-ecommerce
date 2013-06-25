<?php
date_default_timezone_set('Asia/Singapore');
$I = new WebGuy($scenario);
$I->wantTo('ensure that the indexpage works');
$I->amOnPage('/');
$I->seeElement('div.bannerHolder.theme-default');
$I->seeElement('div.featuredProducts');
$I->seeElement('.contentArea');
