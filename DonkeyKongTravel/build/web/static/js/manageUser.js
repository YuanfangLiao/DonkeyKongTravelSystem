/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//调用table的插件
$(document).ready(function () {


//病人列表的表格插件
    $("#all").DataTable({

//        "JQueryUI": true, //开关，是否启用JQueryUI风格 
//        "bStateSave": true, //开关，是否打开客户端状态记录功能。这个数据是记录在cookies中的，打开了这个记录后，即使刷新一次页面，或重新打开浏览器，之前的状态都是保存下来的- ------当值为true时aoColumnDefs不能隐藏列 
////        "sScrollX": "50%", //是否开启水平滚动，以及指定滚动区域大小,可设值：'disabled','2000%' 
        "aLengthMenu": [5, 10],
//        "bAutoWidth": true //自适应宽度 
        "scrollY": 200,
        "pagging": true,
//              "sScrollX": "80%", //是否开启水平滚动，以及指定滚动区域大小,可设值：'disabled','2000%' 
//                        "scrollCollapse": true,
        "info": false
    });
});


function deleteUser(obj) {

    var userid = $(obj).parent().siblings(".user_id").text().toString();
    if (confirm("Are You Sure Delete " + userid + "?")) {

        $.ajax({
            url: "deleteUser.do",
            type: "POST",
            dataType: "text",
            data: {
                "userid": userid
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageUsers.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("User was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}
function banUser(obj) {

    var userid = $(obj).parent().siblings(".user_id").text().toString();
    if (confirm("Are You Sure Ban " + userid + "?")) {

        $.ajax({
            url: "banUser.do",
            type: "POST",
            dataType: "text",
            data: {
                "userid": userid
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageUsers.htm");
//                    $(".list_main_interface_body").hide();                                                                                         
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("User was not existed!");
                } else if (data == "2") {
                    alert("User was already be banned!");
                }


            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}
function validUser(obj) {

    var userid = $(obj).parent().siblings(".user_id").text().toString();
    if (confirm("Are You Sure valid " + userid + "?")) {

        $.ajax({
            url: "validUser.do",
            type: "POST",
            dataType: "text",
            data: {
                "userid": userid
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageUsers.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("User was not existed!");
                } else if (data == "2") {
                    alert("User was already be valided!");
                }


            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}
function updateUser(obj) {

    //    配置弹出层
    $.colorbox({
        width: '500',
        heigth: '900',
        inline: true,
        href: '#popup',
        title: "Update Information",
        scrolling: false,
        close: "×"
    });


    var user_id = $(obj).parent().siblings(".user_id").text();
    var user_name = $(obj).parent().siblings(".user_name").text();
    var user_date = $(obj).parent().siblings(".user_date").text();
    var user_title = $(obj).parent().siblings(".user_title").text();
    var user_level = $(obj).parent().siblings(".user_level").text();

    $("#update_user_id").val(user_id);
    $("#update_user_name").val(user_name);
    $("#update_user_date").val(user_date);
    $("#update_user_level").val(user_level);


    if (user_title === "User") {
        $("#title_user").attr("checked", true);
    } else {
        $("#title_admin").attr("checked", true);
    }


//    更新按钮点击时进入数据库更新
    $("#updateButton").click(function () {
        var id = $("#update_user_id").val();
        var name = $("#update_user_name").val();
        var level = $("#update_user_level").val();
        var title = $('input[name="title"]:checked').val();
        var date = $("#update_user_date").val();


        $.ajax({
            url: "updateUser.do",
            type: "POST",
            datatype: "text",
            data: {
                "id": id,
                "name": name,
                "title": title,
                "date": date,
                "level": level
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("manageUsers.htm");
                } else if (data == "1") {
                    alert("<br/>Update Fail<br/>");
                }
            },
            error: function () {
                alert("AJAX Error");
            }
        });
    });
}


