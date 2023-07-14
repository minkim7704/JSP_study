<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset = "UTF-8">
        <title> Department Choice </title>
    </head>

    <%--  form login, form input에서는 form 태그 안에서 각각의 요소들을
          나열해주었다. 이제는 fieldset 태그와 legend 태그를 이용해서 그 요소들을
          그룹화 해줄 것이당. 그룹화하면서 폼 요소들의 너비는 픽셀 단위로 선언한다. --%>
    <body>
        Home > Department
        <hr>
        <form action ="#" method = "get">
            <fieldset style = "width: 180px">
                <legend> 학과 선택 </legend>
                학번: <br>
                <input type = "text" name = "id"> <br><br>
                지원학과:
                <hr>
                <input type = "radio" name = "dept"> Artificial Intelligence <br>
                <input type = "radio" name = "dept"> Bio <br>
                <input type = "radio" name = "dept"> Data Science
                <hr>

                <div align = "center">
                    <input type = "submit" value = " Finish "> &nbsp;
                    <input type = "reset" value = " Cancel ">
                </div>
            </fieldset>
        </form>
    </body>
</html>
