<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 단일 세션 정보 </title>
</head>

<body>
Home > 단일 세션 정보 확인하기
<%-- getAttribue() 메소드를 사용하면
     세션에 저장된 세션 속성값을 가지고 올 수 있다.
     getAttribute(String name)
     반환 유형이 object형이기 때문에 반드시 형 변환을 수행해서 사용해야 한다!--%>
<hr>
<%
    String u_id = (String) request.getAttribute("memberId");
    String u_pw = (String) request.getAttribute("memberPw");

    /* 세션 속성값은 object형 이니까.
        1. (String)으로 반환해주세요.
        2. request.getAttribute() 특정 세션의 정보를 얻을게.
        3. "memberId" / "memberPw"의 속성값을
        4. String 변수인 u_id / u_pw에 넣을게
    */
    out.println("1. 아이디 세션 속성값 : " + u_id + "<br>");
    out.println("2. 비밀번호 세션 속성값 : " + u_pw + "<br>");
%>
</body>
</html>