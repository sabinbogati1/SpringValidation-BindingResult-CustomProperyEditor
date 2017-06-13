<%-- 
    Document   : SucessForm
    Created on : May 29, 2017, 11:17:19 AM
    Author     : Sabin Bogati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sucess Form</h1>
        
        <h3> Name: ${student1.studentName} </h3> 
        <h3> Hobby: ${student1.studentHobby} </h3> 
        <h3> Mobile: ${student1.studentMobile} </h3> 
        <h3> DOB: ${student1.studentDOB} </h3>
        <h3> Student's Skill: ${student1.studentSkills} </h3>
        
        <h2> Student Address </h2>
        <h3> Country: ${student1.studentAddress.country} </h3>
        <h3> City: ${student1.studentAddress.city} </h3>
        <h3> Street:${student1.studentAddress.street} </h3>
        <h3> Pincode: ${student1.studentAddress.pincode} </h3>
        
       
        
        
    </body>
</html>
