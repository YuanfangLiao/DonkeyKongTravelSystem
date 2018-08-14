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
                    Beijing
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingAtt.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiAtt.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoAtt.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouAtt.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongAtt.htm">Hongkong</a>
                </div>



                <div class="attInfo">
                    
                    <h1>Tiananmen</h1>
                    
                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">

                            <tr>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen1.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen2.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen3.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen4.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen5.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen6.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\Tiananmen7.jpg"/></td>
                            </tr>
                        </table> 
                    </div>
                    
                    <p> Tiananmen, located in the center of the capital of Beijing in People's Republic of China and the southern end of the the Imperial Palace,
                            is 4800 square meters with Tiananmen square, the monument to the people's heroes, the memorial hall of Chairman Mao, the Great Hall of the people,
                            and the Chang'an Avenue in China. It covers an area of 4800 square meters, with outstanding architectural art and special political status as the world.
                            The attention of people.   </p>
                </div>
                
                
                <div class="attInfo">
                    
                    <h1>The Great Wall</h1>
                    
                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">
                            <tr>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall1.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall2.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall3.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall4.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall5.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall6.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Beijing\TheGreatWall7.jpg"/></td>
                            </tr>
                        </table> 
                    </div>
                    
                    <p>  The Badaling Great Wall is located in the north of Yanqing Road, Beijing. 
                            It is an important part of the Great Wall, which is a great defensive project in ancient China. 
                            It is a pass of Ming the Great Wall. The Badaling Great Wall is an important outpost for Ju Yong Guan.   </p>
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
