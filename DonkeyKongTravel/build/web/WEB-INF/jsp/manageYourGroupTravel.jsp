<%-- 
    Document   : manageUsers
    Created on : 2018-6-3, 22:08:36
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.Groups"%>
<%@page import="com.donkey.dao.UserDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageUsers</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageyourGroupTravel.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
<!--        <base href="${pageContext.request.contextPath}/"/>-->
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="userList" class="userList" >
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
                            <th>isValid</th>
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
                                <td class="isValid">${aGroup.isValid}</td>
                                <td><button class="updatebutton" onclick="updateYourGroups(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteYourGroups(this)">Delete</button>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="p_update_form">
                        <!--更新的信息-->
                        <input type="text" id="update_group_travel_id"  name="update_group_travel_id" class="updateInfo" placeholder="Enter group_travel_id"/><br/>
                        <input type="text" id="update_title"  name="update_title" class="updateInfo" placeholder="Enter title"/><br/>
                        <input type="text" id="update_user_id"  name="update_user_id" class="updateInfo" placeholder="Enter user_id"/><br/>
                        <input type="text" id="update_att_id"  name="update_att_id" class="updateInfo" placeholder="Enter att_id"/><br/>
                        <input type="text" id="update_hotel_id"  name="update_hotel_id" class="updateInfo" placeholder="Enter hotel_id"/><br/>
                        <input type="date" id="update_begin_date"  name="update_begin_date" class="updateInfo" placeholder="Enter begin_date"/><br/>
                        <input type="date" id="update_end_date"  name="update_end_date" class="updateInfo" placeholder="Enter end_date"/><br/>
                        <input type="text" id="update_fee"  name="update_fee" class="updateInfo" placeholder="Enter fee"/><br/>
                        <input type="text" id="update_num_people"  name="update_num_people" class="updateInfo" placeholder="Enter num_people"/><br/>
                        <input type="text" id="update_trip_mode"  name="update_trip_mode" class="updateInfo" placeholder="Enter trip_mode"/><br/>
                        <button id="updateButton" type="button">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
