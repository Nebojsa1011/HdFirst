classes/com/example/web/BeerSelect.class:	src/com/example/web/BeerSelect.java classes/com/example/model/BeerExpert.class
	javac -source 1.6 -classpath /usr/share/tomcat7/lib/servlet-api.jar:classes:. -d classes src/com/example/web/BeerSelect.java

classes/com/example/model/BeerExpert.class:	src/com/example/model/BeerExpert.java
	javac -source 1.6 -classpath /usr/share/tomcat7/lib/servlet-api.jar:classes:. -d classes src/com/example/model/BeerExpert.java
install:
	cp web/* ~/webapps/Beer-v1/
	cp etc/web.xml ~/webapps/Beer-v1/WEB-INF/
	cp -r  classes/ ~/webapps/Beer-v1/WEB-INF/
	~/Programs/tomcat7/bin/shutdown.sh
	~/Programs/tomcat7/bin/startup.sh
