<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<%-- 여러 개의 세션 속성 이름에 대한 속성값을 가져오려면
     getAttributeNames()를 사용한다.
     이 메소드의 반환 유형은 Enumeration 객체 타입이기 때문에 page 디렉티브 태그에서
     import 속성을 사용해 java.util.Enumeration을 설정해야 한다. --%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 모든 세션 정보 </title>
</head>

<body>
Home > 모든 세션 정보 확인하기
<hr>
<%
    String name = "";
    String value = "";

    Enumeration en = session.getAttributeNames();

    int cnt = 0;
    while (en.hasMoreElements())
    {
        cnt++;
        name = en.nextElement().toString();
        value = session.getAttribute(name).toString();

        out.println(cnt + ". 세션의 속성 이름 : [ " + name + " ] <br>");
        out.println(cnt + ". 세션의 속성 값 : [ " + value + " ] <br>");
    }
%>
</body>
</html>