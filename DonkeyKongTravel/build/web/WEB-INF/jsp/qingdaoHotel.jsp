<%-- 
    Document   : Hotel
    Created on : 2018-6-7, 10:23:30
    Author     : 16530
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <link rel="stylesheet" type="text/css" href="static/css/colorbox.css"/>
        <link rel="stylesheet" type="text/css" href="static/css/zan.css"/>
        <link rel="stylesheet" type="text/css" href="static/css/hotelStyle.css"/>

        <script src="static/js/jquery-1.8.3.min.js" type="text/javascript" ></script>
        <script src="static/js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox.js" type="text/javascript"></script>
        <script src="static/js/hotelJs.js" type="text/javascript"></script>

    </head>
    ﻿﻿
    <body style="margin:0 auto ;background-image: url(static/img/bg3.jpg);
          background-repeat: repeat; background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">

                <div id="hotelTitle">
                    <h1>Hotel Booking Page</h1>
                </div>

                <div id="selectCity">

                    <b style="margin-left: 80px">We are now at:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Qingdao
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingHotel.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiHotel.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoHotel.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouHotel.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongHotel.htm">Hongkong</a>
                </div>

                <div id="hotelInfo">
                    <div id="SheratonQingdao" title="SheratonQingdao" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>Sheraton Jiaonan, Qingdao</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        The deluxe hotel, which is responsible for the operation and management of the Sheraton group, will be the first choice for the holiday,
                                        conference and business of the west coast of Qingdao, and will also greatly promote the development of tourism resources on the Lingshan Bay. 

                                    </p>
                                </td>
                                <td width="20%"  style="">
                                    <a><button id="5" onclick="bookingHotel(this.id)">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">﻿<a rel="collection" href="static/img/Hotel/Sheraton/Sheraton2.jpg" class="cb">
                                        <img src="static/img/Hotel/Sheraton/Sheraton1.jpg" class="hotelTitleImg"/></a></td>

                                <td style="color:red;">RMB699</td>
                            </tr>
                            <tr>


                                <td >﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div></td>
                            </tr>
                        </table>
                        <a rel="collection" href="static/img/Hotel/Sheraton/Sheraton3.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/Sheraton/Sheraton4.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/Sheraton/Sheraton5.jpg" class="cb"></a>


                    </div>

                    <div id="Shangri-LaQingDao" title="Shangri-LaQingDao" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>Shangri- La in QingDao</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        Qingdao Shangri-La hotel is located in the center of the city, adjacent to the city government, 
                                        financial center and tourist attractions and seashore, close to the one-stop super leisure shopping mall the Mixc. 
                                    </p>
                                </td>
                                <td width="20%">
                                    <a><button id="6" onclick="bookingHotel(this.id)">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2"><a rel="collection1" href="static/img/Hotel/xgllqd/Shangri-La1.jpg" class="cb">
                                        <img src="static/img/Hotel/xgllqd/Shangri-La.jpg" class="hotelTitleImg"/></a></td>
                                <td style="color:red;">RMB799</td>
                            </tr>
                            <tr>


                                <td>﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div></td>
                            </tr>
                        </table>    

                        <a rel="collection1" href="static/img/Hotel/xgllqd/Shangri-La2.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/xgllqd/Shangri-La3.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/xgllqd/Shangri-La4.jpg" class="cb"></a>
                    </div>
                </div>

            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>

        <div id="bookingBox" style="display: none">
            <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                <form id="p_update_form">
                    <!--更新的信息-->
                    <p>Enter Booking date:</p><br/>
                    <input type="date" id="update_user_date"  name="update_user_date" class="updateInfo" placeholder="Enter Booking Date"/><br/>
                    <br/><br/>
                    <button id="updateButton" type="button">Update</button>

                </form>
            </div>
        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="static/js/NavFold.js"></script>
    </body>

</html>
