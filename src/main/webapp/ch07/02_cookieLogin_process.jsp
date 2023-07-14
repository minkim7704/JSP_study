<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 성공</title>
</head>

<body>
Home > 쿠키 생성 및 로그인 성공
<%-- 쿠키 생성 및 로그인 성공 화면을 보여줄 것. 로그인 실패 시 failure 페이지로 강제 이동. --%>
<hr>

<%
    request.setCharacterEncoding("utf-8");

    String u_id = request.getParameter("id");
    String u_pw = request.getParameter("passwd");

    if (u_id.equals("space") && u_pw.equals("123456")) {
        Cookie cooks_id = new Cookie("userID", "u_id");
        Cookie cooks_pw = new Cookie("userPW", "u_pw");
        response.addCookie(cooks_id);
        response.addCookie(cooks_pw);
        // Cookie() 메소드: 쿠키 생성("쿠키 이름", "쿠키 값")
        // addCookie() 메소드: 쿠키 설정(변수명)

        out.println("쿠키를 생성했습니다. <br>");
        out.println("[ " + u_id + " ]님이 입장했습니다. <br>");
    }
    else {
        response.sendRedirect("02_cookieLogin_failure.jsp");
    }
%>
</body>
</html>