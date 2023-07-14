<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset = "UTF-8">
        <title> 회원 가입 </title>
    </head>

    <body>
        Home > Join the Membership
        <hr>
        <form action = "08_form_membership02.jsp" name = "person_info" method = "get">
            <fieldset style = "width:330px">
                <legend> 개인 정보 입력 </legend><p>
                ID : <br>
                <input type = "text" name ="p_id" size = "16"><br><br>

                PASSWORD : <br>
                <input type = "password" name = "p_pw" size = "16"><br><br>

                NAME : <br>
                <input type = "text" name = "p_name" size = "16"><br><br>

                CONTACT : <br>
                <select name = "choice" style = "width: 60px; height: 20.5px">
                    <option value = "choice"> 선택 </option>
                    <option value = "KT"> KT </option>
                    <option value = "SKT"> SKT </option>
                    <option value = "LGU+"> LGU+ </option>
                </select>
                <input type = "text" maxlength = "3" size = "3" name = "phone1"> -
                <input type = "text" maxlength = "4" size = "4" name = "phone2"> -
                <input type = "text" maxlength = "4" size = "4" name = "phone3"> <br><br>

                GENDER : <br>
                <input type = "radio" name = "gender" value = "Male">Male
                <input type = "radio" name = "gender" value = "Female">Female<br><br>

                HOBBY : <br>
                <input type = "checkbox" name = "hobby" value = "운동">운동
                <input type = "checkbox" name = "hobby" value = "독서">독서
                <input type = "checkbox" name = "hobby" value = "여행">여행
                <input type = "checkbox" name = "hobby" value = "음악감상">음악감상 <br><br>

                SELF INTRODUCTION : <br>
                <textarea name = "Introduction" cols = "50" rows = "3">
                </textarea>
                <hr>

                <div align = "center">
                    <input type = "submit" value = " Submit "> &nbsp; &nbsp;
                    <input type = "reset" value = " Back ">
                </div><br>
            </fieldset>
        </form>
    </body>
</html>