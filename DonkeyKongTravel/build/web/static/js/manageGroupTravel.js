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


function deleteYourGroups(obj) {

    var title = $(obj).parent().siblings(".title").text().toString();
    var group_travel_id = $(obj).parent().siblings(".group_travel_id").text().toString();
    if (confirm("Are You Sure Delete " + title + "?")) {

        $.ajax({
            url: "deleteGroup.do",
            type: "POST",
            dataType: "text",
            data: {
                "group_travel_id": group_travel_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("groupTravel.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Groups was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}

function updateYourGroups(obj) {

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


    var group_travel_id = $(obj).parent().siblings(".group_travel_id").text();
    var title = $(obj).parent().siblings(".title").text();
    var user_id = $(obj).parent().siblings(".user_id").text();
    var att_id = $(obj).parent().siblings(".att_id").text();
    var hotel_id = $(obj).parent().siblings(".hotel_id").text();
    var begin_date = $(obj).parent().siblings(".begin_date").text();
    var end_date = $(obj).parent().siblings(".end_date").text();
    var fee = $(obj).parent().siblings(".fee").text();
    var num_people = $(obj).parent().siblings(".num_people").text();
    var trip_mode = $(obj).parent().siblings(".trip_mode").text();


    $("#update_group_travel_id").val(group_travel_id);
    $("#update_title").val(title);
    $("#update_user_id").val(user_id);
    $("#update_att_id").val(att_id);
    $("#update_hotel_id").val(hotel_id);
    $("#update_begin_date").val(begin_date);
    $("#update_end_date").val(end_date);
    $("#update_fee").val(fee);
    $("#update_num_people").val(num_people);
    $("#update_trip_mode").val(trip_mode);



//    更新按钮点击时进入数据库更新
    $("#updateButton").click(function () {
        var group_travel_id = $("#update_group_travel_id").val();
        var title = $("#update_title").val();
        var user_id = $("#update_user_id").val();
        var att_id = $("#update_att_id").val();
        var hotel_id = $("#update_hotel_id").val();
        var begin_date = $("#update_begin_date").val();
        var end_date = $("#update_end_date").val();
        var fee = $("#update_fee").val();
        var num_people = $("#update_num_people").val();
        var trip_mode = $("#update_trip_mode").val();


        $.ajax({
            url: "updateGroup.do",
            type: "POST",
            datatype: "text",
            data: {
                "group_travel_id": group_travel_id,
                "title": title,
                "user_id": user_id,
                "att_id": att_id,
                "hotel_id": hotel_id,
                "begin_date": begin_date,
                "end_date": end_date,
                "fee": fee,
                "num_people": num_people,
                "trip_mode": trip_mode
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("groupTravel.htm");
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

function BanGroups(obj) {

    var group_travel_id = $(obj).parent().siblings(".group_travel_id").text().toString();
    if (confirm("Are You Sure Ban " + group_travel_id + "?")) {

        $.ajax({
            url: "banGroups.do",
            type: "POST",
            dataType: "text",
            data: {
                "group_travel_id": group_travel_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("groupTravel.htm");
//                    $(".list_main_interface_body").hide();                                                                                         
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Group was not existed!");
                } else if (data == "2") {
                    alert("Group was already be banned!");
                }


            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}
function validGroups(obj) {

    var group_travel_id = $(obj).parent().siblings(".group_travel_id").text().toString();
    if (confirm("Are You Sure valid " + group_travel_id + "?")) {

        $.ajax({
            url: "validGroup.do",
            type: "POST",
            dataType: "text",
            data: {
                "group_travel_id": group_travel_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("groupTravel.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Group was not existed!");
                } else if (data == "2") {
                    alert("Group was already be valided!");
                }


            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}


