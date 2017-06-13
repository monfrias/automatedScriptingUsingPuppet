class softlink {

    #create a directory and soft link to a script
    file { '/home/monitor/src/my_memory_check':
        ensure  => 'link',
        target  => '/home/monitor/scripts/memory_check',
    }
}

class { 'softlink': }
