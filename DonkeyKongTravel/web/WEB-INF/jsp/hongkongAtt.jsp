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
                    Hongkong
                    <br/>

                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="beijingAtt.htm">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shanghaiAtt.htm">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="qingdaoAtt.htm">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hangzhouAtt.htm">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="hongkongAtt.htm">Hongkong</a>
                </div>



                <div class="attInfo">

                    <h1>Hongkong Disneyland</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">

                            <tr>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini1.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini2.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini3.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini4.jpg"/></td>
                                <td ><img class="Ev" src="static\img\Attraction\Hongkong\Dishini5.jpg"/></td>

                            </tr>
                        </table> 
                    </div>

                    <p> Hongkong Disneyland is located in Lantau mountain, surrounded by mountains 
                            and far from the South China Sea. It is a theme park which combines the Disneyland 
                            of California and other Disneyland in the United States. The Disneyland of Hongkong consists
                            of four thematic areas: the streets of American town, the adventure world, the fantasy world, 
                            and tomorrow's world. Each theme area can bring endless wonderful experience to tourists. </p>
                </div>


                <div class="attInfo">

                    <h1>Ocean Park Hong Kong</h1>

                    <div id="Slide">
                        <table cellpadding="3" cellspacing="3" style="width: 100%;">
                            <tr>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean1.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean2.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean3.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean4.jpg"/></td>
                                <td><img class="Ev" src="static\img\Attraction\Hongkong\Ocean5.jpg"/></td>
                            </tr>
                        </table> 
                    </div>

                    <p> Hong Kong Ocean Park enjoys "the most popular theme park in the world", 
                        "the largest entertainment park in Southeast Asia", "one of the world's largest aquarium" 
                        (one) and many other glory. Introduction: Hong Kong Ocean Park, located in the south of Hongkong Island,
                        is one of the most popular theme parks in the world. It is one of the largest recreation parks in Southeast Asia 
                        and covers an area of 170 acres.
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
