<%-- 
    Document   : header
    Created on : 2018-6-6, 22:04:18
    Author     : liao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>head</title>
    </head>
    <body>
        <!-- header  -->
        <div class="header">
            <nav class="navBar" role="navigation">
                <!-- For logo -->
                <div class="logo">
                    <a href="index.htm" class="titleText">
                        <b>&nbsp;Donkey Kong</b>
                        <br/>
                        <b style="font-size: 25px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;by TC</b>
                    </a>
                </div>
                <!-- For logo End -->
                <!-- navigation -->
                <nav style=" float: right; margin-right:50px;height:280px; align:central; margin-top:30px;overflow: hidden;z-index: 999;">
                    <ul id="nav1">
                        <li>
                            <div class="nav">
                                <a id="nav" href="index.htm">
                                    <b id="homeMe">Home</b>
                                </a>
                            </div>
                        </li>

                        <li>
                            <div class="nav">
                                <a id="nav" href="welcomeGroups.htm">
                                    <b id="groupMe">Groups &nbsp;&nbsp;</b>
                                </a>
                            </div>
                        </li>

                        <li>
                            <a href="#Menu=ChildMenu1" id="nav"  onclick="DoMenu('ChildMenu1')"><b class="strategyMe">Strategy</b></a>
                            <div id="PARENT">
                                <ul id="ChildMenu1" class="collapsed">
                                    <li>
                                        <a href="qingdaoHotel.htm" id="nav2">Hotel</a>
                                    </li>
                                    <li>
                                        <a href="qingdaoAtt.htm" id="nav2">Attraction</a>
                                    </li>
                                    <li>
                                        <a href="food.htm" id="nav2">Food</a>
                                    </li>
                                    <li>
                                        <a href="feedBack.htm" id="nav2">Feed Back</a>
                                    </li>
                                    <li>
                                        <br/>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li>
                            <div class="nav">
                                <a id="nav" href="aboutUs.htm">
                                    <b id="contactMe">Contact</b>
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- navigation end -->
            </nav>
        </div>
        <!-- header END -->
    </body>
</html>
