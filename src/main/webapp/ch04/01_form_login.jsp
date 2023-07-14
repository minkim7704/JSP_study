<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset = "UTF-8">
    <title> 로그인 화면 </title>
</head>


<body>
    Home > Login
    <hr>
    <form action = "#" method = "get">
        ID : <br>
        <input type = "text" name = "id"> <br><br>
        PASSWORD : <br>
        <input type ="password" name="passwrd"> <br><br>
        &nbsp; <input type = "submit" value = " Login "> &nbsp;
        <%-- &nbsp; 암호처리 --%>
        <input type = "reset" value = " Cancel ">
    </form>
</body>
</html>
