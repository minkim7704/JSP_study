<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding ="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset = "UTF-8">
    <title> 회원 가입 </title>
    <script type = "text/javascript">
        function dataLength() {
            var f = document.person_info;
            if (f.p_id.value.length < 4 || f.p_id.value.length > 16) {
                alert("아이디는 4 ~ 16자 이내로 입력해주세요.")
                f.p_id.select();
                return false;
            }
            else if (f.p_pw.value.length < 8 || f.p_pw.value.length > 12) {
                alert("패스워드는 8 ~ 12자 이내로 입력해주세요.")
                f.p_pw.focus();
                return false;
            }
            else if (f.p_birth.value.length < 8) {
                alert("생년월일을 다시 써주세요. (예: 19990101)")
                f.p_birth.focus();
                return false;
            }
            else
                alert("회원가입이 완료 되었습니다.")
                return true;
        }
    </script>
</head>

<body>
Home > Join the Membership
<hr>
    <form action = "회원가입화면action.jsp" name = "person_info"
          method = "post" onsubmit = "return dataLength()">
        <fieldset style = "width:330px">
            <legend> 개인 정보 입력 </legend><p>
            ID : <br>
            <input type = "text" name ="p_id" size = "16"><br><br>

            PASSWORD : <br>
            <input type = "password" name = "p_pw" size = "16"><br><br>

            이름 : <br>
            <input type = "text" name = "p_name" size = "16"><br><br>

            성별 : <br>
            <input type = "radio" name = "gender" value = "Male">남성
            <input type = "radio" name = "gender" value = "Female">여성<br><br>

            생년월일 : <br>
            <input type = "text" maxlength = "8" name = "p_birth" placeholder="예: 19990101"><br><br>

            연락처 : <br>
            <select name = "telecom" style = "width: 60px; height: 20.5px">
                <option value = "choice"> 선택 </option>
                <option value = "KT"> KT </option>
                <option value = "SKT"> SKT </option>
                <option value = "LGU+"> LGU+ </option>
            </select>
            <input type = "text" maxlength = "3" size = "3" name = "phone1"> -
            <input type = "text" maxlength = "4" size = "4" name = "phone2"> -
            <input type = "text" maxlength = "4" size = "4" name = "phone3"> <br><br>

            취미 : <br>
            <input type = "checkbox" name = "hobby" value = "운동">운동
            <input type = "checkbox" name = "hobby" value = "독서">독서
            <input type = "checkbox" name = "hobby" value = "여행">여행
            <input type = "checkbox" name = "hobby" value = "음악감상">음악감상 <br><br>

            자기소개 : <br>
            <textarea name = "Introduction" cols = "50" rows = "3" placeholder="100자 이내로 작성해주세요."></textarea>
            <hr>

            <div align = "center">
                <input type = "submit" value = " Submit "> &nbsp; &nbsp;
                <input type = "reset" value = " Back ">
            </div><br>
        </fieldset>
    </form>
</body>
</html>