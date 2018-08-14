<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <style type="text/css">
            #contactMe{
                border-bottom: 5px solid #00ADFD;
                color: white;
            }
            ﻿#leftBody h2{
                margin-top: 40px;
            }
        </style>
    </head>
    ﻿﻿
    <body style="margin:0 auto ;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">
                ﻿<div style="text-align: center ;margin-top: 100px">
                    <img src="static/img/welcome.gif" width="400px" /><br/><br/>
                    <h2>Welcome visit our website!!!</h2>
                    <h3>We are team TC from Qingdao University Java2</h3>
                    <h4>Team members: Oreo , Murphy , Oscar</h4><br/>
                    <h4>Advisor: RT</h4><br/>

                    <img src="static/img/logo.png" width="200px"/>
                    <img src="static/img/qdu.png" width="200px"/><br/>
                    <img src="static/img/niit1.jpg" width="200px"/><br/>
                </div>

            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>
