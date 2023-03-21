<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact btvn</title>
    <style>
        body {
            background: #59ABE3;
            margin: 0
        }

        .form {
            width: 340px;
            height: 540px;
            background: #e6e6e6;
            border-radius: 8px;
            box-shadow: 0 0 40px -10px #000;
            /* margin: calc(50vh - 220px) auto; */
            margin: 80px auto;
            padding: 20px 30px;
            max-width: calc(100vw - 40px);
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
            position: relative
        }

        h2 {
            margin: 10px 0;
            padding-bottom: 10px;
            width: 100%;
            color: #78788c;
            border-bottom: 3px solid #78788c
        }

        input {
            width: 100%;
            /* padding: 10px; */
            box-sizing: border-box;
            background: none;
            outline: none;
            resize: none;
            border: 0;
            font-family: 'Montserrat', sans-serif;
            transition: all .3s;
            border-bottom: 2px solid #bebed2
        }
        td{
            padding: 10px;
            font-size: 12px;
        }
        input:focus {
            border-bottom: 2px solid #78788c
        }

        /* p:before {
            content: attr(type);
            display: block;
            margin: 28px 0 0;
            font-size: 14px;
            color: #5a5a5a
        } */

        button {
            float: right;
            padding: 8px 12px;
            margin: 8px 0 0;
            font-family: 'Montserrat', sans-serif;
            border: 2px solid #78788c;
            background: 0;
            color: #5a5a6e;
            cursor: pointer;
            transition: all .3s
        }

        button:hover {
            background: #78788c;
            color: #fff
        }
        input #nam{
            display: inline-block;
        }
        .gen{
            display: flex;
        }
    </style>
</head>

<body>
    <div class="form">
        <h2>Registration form</h2>
        <sf:form modelAttribute="contactModelVN" action="${base }/contactvn-spring-form" method="post">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><sf:input path="firstName" name="firstName" id="firstName" placeholder="Họ..."></sf:input></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><sf:input path="lastName" name="lastName" id="lastName" placeholder="Tên..."></sf:input></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><sf:input path="email" name="email" id="email" placeholder="Email..."></sf:input></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><sf:input path="password" name="password" id="password"></sf:input></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td><sf:input path="day" name="day" id="day"></sf:input></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <div class="gen">
                            <sf:radiobutton path="gioitinh" name="gioitinh" id="nam" value="Nam"></sf:radiobutton><label for="nam">Nam</label>
                            <sf:radiobutton path="gioitinh" name="gioitinh" id="nu" value="Nu"></sf:radiobutton><label for="nu">Nữ</label>
                            <sf:radiobutton path="gioitinh" name="gioitinh" id="khac" value="Khac"></sf:radiobutton><label for="khac">Khác</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><sf:input path="mobile" name="mobile" id="mobile" placeholder="SĐT:.."></sf:input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit">Send</button></td>
                </tr>
            </table>
        </sf:form>
    </div>
</body>

</html>