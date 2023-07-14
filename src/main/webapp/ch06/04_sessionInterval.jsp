<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 세션의 유효시간 </title>
<%--  세션의 유효시간 설정 방법 : setMaxInactiveInterval()메소드  --%>
<%--  session 내장 객체의 메소드.
      세션의 유효시간은 *초* 단위. 기본값은 1,800 초 (30 분)
      세션의 유효시간을 0 또는 음수로 설정한다면 유효시간이 없는 상태.
      따라서 세션 삭제 후에도 웹 서버에는 계속 남아있게 된다. 메모리 부족 현상으로 이어질 수 있다. 주의! --%>
</head>

<body>
Home > 세션의 유효시간 출력하기
<hr>
<%-- 세션 유효시간을 5분으로 변경,
     변경한 유효시간을 비교 출력해보장 --%>

-- 세션 유효시간 변경 전 -- <br>
<%
    int s_time = session.getMaxInactiveInterval() / 60;
        // get~ 유효시간 얻겠다~
        // 유효시간은 초 단위니까 분 단위로 바꾸려고 나누기 60.
    out.println("세션의 유효시간 : [ " + s_time + " 분 ] <br><br>");
%>

-- 세션 유효시간 변경 후 -- <br>
<%
    session.setMaxInactiveInterval(60 * 5);
    // set ~ 유효시간 설정한다~
    // 유효시간은 초 단위니까 60초 곱하기 5 = 5분에 해당하는 300초..
    s_time = session.getMaxInactiveInterval() / 60;
    out.println("세션의 유효시간 : [ " + s_time + " 분 ]");
%>
</body>
</html>