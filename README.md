﻿# Real estate API

##### Simple REST-alike API for real estate registry. The API provide CRUD functionality.

## About the project

One of job tasks I got while looking for my first software developer position.\
Application made using <i><b>Java 11, Spring Boot v2.3.1, Spring Web, Spring Data JPA, H2-in-memory-database, Lombok and Maven</b></i>.
 
API lets you add new building records to database, view, edit or delete them (CRUD functionality);\
Input data validation for POST and PUT methods;\
Endpoint to calculate yearly tax for all properties owned by given owner id;\
Implemented custom annotations and a converter for PropertyType Enum;\
Designed custom exceptions and global error handler for API with meaningful error messages for clients to easily diagnose problems.

Made a decent effort to write clean OOP code to my Date.now() best understanding, like separation of concerns and encapsulation of internal workings of the class to hide details from outside while providing a simple interface to work with a class and there should be no to little pain adding new functionality.

## How to set up the application

Open terminal and use git clone command to download the remote GitHub repository to your computer:
```
git clone https://github.com/skarware/job_task_realestate_api.git
```
It will create a new folder with same name as GitHub repository "job_task_realestate_api". All the project files and git data will be cloned into it. After cloning complete change directories into that new folder:
```
cd job_task_realestate_api
```

Make sure mvnw file inside directory has execution permission or you will see error: `./mvnw: command not found`
```
$ chmod +x mvnw
```

## How to use

To launch the application run this command (uses maven wrapper):
```
$ ./mvnw clean spring-boot:run
```
Or using your installed maven version:
```
$ mvn clean spring-boot:run
```
<b>For interacting with API one can use <b><i>curl</i></b> tool as in following examples:</b>

Please note in examples application uses default Tomcat listening port: 8080 and runs on localhost machine.

Get all building records by all owners:
```
curl --location --request GET 'http://localhost:8080/properties'
```

Get all building records by given owner id:
```
curl --location --request GET 'http://localhost:8080/properties/owner/3'
```
Get a building record by given id:
```
curl --location --request GET 'http://localhost:8080/properties/3'
```
Create new building record, new owner, new address and save into database:
```
curl --location --request POST 'http://localhost:8080/properties' \
--header 'Content-Type: application/json' \
--data-raw ' {
    "address": {
        "city": "New City",
        "street": "New Street",
        "number": "33"
    },
        "owner": {
            "name": "New Name",
            "surname": "New Surname",
            "email": "new@email",
            "juridicalPerson": false
        },
            "sizeInSquareMetres": 33,
    "marketValue": 3333333.0,
    "propertyType": "HOUSE"
}'
```
Create new building record with existing owner, but new address and save into database:
```
curl --location --request POST 'http://localhost:8080/properties' \
--header 'Content-Type: application/json' \
--data-raw ' {
    "address": {
        "city": "New City",
        "street": "New Street",
        "number": "333"
    },
        "owner": {
            "id": 3,
            "name": "will use existing",
            "surname": "user with id 3",
            "email": "same@email",
            "juridicalPerson": false
        },
            "sizeInSquareMetres": 33,
    "marketValue": 3333333.0,
    "propertyType": "HOUSE"
}'
```
Update building record by given id, with a new owner new address:
```
curl --location --request PUT 'http://localhost:8080/properties/3' \
--header 'Content-Type: application/json' \
--data-raw ' {
    "address": {
        "city": "New City",
        "street": "New Street",
        "number": "3333"
    },
        "owner": {
            "name": "New owner",
            "surname": "name",
            "email": "new@email.org",
            "juridicalPerson": false
        },
            "sizeInSquareMetres": 33,
    "marketValue": 3333333.0,
    "propertyType": "HOUSE"
}'
```
Update building record by given id, with existing owner by id, but create new address:
```
curl --location --request PUT 'http://localhost:8080/properties/1' \
--header 'Content-Type: application/json' \
--data-raw ' {
    "address": {
        "city": "New City",
        "street": "New Street",
        "number": "3"
    },
        "owner": {
            "id": 3,
            "name": "will use existing",
            "surname": "user with id 3",
            "email": "same@email",
            "juridicalPerson": false
        },
            "sizeInSquareMetres": 33,
    "marketValue": 3333333.0,
    "propertyType": "HOUSE"
}'
```
Update building record by given id, with existing owner and existing address by their ids (Note that Address must be unique as no two buildings should have same addresses, therefore you cannot assign address id which is already given to some building record):
```
curl --location --request PUT 'http://localhost:8080/properties/2' \
--header 'Content-Type: application/json' \
--data-raw '{
        "address": {
            "id":2,
            "city": "aaa",
            "street": "bbbsab",
            "number": "ccc"
        },
        "owner": {
            "id":2,
            "name": "aaa",
            "surname": "bbb",
            "email": "cccc@cccccom",
            "juridicalPerson": true
        },
        "sizeInSquareMetres": 65,
        "marketValue": 483922.0,
        "propertyType": "APARTMENT"
    }'
```
Delete a record by given id:
```
curl --location --request DELETE 'http://localhost:8080/properties/5'
```
