<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title> 데이터 입력 유무 체크 </title>
    <%--  입력 안하면 무슨 일이 생기는지 볼까용  --%>
    <script type = "text/javascript">
        function checkFun()
        {
            if (document.deptForm.dept.value == "")
            {
                alert ("신청할 전공 분야를 입력해 주세요.");
                document.deptForm.dept.select();
            }
        }
    </script>
</head>

<body>
Home > 전공분야 신청
<hr>
<form name = "deptForm">
    전공 :
    <input type = "text" name = "dept" size = "30">
    <input type = "submit" value = " Apply " onclick = "checkFun()">
</form>
</body>
</html>