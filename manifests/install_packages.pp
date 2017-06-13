class install_packages {

    #install necessary packages
    $package_list = [ 'vim-enhanced', 'curl', 'git' ]
    package { $package_list: ensure => 'installed' }
}

class { 'install_packages': }
