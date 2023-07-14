<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 로그인 </title>
<%--  쿠키는 연결 상태가 없는 HTTP 프로토콜을 위해 접속된 상태를 그대로 유지할 때 필요하다.
      웹 브라우저에 정보를 저장한다. 웹 서버로 전송되는 서비스 요청에는 쿠키가 갖고 있는 정보도 포함된다. --%>
</head>

<body>
Home > 로그인 폼 화면
<hr>

<form name = "LoginForm" action = "02_cookieLogin_process.jsp" method = "post">
    ID : <br>
    <input type = "text" name = "id"> <br><br>
    Password : <br>
    <input type = "password" name = "passwd"><br><br>

    <input type = "submit" value = " LogIn ">
</form>
</body>
</html>