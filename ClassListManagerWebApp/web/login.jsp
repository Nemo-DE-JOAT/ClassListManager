<%-- 
    Document   : login
    Created on : May 21, 2025, 2:15:55 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <p>
            Please enter your login details below:
        </p>
       <form action="j_security_check" method="POST">
        <table border="0">
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="j_username" required =""/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="j_password" required =""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="LOGIN"/></td>
                </tr>
        </table>
    </form>

    </body>
</html>
