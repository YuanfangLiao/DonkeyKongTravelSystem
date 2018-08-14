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
        <script type="text/javascript">
            function checkFeedback(obj) {
                var feed_id = $(obj).parent().siblings(".feed_id").text().toString();
                if (confirm("Are You Sure checked FeedBack which id is:" + feed_id + "?")) {
                    $.ajax({
                        url: "deleteFeedBack.do",
                        type: "POST",
                        dataType: "text",
                        data: {
                            "feed_id": feed_id
                        },
                        success: function (data) {
                            if (data == "0") {
                                $(".list_main_interface_body").load("viewFeedBack.htm");
                            } else if (data == "1") {
                                alert("Feed was not existed!");
                            }

                        },
                        error: function () {
                            alert("AJAX Issue");
                        }
                    });
                }
            }
        </script>
    </head>
    <body>
        <div class="list_main_interface_body">
            <div id="userList" class="userList" >
                <table id="all" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Info</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${allFeedBack}" var="aFeedBack">
                            <tr class="aFeedBack">
                                <td class="feed_id">${aFeedBack.feed_id}</td>
                                <td class="title">${aFeedBack.title}</td>
                                <td class="feed_info">${aFeedBack.feed_info}</td>
                                <td><button class="updatebutton" onclick="checkFeedback(this)">Checked</button>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


        </div>
    </body>
</html>
