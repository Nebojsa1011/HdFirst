classes/com/example/web/BeerSelect.class:	src/com/example/web/BeerSelect.java
	javac -source 1.6 -classpath /usr/share/tomcat7/lib/servlet-api.jar:classes:. -d classes src/com/example/web/BeerSelect.java

install:
	cp web/* ~/webapps/Beer-v1/
	cp etc/web.xml ~/webapps/Beer-v1/WEB-INF/
	cp -r  classes/ ~/webapps/Beer-v1/WEB-INF/
	~/Programs/tomcat7/bin/shutdown.sh
	~/Programs/tomcat7/bin/startup.sh
