@REM Set environment variables
SET JAVA_HOME=C:\jdk1.4
SET PATH=%JAVA_HOME%\bin
SET CLASSPATH=.;

@REM remove previous build
rd /s /q .\build

@REM create new build folder
mkdir .\build
mkdir .\build\classes
mkdir .\build\lib


@rem set classpath

set classpath=;.;%classpath%;.;D:\lib\ant-antlr-1.6.2.jar;.;D:\lib\antlr-2.7.4.jar;.;D:\lib\cglib-full-2.0.2.jar;.;D:\lib\commons-collections-2.1.1.jar;.;D:\lib\commons-logging-1.0.4.jar;.;D:\lib\dom4j-1.5.2.jar;.;D:\lib\ehcache-1.1.jar;.;D:\lib\hibernate3.jar;.;D:\lib\jdbc2_0-stdext.jar;.;D:\lib\jta.jar;.;D:\lib\xml-apis.jar;.;D:\lib\log4j-1.2.9.jar;.;C:\oracle\ora90\jdbc\lib\classes12.jar;

copy .\src\*.xml .\build\classes 
copy .\src\lib\*.jar .\build\lib

@REM compile source
javac -d .\build\classes .\src\*.java

pause

cd .\build\classes



@rem This is for 1st Application

java AddEmployee 1 saket 10000

pause

java ViewEmployees

pause 

java UpdateEmployee 1 saket 12000

pause

java SearchEmployee

pause

java FromClauseExample

pause 

java DeleteEmployee 1

cd..\..

 