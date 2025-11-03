<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class Welcome extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'show:msg';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This is custom command made by me';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Hello this command is created by Amit Vishwakarma');
    }
}
