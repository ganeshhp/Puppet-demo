class webserver {

	package {'httpd':
	  ensure => present,
	  notify => Service['httpd']	  
	}
	
	user {'user10':
	  ensure => present,
	}

	service {'httpd':
	  ensure => running,
	  enable => true,
	  require => Package['httpd']
	} 
	
	file {'/var/www/html/index.html':
	  ensure => file,
	  source => '/tmp/index.html',
	}

}

