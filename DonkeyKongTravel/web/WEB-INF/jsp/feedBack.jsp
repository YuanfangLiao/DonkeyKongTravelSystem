<%-- 
    Document   : Hotel
    Created on : 2018-6-7, 10:23:30
    Author     : 16530
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.donkey.model.FeedBack"%>
<%@page import="com.donkey.dao.UserDAOImpl"%>


<html>
    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <link rel="stylesheet" type="text/css" href="static/css/colorbox.css"/>
        <link rel="stylesheet" type="text/css" href="static/css/zan.css"/>
        <link rel="stylesheet" type="text/css" href="static/css/hotelStyle.css"/>

        <script src="static/js/jquery-1.8.3.min.js" type="text/javascript" ></script>
        <script src="static/js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="static/js/jquery.colorbox.js" type="text/javascript"></script>


        <style type="text/css">
            #feedForm{
                width: 60% ;
                margin: 0px auto;
                margin-top: 50px;
            }
            textarea{
                margin: 0px auto;
                margin-top: 50px;
                width: 100%;
                height: 500px;
                padding: 30px;
                border-radius: 30px;
                border:1px solid black;
            }
            #feedForm input{
                width: 70%;
                height: 30px;
                border-radius: 20px;
                box-shadow: 3px 3px 1.5px #666666;
            }
            #ti{
                margin: 0px auto;
                margin-top: 50px;
                width: 100%;
                text-align: center;
            }
            #sendFeed {
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

            #sendFeed:hover {
                background-color: #FF7F50;
            }

            #sendFeed:active {
                position: relative;
                top: 5px;
                left: 5px;
                box-shadow: none;
            }
        </style>
        <script type="text/javascript">
            function sendFeedBack() {
                //    配置弹出层
                $.colorbox({
                    width: '500',
                    heigth: '900',
                    inline: true,
                    href: '#popup',
                    title: "Send Feedback Confirm",
                    scrolling: false,
                    close: "×"
                });

                var title = document.getElementById("title").value;
                var feed_info = $('#feed_info').val();

                $("#updateButton").click(function () {

                    $.ajax({
                        url: "sendFeed.do",
                        type: "POST",
                        datatype: "text",
                        data: {
                            "title": title,
                            "feed_info": feed_info
                        },
                        success: function (data) {
                            if (data == "0") {
                                $.colorbox({
                                    html: "Send Successfully",
                                    close: "",
                                    opacity: "0"
                                });
                            } else if (data == "1") {
                                alert("Update Fail, the order date should be in future");
                            }
                        },
                        error: function () {
                            alert("AJAX Error");
                        }
                    });
                });

            }
        </script>

    </head>
    ﻿﻿
    <body style="margin:0 auto ;background-image: url(static/img/bg3.jpg);
          background-repeat: repeat; background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">
                <h1 id="ti">Feed Back Page</h1>
                <div id="feedForm">
                    Enter title:
                    <input type="text" id="title" class="title"></input>
                    <textarea id="feed_info" class="feed_info">
                    
                    </textarea>
                    <br/><br/><br/>
                    <button type="submit" id="sendFeed" onclick="sendFeedBack(this)">Send FeedBack</button>
                </div>


            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>

        <div id="sendingBox" style="display: none">
            <div id="popup" style="width: 100%; height: 100%; text-align: center; margin: 50px auto; ">
                <form id="p_update_form">
                    <!--更新的信息-->
                    <p>Are you sure to send feed back?</p><br/>
                    <br/><br/>
                    <button id="updateButton" type="button">Update</button>

                </form>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>
