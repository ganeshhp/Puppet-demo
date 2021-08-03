class restartservice {

	exec {'restarttomcat':

	  command => 'sh /opt/tomcat/bin/startup.sh',
	  provider => shell,
	  path => '/usr/bin/',
	}
}
