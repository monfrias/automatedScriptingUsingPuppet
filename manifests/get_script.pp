class get_script {

    #create a directory and get a script from GitHub
    exec { 'get_script':
        command => "/usr/bin/wget -q https://raw.github.com/monfrias/bashScriptingInCentOS/master/memory_check -O /home/monitor/scripts/memory_check",
        creates => "/home/monitor/scripts/memory_check",
    }

    file { '/home/monitor/scripts/memory_check':
        mode    => 0755,
        require => Exec["get_script"],
    }
}

class { 'get_script': }
