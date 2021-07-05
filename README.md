# Taxi service app
Web app I developed as a pet project to practice using Java Servlets, JSP and JSTL with MySQL db.
Built according to SOLID principles and N-tier architecture, DIP implemented using a custom injector. 

Initially user has access to a login and registration page. 
After a successful login, user can view and create drivers, manufacturers and cars. 
User can also assign drivers to cars, as well as view all cars currently assigned to him.

## Technologies used:

- Backend: Java, JDBC, Servlets
- Logger: Log4j
- Frontend: HTML, CSS, JSP, JSTL
- Database: MySql
- Web-server: Tomcat
- Packaging: Apache Maven

## Build process:

- clone the project to your local repository
- create MySQL database with init_db.sql file
- edit ConnectionUtil class replacing mock values of constants with your own.
- configure Tomcat Server
- run a project
