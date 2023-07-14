<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 쿠키 삭제</title>
<%--  쿠키 클래스는 쿠키 삭제 기능이 없다.
      setMaxAge() 메소드를 사용해서 삭제.
      1. setMaxAge()의 매개변수 = 0 지정 : 유효시간 만료되면 쿠키 자동 삭제되라고 선언
      2. 쿠키 유효 시간 = '초' 단위
      3. 유효시간 1시간으로 설정하고 싶으면 setMaxAge(1 * 60 * 60) 선언 --%>
</head>

<body>
<%--
쿠키 삭제하기..
Cookie cooks = new Cookie("userID", "u_id");    // 쿠키 이름 userID, 쿠키 값 u_id인 쿠키 생성
cooks.setMaxAge(0);                             // 유효시간 0으로 지정
response.addCookie(cooks);
--%>

<%
    Cookie[] cooks = request.getCookies();
    // 쿠키 객체 여러개 가져와    // 쿠키 객체 가져와용

    for (int cnt = 0; cnt < cooks.length; cnt++) {
        cooks[cnt].setMaxAge(0);
        response.addCookie(cooks[cnt]);
    }
    response.sendRedirect("03_cookieInformation.jsp");
%>
</body>
</html>