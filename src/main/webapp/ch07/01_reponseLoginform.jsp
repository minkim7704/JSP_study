<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>내장 객체</title>
    <%-- response 내장 객체 : JSP 웹 페이지의 실행 결과를 웹 브라우저에 반환해줄 때 사용
                        서버는 클라이언트에 대한 응답을 response 객체를 통해 처리한다. --%>

</head>

<%-- 쿠키 --%>
<%--
- 사이트 접속 시 생성되는 정보를 담은 4KB 이하 크기의 임시 파일
- 네트워크 환경에서 클라이언트와 웹 서버 간의 상태를 지속적으로 유지하기 위해 사용
- 세션과 다른 점: 로그인 상태 정보를 사용자 컴퓨터인 클라이언트에 저장
    (세션은 웹 서버에 저장)
- 불순한 의도로 복사되거나 해킹 등에 의해 개인 정보가 탈취될 수 있음

- 클라이언트의 정보를 웹 브라우저에 저장.
- 이후 웹 서버로 서비스 요청할 경우 : 쿠키를 읽어 새로운 웹 브라우저인지
                                이전에 요청했던 웹 브라우저인지 구별
- 쿠키 생성되면 쿠키 삭제되기 전까지 웹 브라우저는 서버에 쿠키를 제공할 수 있음
--%>
<body>
Home > 로그인 폼 화면
<hr>
<form name = "loginForm" action = "01_responseLogin_process.jsp" method = "post">
                            <%-- 로그인 폼에 입력된 정보를 process.jsp 에 보낸다. --%>
    ID : <br>
    <input type = "text" name = "id"><br><br>
    Password : <br>
    <input type = "password" name = "passwd"><br><br>
    <input type = "submit" value = " LogIn ">
</form>

</body>
</html>