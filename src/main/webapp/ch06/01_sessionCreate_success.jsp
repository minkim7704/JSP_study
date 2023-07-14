<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>세션 생성</title>
<%--  아이디 space 비밀번호 123456 으로 로그인 수행했을 경우만 세션이 생성되도록 설정할 것  --%>
</head>

<body>
Home > 세션 생성하기
<%-- 세션을 생성할 때에는 session 내장 객체의 setAttribute() 메소드를 사용해서 생성한다.
    setAttribute(String name, Object value) : (생성할 세션의 이름, 세션의 속성 값)--%>
<hr>
<%
    String u_id = request.getParameter("id");
    String u_pw = request.getParameter("passwd");

    if (u_id.equals("space") && u_pw.equals("123456")) {
        session.setAttribute("memberId", u_id);
        session.setAttribute("memberPw", u_pw);

        out.println("새로운 세션 성공 ! <br>");
        out.println("[ " + u_id + " ]님이 입장하였습니다. ");
    }
    else {
        out.println("세션 생성 실패 ! <br>");
        out.println("다시 시도해 보세요. ");
    }
%>
</body>
</html>