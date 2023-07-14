<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%-- 정규 표현식
     = 폼 화면에서 데이터를 입력할 때 특정한 규칙을 가진 문자열의 집합
     = 주민번호나 이메일 등 특정 형식의 패턴이 일정한 데이터를 검사할 때 사용
     = 정규 표현식 선언은 슬래시(/)로 묶어준다.
     var var_name = /regularExpression/;
     = 폼 화면에서 입력한 값에 대한 데이터 형식의 유효성을 검사할 때는 test() 메소드를 사용한다.
     패턴 정규 표현식을 선언하는 유형은 인터넷에서 찾아보자..--%>
<html>
<head>
    <meta charset="UTF-8">
    <title> 데이터 형식의 유효성 검사 </title>
    <script type = "text/javascript">
        function checkFun()
        {
            var f = document.loginForm;

            var name = f.sname.value;
            var reqExpName = /^[a-z | A-Z | ㄱ-ㅎ | ㅏ-ㅣ | 가-힣]/;

            var fw = f.passwd.value;
            var regExpPasswd = /^[0-9]*$/;

            if (!regExpName.test(name))
            {
                alert("닉네임은 숫자로 시작할 수 없습니다.");
                f.sname.focus();
                return false;
            }
            if (!regExpPasswd.test(pw))
            {
                alert("비밀번호는 숫자로만 입력해 주세요.");
                f.passwd.focus();
                return false;
            }
            else return true;
        }
    </script>
</head>

<body>
Home > 닉네임과 비밀번호 입력
<hr>
    <form name="loginForm" action = "05_regularExpression_success.jsp"
    method = "post" onsubmit = "return checkFun()">
        닉네임 : <br>
        <input type = "text" name = "sname"><br><br>
        비밀번호 : <br>
        <input type = "password" name = "passwd"><br><br>
        <input type = "submit" value = " Apply ">
    </form>
</body>
</html>