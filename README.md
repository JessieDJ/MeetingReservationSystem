# MeetingReservationSystem

## Background
It is a conference booking system offers members easily and quickly solutions to book 
and manage their meeting room reservations and schedule. 
This project contains several parts including admin, web, device and floor map 
allowing customer to manage the reservation through different view portal 
and also provide booking analytics information about space and service usage 
and insights into utilization of shared space to the workspace operator.

## Design
1. Decouple the System from monolithic application to Microservice architecture absed
on Spring Boot 2.x.So that each part will work independently and efficiently.

2. Configured Spring Security to grant permissions for different level resources and 
Implemented OAuth2 SSO(Single Sign On) Social Login with Google and Facebook.
By using spring boot, we can make different people to have different level of permission
to login and use the conference room. 
By using Singl Sing On we can make it convinience for user registration and login.

3. Used REST API to deal with user request like get, post, put, delete these HTTP protocls
	architectural style for creating web API
		○ HTTP for client server communication
		○ XML(soap)/JSON(restful) as formatting language
		○ Simple URI as the address for the services
		○ Stateless communication

4. Implemented messaging services using Apache Kafka to produce and asynchronously consume 
messages in the application. Involved in development of Session Beans for the business logic 
and Message Driven beans for asynchronous flow of messages.

5. Build a server side rendering application using React JS. 
Using react-router-dom to create a navigation bar for app routing. 

6. For the front end technology. 
Development of UI models using HTML5, JSP, JavaScript, AJAX, Web Link, Bootstrap 4 and CSS3.

## Installation(dev)
1. Insatll the spring boot on local environment
2. Config the spring boot on Eclipse
3. Open the termial runging the database on this termial
4. Start the server on the Eclipse
5. Runing the web applcation on the server.
6. Open the browser to hit the website.

## Usage
This system is for the customer who want to reserve a conference room. 

## Summary
This application can help customer to book conference room effiviently and make the whole process easier.
Also it can help to check every attendee's availability to join the meeting, to see if he or she is available
or not at the time. In this way, it can seccesfully manage everyone's time make schedule perfectly.
