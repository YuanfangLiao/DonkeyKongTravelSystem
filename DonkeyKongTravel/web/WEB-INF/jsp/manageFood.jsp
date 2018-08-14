<%-- 
    Document   : manageAttractions
    Created on : 2018-6-3, 22:08:48
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.Food"%>
<%@page import="com.donkey.dao.AdminDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageFood</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageFood.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="foodList" class="foodList" >
                <table id="all" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>name</th>
                            <th>type</th>
                            <th>num_praise</th>
                            <th>num_like</th>
                            <th>Operation</th>
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
                                <td><button class="updatebutton" onclick="updateFood(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteFood(this)">Delete</button>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="update_form">
                        <!--更新的信息-->
                        ID:<input type="text" id="update_food_id"  name="update_food_id" class="updateInfo" placeholder="Enter ID" disabled="disabled"/><br/>
                        Name:<input type="text" id="update_food_name"  name="update_food_name" class="updateInfo" placeholder="Enter Name"/><br/>
                        Type:<input type="text" id="update_food_type"  name="update_food_type" class="updateInfo" placeholder="Enter Type"/><br/>
                        num_praise:<input type="text" id="update_num_praise"  name="update_num_praise" class="updateInfo" placeholder="Enter Number_praise"/><br/>
                        num_like:<input type="text" id="update_num_like"  name="update_num_like" class="updateInfo" placeholder="Enter Number_like"/><br/>
                        <button id="updateButton" type="button">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
