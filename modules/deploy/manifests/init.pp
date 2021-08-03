class deploy {

	include deploy::tomcat
	include deploy::deploypackage
	include deploy::restartservice 
}


