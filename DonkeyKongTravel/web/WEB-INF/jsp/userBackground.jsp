

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DonkeyKongTravel UserBackGround</title>
        <!--引入jQuery文件-->        
        <link rel="stylesheet" type="text/css" href="/DonkeyKongTravel/static/css/userbgstyle.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css"/>
        <script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript" ></script>
        <!--home界面的css和js-->
        <script src="/DonkeyKongTravel/static/js/userBackground.js" type="text/javascript" ></script>

    </head>
    <body >
        <!--这是网页顶部logo 以及LogOut-->
        <div class="header">
            <img id="logo" src="/DonkeyKongTravel/static/img/logo.png" alt="logo"/>
            <h1>Donkey Kong User Center</h1>
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
                                    Welcome DonkeyKong User Center, ${user.name} 
                                </h1>
                                <br/><br/>
                                <h2>You can manage your Account using functions showed in the right part of the page</h2>
                                <br/><br/>
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
                            <div id="menu_manageOrderedHotel" class="menu_function" onclick="navmanageOrderedHotel()">
                                <p>Manage<br/> Ordered hotel</p>
                            </div>
                            <div id="menu_manageYourTravel" class="menu_function" onclick="navManageYourTravel()">
                                <p>Feed<br/> Back</p>
                            </div>
                            <div id="menu_manageYourGroupTravel" class="menu_function" onclick="navManageYourGroupTravel()">
                                <p>Manage<br/> Your Group Travel</p>
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


