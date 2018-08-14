

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <style type="text/css">
            #groupMe{
                border-bottom: 5px solid #00ADFD;
                color: white;
            }
            #tipsDiv{
                margin: 0px auto;
                margin-top: 80px;
                width: 60%;
                background-color: rgba(220,220,220,0.5);
                padding: 40px;
                border-radius: 45px;
                border:1px solid black;
            }
            #tipsDiv h2{
                font-size: 20px;
            }
            #tipsDiv button {
                font-family: "arial black";
                width: 150px;
                height: 50px;
                border-radius: 5px;
                background-color: #C5464A;
                font-size: 10px;
                color: white;
                box-shadow: 2px 2px 1px dimgray;
            }

            #tipsDiv button:hover {
                background-color: #FF7F50;
            }

            #tipsDiv button:active {
                position: relative;
                top: 2px;
                left: 2px;
                box-shadow: none;
            }
            #title{
                margin: 0px auto;
                margin-top: 60px;
                text-align: center;
                font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
                text-shadow: 0.05em 0.05em 0.025em #333;
                font-weight: bold;
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
                <h1 id="title">Make Groups (Beta)</h1>
                <div id="tipsDiv">
                    <h2>Hello ,If you want to start make Group ,please read me ,This page allows you to make groups 
                        with other people or group which you are interested in. before you get start ,please accept and 
                        follow rules showed in this page:</h2>
                    <br/>
                    <b>Tips</b><br/><br/>
                    <ul>
                        <li> 
                            <p>Do not break the law , or Spread bad information and comments ,if you do that , your account 
                                will be banned by our administrater in our system ,and your comments will be delete .</p>
                        </li>
                        <br/>
                        <li>
                            <p>If you join a group ,before you start travel with the guys you meet new ,first get know about
                                them ,if you don't know them at all ,and you start travel with them and meet some trouble even 
                                some dangerious condition ,you can call the police get some help ,but we do not responsible for it 
                                at all ,so please understand the problem you will face when using this page.</p>
                        </li>
                        <br/>
                        <li>
                            <p>Our website is all free for all users ,If someone want to take some money from you when using our 
                                website ,please tell us or call police</p>
                        </li>
                        <br/>
                        <li>
                            <p>If you understand our rules ,have fun making friends in our website! Thank you for using Dongkey Kong
                                ^_^</p>
                        </li>
                    </ul>
                    <br/><br/>
                    <a href="groups.htm"><button>I Accept and go to make groups </button></a><br/>

                </div>

            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>