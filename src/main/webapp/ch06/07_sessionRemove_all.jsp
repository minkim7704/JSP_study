<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 세션의 모든 속성 삭제하기 </title>
<%--  다중 세션 삭제할 때 session.invalidate();  --%>
</head>

<body>
Home > 다중 세션 삭제하기
<hr>

-- 다중 세션 삭제 전 -- <br>
<%
    String u_id = (String) session.getAttribute("memberId");
    String u_pw = (String) session.getAttribute("memberPw");
    /* getAttribute() 메소드는 object형을 반환하기 때문에
        (String) 으로 반환해준다고 말하고
        변수도 String 변수로 만들어 준다. */

    out.println("1. 아이디 세션 속성값 : " + u_id + "<br>");
    out.println("2. 비밀번호 세션 속성값 : " + u_pw + "<br><br>");


    if (request.isRequestedSessionIdValid() == true)
    {
        out.println(" >> 유효한 세션입니다. <br><br>");
    }
    else
    {
        out.println(" >> 유효하지 않은 세션입니다. <br><br>");
    }

    session.invalidate();
    // 다중 세션 삭제
%>

-- 다중 세션 삭제 후 -- <br>
<%
    if (request.isRequestedSessionIdValid() == true)
    {
        out.println(" >> 유효한 세션입니다. <br><br>");
    }
    else
    {
        out.println(" >> 유효하지 않은 세션입니다. <br><br>");
    }
%>
</body>
</html>