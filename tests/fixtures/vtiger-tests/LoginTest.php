<?php

use PHPUnit\Framework\TestCase;
use OpenCrmItalia\SuiteTools\Tools;

class LoginTest extends TestCase
{
    public function testLogin()
    {
        $vtigerTest = Lest::test('/var/www/html/index.php');

        $vtigerTest->loginAs('admin');

        $allTools = Tools::getAll();
        $this->assertEquals(count($allTools), 2);

    }

}
