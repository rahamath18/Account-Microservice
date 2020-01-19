## Account Microservice Example Development using SpringBoot 2.2.2, Hibernate 5.1.0 and MySql 5.7.12


### Used technology stack in this example

	1. OpenJDK 12
	2. Apache Maven 3.5.4
	3. SpringBoot 2.2.2
	4. Hibernate Annotations 5.1.0
	5. Hibernate Core 5.4.9
	6. Hibernate Validator 6.0.18
	7. MySql 5.7.12
	8. Postman Version 7.14.0


### Use following URL to create spring boot initial application structure

	https://start.spring.io/


### Maven initial setup

	$ mvn dependency:tree
	$ mvn eclipse:eclipse


### Run Directly the spring boot application

	$ mvn spring-boot:run
	
	Browse	http://localhost:3001/account/


### Build application jar or war

	$ mvn clean package
		

### Deployable war 

	Deploy in Tomcat
	
	Start server
	
	Browse	http://localhost:3001


### Executable jar

	$ java -jar target/Account-Microservice-1.0-PROD.jar
	
	Browse	http://localhost:3001


### Test Case 1: Account Sign-Up URL in POSTMAN

	Request: http://localhost:3001/account/sign-up?userName=rahamath18&password=pass1234
	
	Response: {"message":"Your Sign-Up is successful"}


### Test Case 2: Account Sign-In URL test in POSTMAN

	Request: http://localhost:3001/account/sign-in?userName=rahamath18&password=pass1234

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
 
