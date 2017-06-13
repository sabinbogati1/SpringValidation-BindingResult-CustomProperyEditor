<%-- 
    Document   : addForms
    Created on : May 29, 2017, 10:31:50 AM
    Author     : Sabin Bogati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> You are in the form</h1>
        
        <form:errors path="student1.*"  />
                
        <form action="${SITE_URL}/submitForm" method="POST">
            <label> Name: </label>
            <input type="text" name="studentName"  />
            <br/> <br/>
            
             <label> Hobby: </label>
            <input type="text" name="studentHobby"  />
            <br/> <br/>
            
             <label> Mobile: </label>
            <input type="text" name="studentMobile"  />
            <br/> <br/>
            
           <label> Date of birth: </label>
            <input type="text" name="studentDOB"  />
            <br/> <br/>
            
            <label> Student's skill </label>
            <select name="studentSkills" multiple >
                <option value="Java Core"> Java Core</option>
                <option value="Spring Core">Spring Core</option>
                <option value="Spring MVC"> Spring MVC</option>
            </select>
            
            <h2> Student's Address </h2>
            <label> Country </label>
            <input type="text" name="studentAddress.country"  />
            
            <label> City </label>
            <input type="text" name="studentAddress.city"  />
            
            
            <label> Street </label>
            <input type="text" name="studentAddress.street"  />
            
            <label> Pincode </label>
            <input type="text" name="studentAddress.pincode"  />
            
            
            
            <input type="submit" value="submit" />
        </form>
        
    </body>
</html>
