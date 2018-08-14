<%-- 
    Document   : rightBody
    Created on : 2018-6-6, 22:09:04
    Author     : liao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>right Page</title>
    </head>
    <body>
        <div id="rightBody">

            <div id="goBackEnd" style="margin: 15px;margin-top: 120px;">
                <p id="welcomeText">Welcome ${user.name}</p>
                <button class="inRightButton" id="backgroundButton">Go BackGround</button ></a><br/>
                <a href="login.htm" ><button class="inRightButton" >Log out</button></a>
            </div>

        </div>
        <script type="text/javascript">
            $("#backgroundButton").click(function () {
                $.ajax({
//                    async: false,
                    url: "background.do",
                    type: "post",
                    success: function (data) {
                        if (data == "userBackground") {
                            window.location.href = 'userBackground.htm';
                        } else if (data == "adminBackground") {
                            window.location.href = 'adminBackground.htm';
                        } 

                    }
                })
            });
        </script>
    </body>
</html>
