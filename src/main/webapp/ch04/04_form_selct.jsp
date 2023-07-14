<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
      <meta charset = "UTF-8">
      <title> Language Choice </title>
    </head>

    <%--  폼 태그 안에서 사용되는 select 태그는 여러 개의 항목이 나타나는
          콤보 박스를 만들 때 사용된다.
          select 태그 안에서 Option 태그로 선택할 값들을 지정
          특정 항목을 기본값으로 지정하려면 option 태그 내에서 selected 선언--%>

    <body>
      Home > Language
      <hr>
        <form action = "#" method = "get">
          <fieldset style = "width:150px">
            <legend> 언어 선택 </legend> <p>
            <select name = "language">
              <option value = "choice"> === 선택 === </option>
              <option value = "korean"> 한국어 </option>
              <option value = "english"> 영어 </option>
              <option value = "chinese"> 중국어 </option>
              <option value = "japanese"> 일본어 </option>
              <option value = "spanish"> 스페인어 </option>
            </select>
          </fieldset>
        </form>
    </body>
</html>
