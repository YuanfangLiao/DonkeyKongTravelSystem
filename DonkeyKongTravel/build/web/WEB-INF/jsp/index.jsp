<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <link rel="stylesheet" type="text/css" href="assets/flexslider.css" />
        <script type="text/javascript" src="assets/jquery-3.2.1.js"></script> 
        <script src="/DonkeyKongTravel/static/js/jquery-1.8.2.min.js" type="text/javascript" ></script>
        <script type="text/javascript" src="assets/jquery.flexslider-min.js"></script>
        <style type="text/css">
            #homeMe{
                border-bottom: 5px solid #00ADFD;
                color: white;
            }
        </style>
    </head>
    ﻿﻿
    <body style="margin:0 auto ;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">



                <div class="flexslider" style="width:80%;margin-top:70px;text-aligin:center;margin-left:auto;margin-right:auto;"> 
                    <ul class="slides"> 
                        <li><img src="assets/img/1.jpg" style="width:100%"/></li> 
                        <li><img src="assets/img/2.jpg" style="width:100%"/></li> 
                        <li><img src="assets/img/3.jpg" style="width:100%"/></li> 
                        <li><img src="assets/img/4.jpg" style="width:100%"/></li> 
                    </ul> 
                </div>
                <script type="text/javascript">
                    $(function () {
                        $(".flexslider").flexslider();
                        slideshow: true;
                        slideshowSpeed: 7000;
                        animationLoop: true;

                    });
                </script>



                <!--CitysDiv-->
                <div id="citysDiv">
                    <img src="/DonkeyKongTravel/static/img/citys.png" class="partTitle" />
                    <table cellspacing="20px" style="margin-top:50px;">
                        <tr>
                            <td>
                                <a  href="beijingAtt.htm">
                                    <img src="static\img\Attraction\Beijing\Tiananmen.jpg" class="photoImg" />
                                </a>
                            </td>

                            <td>
                                <a  href="qingdaoAtt.htm">
                                    <img src="static\img\Attraction\Qingdao\MayFourthSquare.jpg" class="photoImg" />
                                </a>
                            </td>

                            <td>
                                <a  href="hongkongAtt.htm">
                                    <img src="static\img\Attraction\Hongkong\Dishini.jpg" class="photoImg" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Beijing</b>
                            </td>
                            <td>
                                <b>Qingdao</b>
                            </td>
                            <td>
                                <b>Hongkong</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a  href="hangzhouAtt.htm">
                                    <img src="static\img\Attraction\Hangzhou\Xihu.jpg" class="photoImg" />
                                </a>
                            </td>

                            <td>
                                <a  href="shanghaiAtt.htm">
                                    <img src="static\img\Attraction\Shanghai\TheBund.jpg" class="photoImg" />
                                </a>
                            </td>

                            <td>
                                <a  href="welcomeGroups.htm">
                                    <img src="/DonkeyKongTravel/static/img/1.png" class="photoImg" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Hangzhou</b>
                            </td>
                            <td>
                                <b>Shanghai</b>
                            </td>
                            <td>
                                <b>Make a Group to travel</b>
                            </td>
                        </tr>
                    </table>

                </div>


                <!--分割线-->
                <hr style="margin-top: 80px; height:2px;border:none;border-top:2px dashed black;" />


                <!--TravelsDiv-->
                <div id="travelsDiv">

                    <img src="/DonkeyKongTravel/static/img/travels.png" class="partTitle" />

                    <ul style="margin: 30px;">
                        <li>
                            <a href="welcomeGroups.htm">A group to go to Beijing need your Join</a>
                        </li>
                        <li>
                            <a href="welcomeGroups.htm">We want 1 more people , come quickly</a>
                        </li>
                        <li>
                            <a href="welcomeGroups.htm">Hey, a trip to go hangzhou, like it?</a>
                        </li>
                        <li>
                            <a href="welcomeGroups.htm">Hongkong ,a beautiful place</a>
                        </li>
                        <li>
                            <a href="welcomeGroups.htm">Haha, It's a wonderful place! Let's go together</a>
                        </li>
                        <li>
                            <a href="welcomeGroups.htm">Have you been in Shanghai ?</a>
                        </li>
                        
                    </ul>

                </div>

                <!--分割线-->

                <hr style="margin-top: 80px; height:2px;border:none;border-top:2px dashed black;" />

                <!--Destination-->

                <div id="destinationDiv">

                    <img src="/DonkeyKongTravel/static/img/destination.png" class="partTitle" />

                    <table cellspacing="20px" id="desTable" border="1">
                        <tr class="change">
                            <td>
                                <div>
                                    <img src="/DonkeyKongTravel/static/img/Attraction/Beijing/Tiananmen3.jpg" class="desImg" />
                                    <table>
                                        <tr height="60px" style="text-align: center;">
                                            <td colspan="2">
                                                <b>Beijing</b>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <ul class="desUl">

                                                    <li>
                                                        <a href="beijingAtt.htm">Tiananmen</a>
                                                    </li>
                                                    <li>
                                                        <a href="beijingAtt.htm">TheGreatWall</a>
                                                    </li>

                                                </ul>
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <img src="/DonkeyKongTravel/static/img/Attraction/Hangzhou/Xihu3.jpg" class="desImg" />
                                    <table>
                                        <tr height="60px" style="text-align: center;">
                                            <td colspan="2">
                                                <b>Hangzhou</b>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <ul class="desUl">

                                                    <li>
                                                        <a href="hangzhouAtt.htm">QiandaoLake</a>
                                                    </li>
                                                    <li>
                                                        <a href="HangzhouAtt.htm">WestLake</a>
                                                    </li>

                                                </ul>
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr class="change">
                            <td>
                                <div>
                                    <img src="/DonkeyKongTravel/static/img/Attraction/Hongkong/Ocean1.jpg" class="desImg" />
                                    <table>
                                        <tr height="60px" style="text-align: center;">
                                            <td colspan="2">
                                                <b>Hongkong</b>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <ul class="desUl">

                                                    <li>
                                                        <a href="hongkongAtt.htm">Disneyland</a>
                                                    </li>
                                                    <li>
                                                        <a href="hongkongAtt.htm">OceanPark</a>
                                                    </li>

                                                </ul>
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <img src="/DonkeyKongTravel/static/img/Attraction/Qingdao/MayFourthSquare.jpg" class="desImg" />
                                    <table>
                                        <tr height="60px" style="text-align: center;">
                                            <td colspan="2">
                                                <b>Qingdao</b>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <ul class="desUl">

                                                    <li>
                                                        <a href="qingdaoAtt.htm">MayFourthSquare</a>
                                                    </li>
                                                    <li>
                                                        <a href="qingdaoAtt.htm">LaoShan</a>
                                                    </li>
                                                    <li>
                                                        <a href="qingdaoAtt.htm">ZhanQiao</a>
                                                    </li>
                                                </ul>
                                            </td>

                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>

        <!-- Js import -->
        <script src="static/js/NavFold.js"></script>

    </body>

</html>
