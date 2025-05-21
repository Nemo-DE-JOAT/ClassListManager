<%-- 
    Document   : findstudent_outcome
    Created on : May 21, 2025, 12:35:39 PM
    Author     : hp
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Outcome Page</title>
    </head>
    <body>
        <h1>Find student outcome</h1>
        <%
            //getting students
            Student student = (Student)request.getAttribute("student");
            String name = student.getName();
            Long studNum = student.getId();
            Integer age = student.getAge();
        %>
        <p>
            The student has been found. Below are the details of the student.
        </p>
        <table border="0">
                <tr>
                    <td><b>Name</b>: </td>
                    <td><%=name%></td>
                </tr>
                <tr>
                    <td><b>Age</b>: </td>
                    <td><%=age%></td>
                </tr>
                <tr>
                    <td><b>Student No</b>: </td>
                    <td><%=studNum%></td>
                </tr>
        </table>
        <p>
            Please click <a href="menu.html">here</a> to go to menu page.
            <br>
            Click <a href="LogOutServlet.do">here</a> to logout.
        </p>

    </body>
</html>
