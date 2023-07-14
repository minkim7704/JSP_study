<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>response Redirection</title>
</head>

<body>
    Home > 리다이렉션
    <hr>
    <%
        request.setCharacterEncoding("utf-8");
        String u_id = request.getParameter("id");
        String u_pw = request.getParameter("passwd");

        if (u_id.equals("space") && u_pw.equals("123456")) {
            response.sendRedirect("01_responseLogin_success.jsp");
        }
        else {
            response.sendRedirect("01_responseLogin_failure.jsp");
        }
    %>

<%--    1. .setCharacterEncoding() : 응답 내용의 인코딩 형태를 지정한다.               --%>
<%--    2. 단일 세션(id, passwd) 의 속성값을 구해서 String 변수인 u_id, u_pw에 저장한다.  --%>
<%--        (세션을 생성할 때에는 session.setAttribute("session name", value);)     --%>
<%--    3. u_id == space & u_pw == 123456 일 때 서버가 웹 브라우저에 지정한 url 또는 파일로 강제 이동한다.--%>
</body>
</html>