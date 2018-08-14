

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.HotelOrder"%>
<%@page import="com.donkey.dao.UserDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/groupJs.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
            #groupMe{
                border-bottom: 5px solid #00ADFD;
                color: white;
            }
            h1,h3{
                margin: 0px auto;
                margin-top: 50px;
                text-align: center;
            }
            .list_main_interface_body{
                margin: 0px auto;
                margin-top: 30px;
                width: 80%;
                border:1px solid black;
                padding: 10px;
                border-radius: 10px;
            }
            #publishForm{
                background-color: rgba(70,130,180,0.4);
                width: 50%;
                padding-top: 50px;
                padding-bottom: 50px;
                margin: 0px auto;
                margin-top: 30px;
                border-radius: 30px;
                text-align: center;
                border: 1px solid black;
                box-shadow: 5px 5px 2px #949494;
            }
            #publishTable{
                margin: 0px auto;
                text-align: center;
            }
            #publishTable tr{
                height:  40px;
            }
            #publishTable label {
                font-size: 18px;
            }
            #publishTable input {
                width: 150px;
                height: 30px;
                border-radius: 20px;
                border: 1px solid #000000;
                box-shadow: 3px 3px 1.5px dimgray;
                text-indent: 20px;
                text-decoration: none;
            }
            .leftTd{
                text-align: right;
            }
            #publishForm button {
                font-family: "arial black";
                margin-top: 50px;
                width: 250px;
                height: 40px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 18px;
                color: white;
                box-shadow: 5px 5px 2.5px dimgray;
            }

            #publishForm button:hover {
                background-color: #FF7F50;
            }

            #publishForm button:active {
                position: relative;
                top: 5px;
                left: 5px;
                box-shadow: none;
            }
        </style>
    </head>
    ﻿﻿
    <body style="margin:0 auto;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">



                <h1>Welcome make Groups~</h1>


                <div style="width:90%;" class="list_main_interface_body">
                    <div id="groupList" class="groupList" >
                        <table id="all" >
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>title</th>
                                    <th>user_id</th>
                                    <th>att_id</th>
                                    <th>hotel_id</th>
                                    <th>begin_date</th>
                                    <th>end_date</th>
                                    <th>fee</th>
                                    <th>num_people</th>
                                    <th>trip_mode</th>
                                    <th>Operation</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${allGroups}" var="aGroup">
                                    <tr class="aUser">
                                        <td class="group_travel_id">${aGroup.group_travel_id}</td>
                                        <td class="title">${aGroup.title}</td>
                                        <td class="user_id">${aGroup.user_id}</td>
                                        <td class="att_id">${aGroup.att_id}</td>
                                        <td class="hotel_id">${aGroup.hotel_id}</td>
                                        <td class="begin_date">${aGroup.begin_date}</td>
                                        <td class="end_date">${aGroup.end_date}</td>
                                        <td class="fee">${aGroup.fee}</td>
                                        <td class="num_people">${aGroup.num_people}</td>
                                        <td class="trip_mode">${aGroup.trip_mode}</td>
                                        <td><button class="joinbutton" onclick="JoinGroups()">Join</button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>


                    <div id="updateBox" style="display: none">
                        <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                            <form id="p_update_form">
                                <button id="updateButton" type="button">Join this Group</button>
                            </form>
                        </div>
                    </div>
                </div>


                <h1>Wanna publish a group and let others join?</h1>

                <h3>Finish the form and others can join you ^_^</h3>

                <div id="publishForm">



                    <table id="publishTable" cellspacing="10">
                        <tr>
                            <td class="leftTd">
                                <label for="title">Title:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="title" name="title" />
                            </td>
                        </tr>

                        <tr>
                            <td class="leftTd">
                                <label for="att_id">Which Attaction to go?</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="att_id" name="att_id" />
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="hotel_id">Which hotel to sleep?</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="hotel_id" name="hotel_id" />
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="begin_date">Begin date:</label>
                            </td>
                            <td style=" text-align: left;">
                                <input type="date" id="begin_date" name="begin_date"  placeholder="Enter Begin Date"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="end_date">End date:</label>
                            </td>
                            <td style=" text-align: left;">
                                <input type="date" id="end_date" name="end_date" placeholder="Enter End Date"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="fee">Fee:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="fee" name="fee" />
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="num_people">Number of People:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="num_people" name="num_people" />
                            </td>
                        </tr>
                        <tr>
                            <td class="leftTd">
                                <label for="trip_mode">Trip Mode:</label>
                            </td>
                            <td class="inputNormal">
                                <input type="text" id="trip_mode" name="trip_mode" />
                            </td>
                        </tr>



                    </table>
                    <button type="submit" id="publish" onclick="PublishGroup()">Publish it</button>



                </div>

                <br/><br/><br/><br/><br/>


            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>