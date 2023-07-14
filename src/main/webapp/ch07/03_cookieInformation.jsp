<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>쿠키 객체 정보 </title>
</head>

<body>
Home > 쿠키 객체 정보 확인하기
<hr>
<%
    Cookie[] cooks = request.getCookies();
        // Cookie[] 변수명    : 여러 개의 쿠키 객체 가져오기
        // getCookie() 메소드 : 쿠키 객체 가져오기
    out.println(" >> 쿠키의 갯수 : " + cooks.length + "<br>");
    out.println("<hr>");

    for (int cnt = 0; cnt < cooks.length; cnt++) {
        out.println("[" + cnt + "] 쿠키의 이름 : ");
        out.println(cooks[cnt].getName() + "<br>");
                    // getName() 메소드 : 쿠키 이름 가져오기
        out.println("[" + cnt + "] 쿠키의 값 : ");
        out.println(cooks[cnt].getValue() + "<br>");
                    // getValue() 메소드 : 쿠키값 가져오기

    }
%>

</body>
</html>