<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 데이터 입력 확인 </title>
</head>

<body>
Home > 아이디와 비밀번호 입력 성공
<hr>
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String passwd = request.getParameter("pw");
%>
<p> ID : <%= id %>
<p> PASSWORD : <%= passwd %>
</body>
</html>