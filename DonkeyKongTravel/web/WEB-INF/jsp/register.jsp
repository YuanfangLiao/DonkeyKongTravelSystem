<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DonkeyKong LoginPage</title>
        
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <style type="text/css">
            * {
                margin: 0;
                padding: 0;
            }

            #container {
                text-align: center;
                width: 700px;
                height: 590px;
                margin: 0px auto;
                background-color: rgba(255, 255, 255, 0.7);
                margin-top: 250px;
                border-bottom-right-radius: 50px;
                border-top-left-radius: 50px;
                box-shadow: 10px 10px 5px dimgray;
            }

            #container>h1 {
                font-family: "arial black";
                padding-top: 70px;
            }

            #container>h2 {
                padding-top: 30px;
            }

            #registerTable {
                /*margin: 0px auto;*/
                margin-left: 27%;
                margin-top: 30px;
            }

            .inputNormal input {
                width: 150px;
                height: 25px;
                border-radius: 20px;
                border: 1px solid #000000;
                box-shadow: 5px 5px 2.5px dimgray;
                text-indent: 20px;
                text-decoration: none;
            }

            #registerForm label {
                font-size: 18px;
            }

            #registerForm button {
                font-family: "arial black";
                margin-top: 40px;
                width: 250px;
                height: 40px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 18px;
                color: white;
                box-shadow: 5px 5px 2.5px dimgray;
            }

            #registerForm button:hover {
                background-color: #FF7F50;
            }

            #registerForm button:active {
                position: relative;
                top: 5px;
                left: 5px;
                box-shadow: none;
            }

            #registerForm {
                padding-top: 30px;
            }

            .leftTd {
                text-align: right;
            }

            footer {
                margin-top: 250px;
            }
            #goLogin{
                margin-top: 20px
            }
            #goLogin a:hover{
                color: #FF7F50;
            }
            #title{
                width: 20px;
            }
           
        </style>
    </head>

    <body style="background-color: #DCDCDC; background-image: url(static/img/eicaption.jpg);background-repeat:
          repeat;background-size: 100%;background-attachment: fixed;">

        <div id="container">
            <h1>Welcome DongkeyKong Travel </h1>
            <h2>Please Register here</h2>
            <div id="registerForm">


                <form method="post">
                    <table id="registerTable" cellspacing="10">
                        <tr>
                            <td class="leftTd">
                                <label for="id">Id:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="id" name="id" required="required" pattern="^[A-Za-z0-9]{1,20}$" title="Please enter number or A-z less than 20" />
                            </td>
                        </tr>

                        <tr>
                            <td class="leftTd">
                                <label for="password">Password:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="password" id="password" name="password"  required="required" pattern="^[a-zA-Z]\w{5,17}$" title="Plese Start using A-Z, enter more than 6 and less than 18"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="name">Name:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="name" name="name"  required="required" pattern="^[A-Za-z]{1,20}$" title="Please Enter using A-Z less than 20 words" />
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="title">title:</label>
                            </td>
                            <td style=" text-align: left;">
                                <input type="radio" id="title" name="title" value="User"  required="required"/>User<br/>
                                <input type="radio" id="title" name="title" value="Administrator"  required="required"/>Administrator
                            </td>
                        </tr>

                    </table>
                    <button type="submit" id="register">Register</button>
                </form>
                <p id="goLogin">I have a naccount ,I want to <a href="login.htm">Login</a></p>


            </div>
        </div>


    <footer>
        <div style="text-align: center; ">
            <a href="#" style="text-decoration: none;">
                <img src="/DonkeyKongTravel/static/img/logo.png" class="footerLogo" /> </a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <img src="/DonkeyKongTravel/static/img/&.png" class="footerLogo" /> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://www.qdu.edu.cn/" style="text-decoration: none;">
                <img src="/DonkeyKongTravel/static/img/qdu.png" class="footerLogo" /> </a>
        </div>

        <div id="footer">
            <p> Three Cores (TC) 2018 Qingdao University
                <a href="#">Donkey Kong</a>. All Rights Reserved.
                <br/>
        </div>
        <br/>
    </footer>


</body>

</html>


<!--<script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $("#register").click(function () {
        var id = document.getElementById("id").value;
        var password = document.getElementById("password").value;
        var name = document.getElementById("name").value;
        var title = $("input[name='title']:checked").val();
        $.ajax({
            url: "register.do",
            data: {
                id: id,
                password: password,
                name: name,
                title: title
            },
            type: "post",
            success: function (data) {
                if (data == "1") {
                    window.location.href = "login.htm"
                } else if (data == "0") {
                    alert("用户已存在")
                }

            }
        })
    });
</script>-->
