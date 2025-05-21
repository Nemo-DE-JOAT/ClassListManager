<%-- 
    Document   : getallstudents_outcome
    Created on : May 21, 2025, 12:54:10 PM
    Author     : hp
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get / View Students Page</title>
    </head>
    <body>
        <h1>Get/View all student outcome</h1>
        <%
            List <Student> students = (List<Student>)request.getAttribute("students");
        %>
        <table border="0">
            <%
                for(int i=0; i< students.size(); i++){
                    Student student = students.get(i);
                    String name = student.getName();
                    Long studNum = student.getId();
                    Integer age = student.getAge();
            %>
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
                <tr></tr>
                <%
                    }
                %>
        </table>
        <p>
            Please click <a href="menu.html">here</a> to go to menu page.
            <br>
            Click <a href="LogOutServlet.do">here</a> to logout.
        </p>

    </body>
</html>
