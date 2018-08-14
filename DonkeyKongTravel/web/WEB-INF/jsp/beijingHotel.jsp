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
                    Beijing
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingHotel.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiHotel.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoHotel.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouHotel.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongHotel.htm">Hongkong</a>
                </div>

                <div id="hotelInfo">
                    <div id="Shangri-LaBeijing" title="Shangri-LaBeijing" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>Shangri-La Hotel</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        The hotel used a large number of natural marble in the lobby and swimming pool banquet hall to 
                                        further highlight the noble and elegant taste of Shangri-La Hotel. 

                                    </p>
                                </td>
                                <td width="20%">
                                    <a><button id="3" onclick="bookingHotel(this.id)" class="bookingbutton">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">﻿<a rel="collection" href="static/img/Hotel/xgll/Shangri-La1.jpg" class="cb">
                                        <img src="static/img/Hotel/xgll/Shangri-La Hotel.jpg" class="hotelTitleImg"/></a></td>

                                <td style="color:red;">RMB799</td>
                            </tr>
                            <tr>
                                <td>﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div>
                                </td>

                            </tr>
                        </table>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La2.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La3.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La4.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La5.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La6.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La7.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/xgll/Shangri-La8.jpg" class="cb"></a>

                    </div>

                    <div id="BlueWaterAndCloudySky" title="BlueWaterAndCloudySky" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>Blue water and cloudy sky</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        Beijing blue water cloud sky hotel is located in the east side of Beijing City, 
                                        50 meters east side of the East Siwan Lake Bridge. The traffic is convenient, the location is very superior, 
                                        Beijing, Tianjin and Tang, Beijing and Shenyang high speed hotel only 2 minutes car distance
                                    </p>
                                </td>
                                <td width="20%">
                                    <a><button id="4" onclick="bookingHotel(this.id)" class="bookingbutton">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">﻿<a rel="collection" href="static/img/Hotel/bsyt/bsyt1.jpg" class="cb">
                                        <img src="static/img/Hotel/bsyt/BSYT.jpg" class="hotelTitleImg"/></a></td>

                                <td style="color:red;">RMB499</td>
                            </tr>
                            <tr>


                                <td>﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div></td>
                            </tr>
                        </table>    

                        <a rel="collection1" href="static/img/Hotel/bsyt/bsyt2.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/bsyt/bsyt3.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/bsyt/bsyt4.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/bsyt/bsyt5.jpg" class="cb"></a>
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
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>
