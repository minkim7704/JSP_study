<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 입력 데이터의 길이 체크 </title>
    <script type = "text/javascript">
        <%-- document.폼 이름. 입력 양식 이름.value.length : 데이터 길이 검사하는 형식
             document.loginForm.id.value.length --%>
        function checkFun()
        // 입력 데이터 길이를 체크해주는 함수
        {
            var f = document.loginForm;
            // 데이터 길이 검사 형식을 변수로 저장해서 변수 이름으로 대체할 수 있음..
            if (f.id.value.length < 4 || f.id.value.length > 16)
            {
                alert("아이디는 4 ~ 16자 이내로 입력해야 합니다.");
                f.id.focus();
                return false;
            }
            else if(f.passwd.value.length < 8)
            {
                alert("비밀번호는 8자 이상으로 입력해야 합니다.");
                f.passwd.focus();
                return false;
            }
            else return true;
        }
        // 함수 입력 시 괄호랑 세미콜론 주의깊게 써보자고..
    </script>
</head>


<body>
Home > 아이디와 비밀번호 입력
<hr>
<form name = "loginForm" action = "03_dataLength_success.jsp"
      method = "post" onsubmit = "return checkFun()">
    ID : <br>
    <input type = "text" name = "id"><br><br>
    PASSWORD : <br>
    <input type = "password" name = "passwd"><br><br>


    <input type = "submit" value = " Login ">
</form>
</body>
</html>