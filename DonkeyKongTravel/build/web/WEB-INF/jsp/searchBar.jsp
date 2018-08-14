<%-- 
    Document   : searchBar
    Created on : 2018-6-6, 22:05:58
    Author     : liao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SearchBar</title>
        <style type='text/css'>
            #searchBar a:hover{
                color: #FF7F50;
            }
        </style>
    </head>
    <body>
        <!--Welcome bar-->
        <div class="welcomeBar">
            <div id="searchBar">
                <!--<form>
                    <input id="inputSearchText" type="text" placeholder="Enter key words to search" />
                    <button type="submit">Search</button>
                </form>-->
                <br/>
                <h2>Welcome Donkey kong Travel Website</h2> 
                <br/>
                <p>Click -> <a href="searchPage.htm">Search</a> to search items</p>
                <br/>
                <!--<h2>Current Time: ${currentTime}</h2>-->
                <div class="tqyb_nr">
                    <iframe  style="padding-top: 20px;" scrolling="no" height="54" frameborder="0" allowtransparency="false"
                             src="http://i.tianqi.com/index.php?c=code&id=10&icon=1&num=3"></iframe>
                </div>
            </div>
        </div>
    </body>
</html>
