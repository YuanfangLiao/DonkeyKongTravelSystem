<%-- 
    Document   : manageUsers
    Created on : 2018-6-3, 22:08:36
    Author     : n551
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.User"%>
<%@page import="com.donkey.dao.AdminDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>manageUsers</title>
        <script src="static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="static/js/datatables.min.js" type="text/javascript"></script>
        <script src="static/js/manageUser.js" type="text/javascript"></script>
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
                            <th>Password</th>
                            <th>Name</th>
                            <th>title</th>
                            <th>isValid</th>
                            <th>create_date</th>
                            <th>Level</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allusers}" var="aUser">
                            <tr class="aUser">
                                <td class="user_id">${aUser.id}</td>
                                <td class="user_passwod">${aUser.password}</td>
                                <td class="user_name">${aUser.name}</td>
                                <td class="user_title">${aUser.title}</td>
                                <td class="user_isValid">${aUser.isValid}</td>
                                <td class="user_date">${aUser.create_date}</td>
                                <td class="user_level">${aUser.level}</td>
                                <td><button class="updatebutton" onclick="updateUser(this)">Update</button>
                                    &nbsp;
                                    <button class="deletebutton" onclick="deleteUser(this)">Delete</button>
                                    &nbsp;
                                    <button class="banbutton" onclick="banUser(this)">Ban</button>
                                    &nbsp;
                                    <button class="validbutton" onclick="validUser(this)">Valid</button></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div id="updateBox" style="display: none">
                <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                    <form id="p_update_form">
                        <!--更新的信息-->
                        <input type="text" id="update_user_id"  name="update_user_id" class="updateInfo" placeholder="Enter ID"/><br/>
                        <input type="text" id="update_user_name"  name="update_user_id" class="updateInfo" placeholder="Enter Name"/><br/>
                        <input type="radio" id="title_user" name="title" class="update_title" value="User"/>User<br/>
                        <input type="radio" id="title_admin" name="title" class="update_title"  value="Administrator"/>Administrator<br/>
                        <input type="date" id="update_user_date"  name="update_user_date" class="updateInfo" placeholder="Enter Create Date"/><br/>
                        <input type="text" id="update_user_level"  name="update_user_level" class="updateInfo" placeholder="Enter Level"/><br/>
                        <button id="updateButton" type="button">Update</button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
