<%-- 
    Document   : searchPage
    Created on : 2018-6-12, 15:10:58
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.Hotel"%>
<%@page import="com.donkey.model.Attraction"%>
<%@page import="com.donkey.model.Food"%>
<%@page import="com.donkey.dao.AdminDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/searchPage.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>

        <style type="text/css">
            .showButton {
                font-family: "arial black";
                margin-top: 40px;
                width: 200px;
                height: 40px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 18px;
                color: white;
                box-shadow: 5px 5px 2.5px dimgray;
            }

            .showButton:hover {
                background-color: #FF7F50;
            }

            .showButton:active {
                position: relative;
                top: 5px;
                left: 5px;
                box-shadow: none;
            }
            
            .hotelList, .attList, .foodList{
                margin: 0px auto;
                border: 1px solid black;
                border-radius: 30px;
                margin-top: 50px;
                padding:30px;
                width : 80%;
            }
        </style>
        <script type="text/javascript">

            function showhotellist() {
                var hotelList = document.getElementById('hotelList');
                var attList = document.getElementById('attList');
                var foodList = document.getElementById('foodList');
                hotelList.style.display = "block";
                attList.style.display = "none";
                foodList.style.display = "none";
            }
            function showattactionlist() {
                var hotelList = document.getElementById('hotelList');
                var attList = document.getElementById('attList');
                var foodList = document.getElementById('foodList');
                hotelList.style.display = "none";
                attList.style.display = "block";
                foodList.style.display = "none";
            }
            function showfoodlist() {
                var hotelList = document.getElementById('hotelList');
                var attList = document.getElementById('attList');
                var foodList = document.getElementById('foodList');
                hotelList.style.display = "none";
                attList.style.display = "none";
                foodList.style.display = "block";
            }
        </script>
    </head>

    <body style="margin:0 auto;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <br/><br/><br/><br/>
        <h1 style="margin: 0px auto;text-align: center;width: 80%;font-size: 40px;">Search Page </h1><br/>
        <p style="margin: 0px auto;text-align: center;width: 80%;font-size: 20px;">Click <a href="index.htm">Back</a> to go back</p>
        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">
                <div style="margin:0px auto;margin-top: 40px; text-align: center; width: 100%;">
                    <button class="showButton" onclick="showhotellist()">Search Hotel</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="showButton" onclick="showattactionlist()">Search Attaction</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="showButton" onclick="showfoodlist()">Search Food</button>
                </div>

                <!--酒店表-->
                <div id="hotelList" class="hotelList" style=" display: none;">
                    <table id="all" class="display" >
                        <thead>
                            <tr style="width:100%;">
                                <th>ID</th>
                                <th>name</th>
                                <th>location_id</th>
                                <th>price</th>
                                <th>num_comments</th>
                                <th>num_like</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allhotels}" var="aHotel">
                                <tr class="aAttraction">
                                    <td class="hotel_id">${aHotel.hotel_id}</td>
                                    <td class="name">${aHotel.name}</td>
                                    <td class="location_id">${aHotel.location_id}</td>
                                    <td class="price">${aHotel.price}</td>
                                    <td class="num_comments">${aHotel.num_comments}</td>
                                    <td class="num_like">${aHotel.num_like}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--景点表-->
                <div id="attList" class="attList" style=" display: none;">
                    <table id="all" class="display" >
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>name</th>
                                <th>location_id</th>
                                <th>num_like</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allattractions}" var="aAttraction">
                                <tr class="aAttraction">
                                    <td class="att_id">${aAttraction.att_id}</td>
                                    <td class="att_name">${aAttraction.name}</td>
                                    <td class="att_location_id">${aAttraction.location_id}</td>
                                    <td class="att_num_like">${aAttraction.num_like}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--美食表-->
                <div id="foodList" class="foodList" style=" display: none;">
                    <table id="all" class="display" >
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>name</th>
                                <th>type</th>
                                <th>num_praise</th>
                                <th>num_like</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allfood}" var="aFood">
                                <tr class="aFood">
                                    <td class="food_id">${aFood.food_id}</td>
                                    <td class="name">${aFood.name}</td>
                                    <td class="type">${aFood.type}</td>
                                    <td class="num_praise">${aFood.num_praise}</td>
                                    <td class="num_like">${aFood.num_like}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>