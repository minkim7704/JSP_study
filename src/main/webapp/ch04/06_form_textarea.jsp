<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset = "UTF-8">
  <title> Free Board </title>
</head>
<%-- 여러 줄의 텍스트를 입력할 수 있는 폼을 생성해 주로 상품평이나 자유게시판 등을 수행
     텍스트 영역의 너비는 cols, 높이는 rows 속성으로 지정
     텍스트 영역에서 사용된 태그와 띄어쓰기 등의 옵션 모두 그대로 적용됨 --%>

<body>
  Home > Free Board
  <hr>
  <form action = "#" method = "get">
    <fieldset style = "width:200px">
      <legend> 자유 게시판 </legend><p>
        <textarea class = "message_area" cols = "30" rows ="3">
        </textarea>
      <div align = "center">
        <input type ="submit" value = " Send "> &nbsp;
        <input type = "reset" value = " Back ">
      </div>
    </fieldset>
  </form>
</body>
</html>
