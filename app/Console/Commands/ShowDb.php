<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class ShowDb extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'show:dbName';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This is showing Database name';

    /**
     * Execute the console command.
     */
    public function handle()
    {   
        $dbname = DB::Connection()->getDatabaseName();
        $this->info('Your DataBase Name is - '.$dbname);
    }
}
