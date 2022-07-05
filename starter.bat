@echo off
set groupID = groupID
set ArtifactID = ArtifactID
set portNumber = 8080
set DBport = 3306
set DBtableName = movie_db
set DBusername = root
set DBpassword = 1234
set fileLocation = /movie
set fileSize = 1mb
set requestSize = 1mb

md api
md component
md controller
md mapper
md data
md util
md service
move api src/main/java/com/%groupID%/%ArtifactID%/
move component src/main/java/com/%groupID%/%ArtifactID%/
move controller src/main/java/com/%groupID%/%ArtifactID%/
move mapper src/main/java/com/%groupID%/%ArtifactID%/
move data src/main/java/com/%groupID%/%ArtifactID%/
move util src/main/java/com/%groupID%/%ArtifactID%/
move service src/main/java/com/%groupID%/%ArtifactID%/


md com
md %groupID%
md %ArtifactID%
md mapper
move com src/main/resources/
move %groupID% src/main/resources/com/
move %ArtifactID% src/main/resources/com/%groupID%/
move mapper src/main/resources/com/%groupID%/%ArtifactID%/


md webapp
md META-INF
md WEB-INF
md assets
md css
md images
md js
md plugins
md includes
md views

move webapp src/main/
move META-INF src/main/webapp/
move WEB-INF src/main/webapp/
move assets src/main/webapp/
move css src/main/webapp/assets/
move images src/main/webapp/assets/
move js src/main/webapp/assets/
move plugins src/main/webapp/assets/
move includes src/main/webapp/WEB-INF/
move views src/main/webapp/WEB-INF/

chcp 65001

echo server.port = %portNumber% >> src/main/resources/application.properties  >> src/main/resources/application.properties
echo. >> src/main/resources/application.properties
echo spring.mvc.view.prefix=/WEB-INF/views  >> src/main/resources/application.properties
echo spring.mvc.view.suffix=.jsp  >> src/main/resources/application.properties
echo. >> src/main/resources/application.properties
echo spring.datasource.url=jdbc:mysql://localhost:%DBport%/%DBtableName%  >> src/main/resources/application.properties
echo spring.datasource.username=%DBusername%  >> src/main/resources/application.properties
echo spring.datasource.password=%DBpassword%  >> src/main/resources/application.properties
echo. >> src/main/resources/application.properties
echo spring.servlet.multipart.enabled=true  >> src/main/resources/application.properties
echo spring.servlet.multipart.location=%fileLocation%    >> src/main/resources/application.properties
echo spring.servlet.multipart.max-file-size=%fileSize%  >> src/main/resources/application.properties
echo spring.servlet.multipart.max-request-size=%requestSize%  >> src/main/resources/application.properties




echo package com.greenart.%groupID%.%ArtifactID%; > MainController.java
echo. >> MainController.java
echo import org.springframework.stereotype.Controller; >> MainController.java
echo import org.springframework.web.bind.annotation.GetMapping;
echo. >> MainController.java
echo @Controller >> MainController.java
echo public class MainController { >> MainController.java
echo     @GetMapping("/") >> MainController.java
echo     public String getMain(){ >> MainController.java
echo         return "/index"; >> MainController.java
echo     } >> MainController.java
echo. >> MainController.java
echo } >> MainController.java







echo hello > index.jsp
echo hello > index.js
echo hello > reset.css

move MainController.java src/main/java/com/%groupID%/%ArtifactID%/controller/
move index.jsp src/main/webapp/WEB-INF/
move index.js src/main/webapp/assets/js/
move reset.css src/main/webapp/assets/css/


