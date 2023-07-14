<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 실패</title>
</head>

<body>
Home > 로그인 실패 화면
<hr>
로그인을 실패하였습니다! <br><br>



<form name = "loginForm" action = "01_reponseLoginform.jsp" method = "post">
    <input type = "submit" value = " LogIn ">
</form>
<%-- 로그인에 실패하면
    1. action = LoginForm : 로그인 폼 화면으로 돌아가는 액션을 할 form 생성
    2. 어떨 때 그 액션 발휘되냐면 submit 버튼 눌렸을 때 --%>

</body>
</html>