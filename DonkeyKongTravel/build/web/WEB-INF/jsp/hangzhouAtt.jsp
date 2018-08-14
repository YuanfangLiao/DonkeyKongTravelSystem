<%-- 
    Document   : qingdaoAtt
    Created on : 2018-6-9, 15:22:57
    Author     : liao
--%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <link rel="stylesheet" type="text/css" href="static/css/attStyle.css" />

    </head>
    ﻿﻿
    <body style="margin:0 auto;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">
                <div id="hotelTitle">
                    <h1>Attraction Page</h1>
                </div>

                <div id="selectCity">

                    <b style="margin-left: 80px">We are now at:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Hangzhou
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingAtt.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiAtt.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoAtt.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouAtt.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongAtt.htm">Hongkong</a>
                </div>



                <div class="attInfo">

                    <h1>Hangzhou WestLake</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">

                            <tr>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu1.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu2.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu3.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu4.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu5.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu6.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hangzhou\Xihu7.jpg"/></td>

                            </tr>
                        </table> 
                    </div>

                    <p> West Lake is located in the west of Hangzhou City, 3.3 km north and south, 2.8 km to the East and West, 
                        a total area of 5.6 square kilometers, around 15 kilometers a week around the lake. The whole lake is separated 
                        into 5 parts of the lake, Li Lake, Yuehu Lake, Xili Lake and Xiaonan lake </p>
                </div>


                <div class="attInfo">

                    <h1>Qiandao Lake</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">
                            <tr>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake1.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake2.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake3.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake4.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake5.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hangzhou\QiandaoLake6.jpg"/></td>

                            </tr>
                        </table> 
                    </div>

                    <p>  The water of Thousand Island Lake is the first of high quality water in Great Lakes of great river in China. 
                        It is the first level water body of the country. It is known as "the first beautiful water" without any treatment,
                        that is, the standard of drinking water. In December 15, 1984, the Zhejiang Provincial Committee on geographical names
                        formally named the Xin'An river reservoir "Qiandao Lake". 
                    </p>
                </div>
                <br/><br/><br/><br/><br/><br/>


            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>
