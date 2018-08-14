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
                    Shanghai
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingAtt.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiAtt.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoAtt.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouAtt.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongAtt.htm">Hongkong</a>
                </div>



                <div class="attInfo">

                    <h1>The Oriental Pearl Radio & TV Tower</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">

                            <tr>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower1.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower2.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower3.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower4.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower5.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower6.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Shanghai\TVTower7.jpg"/></td>
                            </tr>
                        </table> 
                    </div>

                    <p> The Oriental Pearl TV Tower is one of the landmark cultural landscapes in Shanghai,
                        located in Lujiazui, Pudong New Area. The tower is about 468 meters high. The building was built 
                        in July 1991 and put into operation in May 1995. It has undertaken 6 sets of wireless TV launching operations 
                        in Shanghai, covering a radius of 80 kilometers. The Oriental Pearl TV Tower is the first batch of AAAAA level scenic 
                        spots in the country. In the tower, there are spaceship, revolving restaurant, Shanghai city historical development gallery 
                        and other landscape and facilities. In 1995, it was included in one of the ten new scenic spots in Shanghai.
                    </p>
                </div>


                <div class="attInfo">

                    <h1>Shanghai Bund</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">
                            <tr>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund1.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund2.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund3.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund4.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund5.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund6.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Shanghai\TheBund7.jpg"/></td>
                            </tr>
                        </table> 
                    </div>

                    <p>  The Bund (English: The Bund; Shanghai phonetic alphabet: Nga thae),
                        located on the Bank of Huangpu River in Huangpu District, Shanghai, 
                        and outside Huangpu beach, in 1844 (twenty four years of Qing Daoguang),
                        this area is classified as a British concession, a true portrayal of the 
                        ten miles of Shanghai, the starting point of the old Shanghai concession 
                        area and the modern city of Shanghai.  </p>
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
