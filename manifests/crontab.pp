class crontab {

    #create and run a crontab entry every 10 minutes
    cron { 'crontab_entry':
        command => '/home/monitor/src/my_memory_check',
        user    => 'root',
        hour    => 0,
        minute  => 10,
    }
}

class { 'crontab': }
