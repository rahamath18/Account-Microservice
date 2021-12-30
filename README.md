## Account Microservice Example Development using SpringBoot 2.2.2, Hibernate 5.1.0, MySql 5.7.12, PostgreSQL 12.9-1, and Oracle 19.3 (19c)


### Used technology stack in this example

	1. OpenJDK 12
	2. Apache Maven 3.5.4
	3. SpringBoot 2.2.2
	4. Hibernate Annotations 5.1.0
	5. Hibernate Core 5.4.9
	6. Hibernate Validator 6.0.18
	7. MySql 8.0.27
	8. PostgreSQL 12.9-1
	9. Oracle 19.3 (19c)
	10. Postman Version 8.12.5


### Use following URL to create spring boot initial application structure

	https://start.spring.io/


### This example work with MySQL, PostgreSQL, and Oracle

	- Only modify the application.properties to work with your database.
	- Create DB user name as "account" before run this example for oracle 19c
	- Create DB user name as "postgres" (default) before run this example for PostgreSQL
	- Create DB user name as "root" (default) before run this example for MySQL
	

### Maven initial setup

	$ mvn dependency:tree
	$ mvn eclipse:eclipse


### Run Directly the spring boot application

	$ mvn spring-boot:run
	
	Browse	http://localhost:3001/account-microservice/


### Build application jar or war

	$ mvn clean package
		

### Deployable war 

	Deploy in Tomcat
	
	Start server
	
	Browse	http://localhost:3001


### Executable jar

	$ java -jar target/Account-Microservice-1.0-PROD.jar
	
	Browse	http://localhost:3001
	
	
### Import the following POSTMAN collection into your postman tool
	
	Account Microservice.postman_collection.json


### Test Case 1: Account Sign-Up URL in POSTMAN

	Request: http://localhost:3001/account-microservice/sign-up?userName=rahamath18&password=pass1234
	
	Response: {"message":"Your Sign-Up is successful"}


### Test Case 2: Account Sign-In URL test in POSTMAN

	Request: http://localhost:3001/account-microservice/sign-in?userName=rahamath18&password=pass1234

	Response: {"message":"Your Sign-In is successful","token":" 4d2h1n4g3g0k"}

### Error Messages
	1. Your Sign-Up Details Are Empty
	2. Your Sign-In Details Are Empty
	3. User Name Length Min 8 and Max 20
	4. Password Length Min 8 and Max 12
	5. User already exists
	6. Your Sign-In failed

### Notes:

	If you use @RequestBody to accept the request parameters follow the below method signature.
		
	@RequestMapping(value = "/sign-up", method = RequestMethod.POST)
	public ResponseEntity<?> signUp(@RequestBody UserDto user) {
		// ...
	}
	
For the above method signature, Spring RestTemplate and POSTMAN with application/json settings can be act as client
 
