<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 로그인 접속 후 세션 유지시간 확인하기 </title>
<%-- 세션 유지시간을 확인할 때에는
     session 내장 객체의 다음 메소드를 변수에 대입하여 선언한다.
     getId()
     getLastAccessedTime()
     getCreationTime()
--%>
</head>

<body>
Home > 로그인 접속 후 세션을 유지한 시간 출력하기
<hr>
<%
    String session_id = session.getId(); // 세션 아이디 가져오기
    long last_time = session.getLastAccessedTime(); // 세션에 접근한 마지막 시간 가져오기
    long start_time = session.getCreationTime(); // 세션에 접근한 최초 시간 가져오기
    long keeping_time = (last_time - start_time) / 60000; // 세션이 생성된 시간(분)

    out.println("1. 세션 아이디 : [ " + session_id + " ] <br>");
    out.println("2. 세션이 생성된 시간 : [ " + keeping_time + " 분 ] <br>");
%>
</body>
</html>