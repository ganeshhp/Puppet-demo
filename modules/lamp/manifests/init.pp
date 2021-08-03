
class lamp {

include lamp::apache

$webserver = 'httpd'

  exec { 'yum-update':                    # exec resource named 'apt-update'
    command => '/usr/bin/yum update -y'  # command this resource will run
  }

package { 'httpd':
  require => Exec['yum-update'],        # require 'apt-update' before installing
  ensure => present,
}

# ensure apache2 service is running
service { 'webservice':
  name => $webserver,
  ensure => running,
  enable => true,
}

# install mysql-server package
package { 'mysql-server':
  require => Exec['yum-update'],        # require 'apt-update' before installing
  ensure => present,
}

# ensure mysql service is running
service { 'mysqld':
  ensure => running,
  enable => true,
}

# install php5 package
package { 'php5*':
  require => Exec['yum-update'],        # require 'apt-update' before installing
  ensure => present,
}

# ensure info.php file exists
file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package[httpd],        # require 'apache2' package before creating
} 

}
