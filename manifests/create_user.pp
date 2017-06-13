class create_user {

    #create a user named 'monitor'
    user { 'monitor':
        ensure      => 'present',
        managehome  => 'true',
        home        => "/home/monitor",
        shell       => '/bin/bash',
    }
}

class { 'create_user': }
