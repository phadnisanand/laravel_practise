<?php

namespace App\Console\Commands;

use App\Mail\QuoteMail;
use Illuminate\Console\Command;
use Mail;
class SendScheduledEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:send-scheduled-email';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        Mail::to('phadnisanandhyd@gmail.com')->send(new QuoteMail());

    }
}
