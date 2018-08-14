<%-- 
    Document   : manageUsers
    Created on : 2018-6-3, 22:08:36
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.HotelOrder"%>
<%@page import="com.donkey.dao.UserDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageUsers</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageHotelOrder.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="userList" class="userList" >
                <table id="all" >
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>User ID</th>
                            <th>Hotel ID</th>
                            <th>Order Date</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allhotelorderlist}" var="order_hotel">
                            <tr class="aUser">
                                <td class="hotel_order_id">${order_hotel.hotel_order_id}</td>
                                <td class="user_id">${order_hotel.user_id}</td>
                                <td class="hotel_id">${order_hotel.hotel_id}</td>
                                <td class="order_date">${order_hotel.order_date}</td>

                                <td><button class="updatebutton" onclick="updateHotelOrder(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteHotelOrder(this)">Delete</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="p_update_form">
                        <!--更新的信息-->
                        <input type="text" style="display: none" id="update_hotel_order_id"  name="update_hotel_order_id" class="updateInfo" placeholder="Enter hotel order ID you want to change"/><br/>
                        <input type="text" style="display: none" id="update_user_id"  name="update_user_id" class="updateInfo" placeholder="Enter user ID you want to change"/><br/>
                        Enter new Hotel ID<input type="text" required="required" pattern="" id="update_hotel_id"  name="update_hotel_id" class="updateInfo" placeholder="Enter hotel ID you want to change"/><br/>
                        <br/>
                        Enter new Order Date<input type="date" id="update_order_date"  name="update_order_date" class="updateInfo" placeholder="Enter Order Date"/><br/>
                        <br/><br/><br/>
                        <button id="updateButton" type="submit">Update Date</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
