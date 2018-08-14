                                                        <%-- 
    Document   : changePassowrd
    Created on : 2018-6-3, 14:28:35
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>changePassword</title>
        <base href="${pageContext.request.contextPath}/"/>
        <style type="text/css">
            #passDiv{
                margin:0px auto;
                margin-top: 30px;
                margin-left: 30px;
            }
            #passDiv input{
                width: 150px;
                height: 30px;
                border-radius: 20px;
                border: 1px solid #000000;
                box-shadow: 2px 2px 2px dimgray;
                text-indent: 20px;
                text-decoration: none;
            }
            #passDiv button {
                font-family: "arial black";
                width: 150px;
                height: 30px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 18px;
                color: white;
                box-shadow: 2px 2px 1px dimgray;
            }

            #passDiv button:hover {
                background-color: #FF7F50;
            }

            #passDiv button:active {
                position: relative;
                top: 2px;
                left: 2px;
                box-shadow: none;
            }
        </style>
        
    </head>
    <body>
        <div id="passDiv">
        <!--        <form  method="post">-->
        <label for="password">Please Enter Old Password:</label>
        <input type="password" id="oldPassword" name="oldPassword"  required="required"/><br/><br/>
        <label for="password">Please Enter New Password:</label>
        <input type="password" id="newPassword" name="newPassword"  required="required"  pattern="^[a-zA-Z]\w{5,17}$"  title="Plese Start using A-Z, enter more than 6 and less than 18"/><br/><br/>
        <label for="password">Please Enter New Password Again:</label>
        <input type="password" id="newPassword2" name="newPassword2"  required="required"  pattern="^[a-zA-Z]\w{5,17}$" title="Plese Start using A-Z, enter more than 6 and less than 18"/><br/><br/>
        <button type="submit" id="confirm">submit</button>
        </div>
       
        <!--        </form>   -->
        <script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript" ></script>
        <script type="text/javascript">
            $("#confirm").click(function () {
                var oldPassword = document.getElementById("oldPassword").value;
                var newPassword = document.getElementById("newPassword").value;
                var newPassword2 = document.getElementById("newPassword2").value;
                $.ajax({
//                    async: false,
                    url: "changePassword.do",
                    data: {
                        oldPassword: oldPassword,
                        newPassword: newPassword,
                        newPassword2: newPassword2
                    },
                    type: "post",
                    success: function (data) {
                        if (data == "0") {
                            alert("Change Password Success")
                            window.location.href = 'adminBackground.htm';
                        } else if (data == "1") {
                            alert("Old Password Incorrect!")
                        } else if (data == "2") {
                            alert("New Password should be diffrent from Old")
                        } else if (data == "3") {
                            alert("The input of new Password should be same")
                        }

                    }
                })
            });
        </script>
    </body>

</html>
