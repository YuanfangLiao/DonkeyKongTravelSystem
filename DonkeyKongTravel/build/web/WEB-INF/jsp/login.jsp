<%-- 
    Document   : login
    Created on : 2018-5-25, 14:21:19
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DonkeyKong LoginPage</title>    
        <base href="${pageContext.request.contextPath}/"/>
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
                height: 550px;
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

            #loginTable {
                /*margin: 0px auto;*/
                margin-left: 27%;
                margin-top: 50px;
            }


            #loginTable input {
                width: 150px;
                height: 30px;
                border-radius: 20px;
                border: 1px solid #000000;
                box-shadow: 5px 5px 2.5px dimgray;
                text-indent: 20px;
                text-decoration: none;
            }

            #loginTable label {
                font-size: 18px;
            }

            #loginForm button {
                font-family: "arial black";
                margin-top: 50px;
                width: 250px;
                height: 40px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 18px;
                color: white;
                box-shadow: 5px 5px 2.5px dimgray;
            }

            #loginForm button:hover {
                background-color: #FF7F50;
            }

            #loginForm button:active {
                position: relative;
                top: 5px;
                left: 5px;
                box-shadow: none;
            }

            #loginForm {
                padding-top: 10px;
            }

            .leftTd {
                text-align: right;
            }

            footer {
                margin-top: 250px;
            }
            #goRegister{
                margin-top: 20px
            }
            #goRegister a:hover{
                color: #FF7F50;
            }
        </style>
    </head>

    <body style="background-color: #DCDCDC; background-image: url(static/img/yosemite.jpg);background-repeat:
          repeat;background-size: 100%;background-attachment: fixed;">

        <div id="container">
            <h1>Welcome DongkeyKong Travel </h1>
            <h2>Please Login here</h2>
            <div id="loginForm">
<!--                <form method="post">-->
                    <table id="loginTable" cellspacing="10px">
                        <tr>
                            <td class="leftTd">
                                <label for="id">ID:</label>
                            </td>
                            <td>
                                <input type="text" id="id" name="id" />

                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="password">Password:</label>
                            </td>
                            <td>
                                <input type="password" id="password" name="password" />
                            </td>
                        </tr>
                    </table>

                    <button type="submit" id="login">Login</button>
<!--                </form>-->
                <p id="goRegister">I have no account ,I want to <a href="register.htm">Register</a> an Account</p>
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
        <script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript" ></script>
        <script type="text/javascript">
            $("#login").click(function () {
                var id = document.getElementById("id").value;
                var password = document.getElementById("password").value;
                $.ajax({
//                    async: false,
                    url: "login.do",
                    data: {
                        id: id,
                        password: password
                    },
                    type: "post",
                    success: function (data) {
                        if (data == "0") {
                             window.location.href = 'index.htm';
                        } else if (data == "1") {
                            alert("Id/password is Wrong")
                        } else if (data == "2") {
                            alert("There is no user exist")
                        }
                         else if (data == "3") {
                            alert("User disabled.Please contact administrator at 411023223@qq.com")
                        }

                    }
                })
            });
        </script>

    </body>

</html>
