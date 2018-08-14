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
                    Hangzhou
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingHotel.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiHotel.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoHotel.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouHotel.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongHotel.htm">Hongkong</a>
                </div>

                <div id="hotelInfo">
                    <div id="IntercontinentalHotel" title="IntercontinentalHotel" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>Intercontinental Hotel</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        Intercontinential Hangzhou Hotel is located in the central business district of Hangzhou Qianjiang New Town, 
                                        No. 2 of Jiefang Road. There are civic centers, wave culture city and Hangzhou Grand Theater and other leisure centers around it. 
                                        It is 25 kilometers from Hangzhou Xiaoshan International Airport and 180 kilometers away from downtown Shanghai. 
                                    </p>
                                </td>
                                <td width="20%">
                                    <a><button id="9" onclick="bookingHotel(this.id)">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">﻿<a rel="collection" href="static/img/Hotel/intercontinental/intercontinental2.jpg" class="cb">
                                        <img src="static/img/Hotel/intercontinental/intercontinental1.jpg" class="hotelTitleImg"/></a></td>

                                <td style="color:red;">RMB1499</td>
                            </tr>
                            <tr>


                                <td>﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div></td>
                            </tr>
                        </table>
                        <a rel="collection" href="static/img/Hotel/intercontinental/intercontinental3.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/intercontinental/intercontinental4.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/intercontinental/intercontinental5.jpg" class="cb"></a>
                        <a rel="collection" href="static/img/Hotel/intercontinental/intercontinental6.jpg" class="cb"></a>


                    </div>

                    <div id="JWMarriott" title="JWMarriott" class="hotelInfoDiv">
                        <table>
                            <tr>
                                <td width="20%"><h3>JW Marriott</h3></td>
                                <td rowspan="3" colspan="10px" width="50%"><p>
                                        JW Marriott Hotel Hangzhou, located in the center of Hangzhou, 
                                        overlooks the world-famous Beijing Hangzhou the Grande Canale, 
                                        is close to the Wulin Plaza business circle and West Lake Cultural Square, 
                                        and is only a distance from the beauty of West Lake. To the famous Lingyin Temple, 
                                        Lei Feng TA and XiXi Wetland are very convenient. 
                                    </p>
                                </td>
                                <td width="20%">
                                    <a><button id="10" onclick="bookingHotel(this.id)">Order</button></a>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2"><a rel="collection1" href="static/img/Hotel/jw/jw2.jpg" class="cb">
                                        <img src="static/img/Hotel/jw/jw4.jpg" class="hotelTitleImg"/></a></td>
                                <td style="color:red;">RMB999</td>
                            </tr>
                            <tr>


                                <td>﻿<div class="praise">
                                        <span id="praise"><img src="static/img/zan.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                        <span id="add-num"><em>+1</em></span>
                                    </div></td>
                            </tr>
                        </table>    

                        <a rel="collection1" href="static/img/Hotel/jw/jw3.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/jw/jw1.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/jw/jw5.jpg" class="cb"></a>
                        <a rel="collection1" href="static/img/Hotel/jw/jw6.jpg" class="cb"></a>
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
