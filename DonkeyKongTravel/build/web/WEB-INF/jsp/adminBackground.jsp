

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DonkeyKongTravel AdminBackGround</title>
        <!--引入jQuery文件-->        
        <link rel="stylesheet" type="text/css" href="/DonkeyKongTravel/static/css/adminbgstyle.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css"/>
        <script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript" ></script>
        <!--home界面的css和js-->
        <script src="/DonkeyKongTravel/static/js/home.js" type="text/javascript" ></script>

    </head>
    <body >
        <!--这是网页顶部logo 以及LogOut-->
        <div class="header">
            <img id="logo" src="/DonkeyKongTravel/static/img/logo.png" alt="logo"/>
            <h1>Donkey Kong Manage System</h1>
        </div>


        <div id="mainDiv" > 
            <table  id="mainTable">
                <tr>

                    <td id="leftTable">
                        <!--这是主要界面-->
                        <div class="main_interface" style="width:100%">
                            <div class="nav_main_interface">
                                <br/>
                                <h1>
                                    Welcome using manage System, ${user.name} 
                                </h1>
                                <br/><br/>
                                <h2>You can manage the System using functions showed in the right part of the page</h2>
                                <img src="static/img/logo.png" width="100px"/>
                            </div>
                        </div>

                    </td>

                    <td id="rightTable">
                        <!--这是右侧边的功能菜单-->
                        <div class="rightmenu">

                            <!--div类型的侧边导航-->
                            <div id="menu_changePassword" class="menu_function" onclick="navChangePassword()">
                                <p>Change<br/> Password</p>
                            </div>
                            <div id="menu_manageUsers" class="menu_function" onclick="navManageUsers()">
                                <p>Manage<br/> Users</p>
                            </div>
                            <div id="menu_manageAttractions" class="menu_function" onclick="navManageAttractions()">
                                <p>Manage<br/> Attractions</p>
                            </div>
                            <div id="menu_manageHotel" class="menu_function" onclick="navManageHotel()">
                                <p>Manage<br/> Hotel</p>
                            </div>
                            <div id="menu_manageFood" class="menu_function" onclick="navManageFood()">
                                <p>Manage<br/> Food</p>
                            </div>
                            <div id="menu_groupTravel" class="menu_function" onclick="navGroupTravel()">
                                <p>Group<br/> Travel</p>
                            </div>
                            <div id="menu_groupTravel" class="menu_function" onclick="navFeedBack()">
                                <p>View<br/>FeedBack</p>
                            </div>
                            <a href="login.htm">
                                <div id="menu_groupTravel" class="menu_function1">
                                <p>Log out</p>
                            </div>
                            </a>
                            <a href="index.htm">
                            <div id="menu_groupTravel" class="menu_function1" onclick="index.htm">
                                <p>Back to <br/> index</p>
                            </div>
                            </a>
                        </div>
                    </td>


                </tr>

            </table>   
        </div>


        <div class="footer">
            <p> Three Cores (TC) 2018 Qingdao University
                <a href="index.htm">Donkey Kong</a>. All Rights Reserved.
                <br/>
        </div>


    </body>
</html>


