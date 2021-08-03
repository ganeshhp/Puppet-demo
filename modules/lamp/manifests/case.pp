class selectcase {

	case $operatingsystem {

	centos: { $apache = "httpd" }
	redhat: { $apache = "httpd" }
	debian: { $apache = "apache2" }
	ubuntu: { $apache = "apache2" }

	default: { fail("unrecongnized OS")}
	}

	package {apache:
	  name => $apache,
	  ensure => present,
	}

	if ( $apache == apache2 )
	 package {vim:
	   ensure => present,
	}

	else
         package {nano:
	   ensure => present,
	}

