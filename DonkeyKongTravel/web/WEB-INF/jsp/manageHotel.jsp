<%-- 
    Document   : manageAttractions
    Created on : 2018-6-3, 22:08:48
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.Hotel"%>
<%@page import="com.donkey.dao.AdminDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageAtt</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageHotel.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        
        
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="hotelList" class="hotelList" >
                <table id="all" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>name</th>
                            <th>location_id</th>
                            <th>price</th>
                            <th>num_comments</th>
                            <th>num_like</th>
                            <th>Operation</th>
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
                                <td><button class="updatebutton" onclick="updateHotel(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteHotel(this)">Delete</button>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="p_update_form">
                        <!--更新的信息-->
                        ID:<input type="text" id="update_hotel_id"  name="update_hotel_id" class="updateInfo" placeholder="Enter ID" disabled="disabled"/><br/>
                        Name:<input type="text" id="update_hotel_name"  name="update_hotel_name" class="updateInfo" placeholder="Enter Name"/><br/>
                        Location_id:<input type="text" id="update_hotel_location_id"  name="update_hotel_location_id" class="updateInfo" placeholder="Enter location_id"/><br/>
                        Price:<input type="text" id="update_hotel_price"  name="update_hotel_price" class="updateInfo" placeholder="Enter Price"/><br/>
                        Num_comments:<input type="text" id="update_hotel_num_comments"  name="update_num_comments" class="updateInfo" placeholder="Enter Num_comments"/><br/>
                        Num_like:<input type="text" id="update_hotel_num_like"  name="update_num_like" class="updateInfo" placeholder="Enter Num_like"/><br/>
                        <button id="updateButton" type="button">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
