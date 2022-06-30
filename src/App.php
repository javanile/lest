<?php

namespace Javanile\Lest;

use Silly\Application as SillyApplication;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Output\NullOutput;

class App extends SillyApplication
{
    /**
     * Configuration handler.
     */
    protected $config;

    /**
     * Database handler.
     */
    protected $database;

    /**
     * VtigerCli constructor.
     *
     * @param string $cwd
     */
    public function __construct($cwd)
    {
        parent::__construct('lest', '0.1.0');
    }

    /**
     *
     */
    public function test()
    {

    }

    /**
     *
     */
    public function phpunit()
    {
        $phpunit = __DIR__.'/../vendor/bin/phpunit.php';

        echo $phpunit."\n";

        var_dump(file_exists($phpunit));

        include $phpunit;
    }
}
