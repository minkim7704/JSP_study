<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 로그인 폼 생성 </title>
</head>

<body>
Home > 로그인 화면
<hr>
<form name = "loginForm" action = "01_sessionCreate_success.jsp" method = "post">
    ID : <br>
    <input type = "text" name = "id"><br><br>
    Password : <br>
    <input type = "password" name = "passwd"><br><br>

    <input type = "submit" value = " LogIn ">
</form>
</body>
</html>