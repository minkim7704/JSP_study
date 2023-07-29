
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset = "UTF-8">
    <title> 로그인 화면 </title>
    <script>
        function dataInput() {
            var f = document.loginForm;
            if (f.id.value == "") {
                alert("아이디를 입력해주세요");
                f.id.focus();
                return false;
            }
            else if (f.pw.value == "") {
                alert("비밀번호를 입력해주세요.")
                f.pw.focus();
                return false;
            }
            else return true
        }
    </script>
</head>


<body>
Home > Login
<hr>
<form name="loginForm" action="로그인화면action.jsp" method="post"
    onsubmit="return dataInput()">
    ID : <br>
    <input type = "text" name = "id"> <br><br>

    PASSWORD : <br>
    <input type ="password" name="pw"> <br><br>

    &nbsp; <input type = "submit" value = " Login "> &nbsp;
    <input type = "reset" value = " Cancel ">
</form>
</body>
</html>

