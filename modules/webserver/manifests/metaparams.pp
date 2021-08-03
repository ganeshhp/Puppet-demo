class sshconfig {

	package {'openssh-server':
	  ensure => present,
	  before => File ['/etc/ssh/sshd_config'],	  
	}

	file {'/etc/ssh/sshd_config':
	  ensure => file,
	  source => puppet:///modules/webserver/sshd_config
	  require => Package ['openssh-server'], 
	}


	file {'/etc/ssh/sshd_config':
	  ensure => file,
	  mode => 0600,
 	  source => puppet:///modules/webserver/sshd_config
	  notify => Service ['sshd'],
	}

	service {'sshd':
	  ensure => running,
	  enable => true,
	  subscribe => File ['/etc/ssh/sshd_config'],
	}
}
