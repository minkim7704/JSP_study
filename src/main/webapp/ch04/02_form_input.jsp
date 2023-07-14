<%--
  Created by IntelliJ IDEA.
  User: minkim
  Date: 2023/07/12
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding ="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset = "UTF-8">
        <title> 개인 정보 입력 </title>
    </head>

    <body>
    Home > Personal Information
    <hr>
        <form action = "#" name = "person_info" method = "get">
            Name :
            <input type = "text" name = "p_name" size = "10"><br><br>

            Number :
            <input type = "text" name = "e_code" size = "10"><br><br>

            Gender :
            <input type = "radio" name = "gender">Male
            <input type = "radio" name = "gender">Female <br><br>

            Hobby :
            <input type = "checkbox" name = "hobby1"> Workout
            <input type = "checkbox" name = "hobby2"> Book reading
            <input type = "checkbox" name = "hobby3"> Music listening <br>
            <hr> &nbsp;
            <input type = "submit" value = " Submit "> &nbsp;&nbsp;
            <input type = "reset" value = " Edit ">
        </form>
    </body>
</html>
