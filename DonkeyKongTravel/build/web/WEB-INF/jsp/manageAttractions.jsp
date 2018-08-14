<%-- 
    Document   : manageAttractions
    Created on : 2018-6-3, 22:08:48
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.Attraction"%>
<%@page import="com.donkey.dao.AdminDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageAtt</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageAttractions.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox-min.js" type="text/javascript"></script>
        <link href="static/css/datatables.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/colorbox.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="attList" class="attList" >
                <table id="all" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>name</th>
                            <th>location_id</th>
                            <th>num_like</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allattractions}" var="aAttraction">
                            <tr class="aAttraction">
                                <td class="att_id">${aAttraction.att_id}</td>
                                <td class="att_name">${aAttraction.name}</td>
                                <td class="att_location_id">${aAttraction.location_id}</td>
                                <td class="att_num_like">${aAttraction.num_like}</td>
                                <td><button class="updatebutton" onclick="updateAtt(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteAtt(this)">Delete</button>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="p_update_form">
                        <!--更新的信息-->
                        ID:<input type="text" id="update_att_id"  name="update_att_id" class="updateInfo" placeholder="Enter ID" disabled="disabled"/><br/>
                        Name:<input type="text" id="update_att_name"  name="update_att_name" class="updateInfo" placeholder="Enter Name"/><br/>
                        location_id:<input type="text" id="update_att_location_id"  name="update_att_location_id" class="updateInfo" placeholder="Enter location_id"/><br/>
                        num_like<input type="text" id="update_num_like"  name="update_num_like" class="updateInfo" placeholder="Enter Number"/><br/>
                        <button id="updateButton" type="button">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
