/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



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




function updateHotelOrder(obj) {

    //    配置弹出层
    $.colorbox({
        width: '500',
        heigth: '900',
        inline: true,
        href: '#popup',
        title: "Update Hotel Order",
        scrolling: false,
        close: "×"
    });

    var hotel_order_id = $(obj).parent().siblings(".hotel_order_id").text();
    var user_id = $(obj).parent().siblings(".user_id").text();
    var hotel_id = $(obj).parent().siblings(".hotel_id").text();
    var order_date = $(obj).parent().siblings(".order_date").text();

    $("#update_hotel_order_id").val(hotel_order_id);
    $("#update_user_id").val(user_id);
    $("#update_hotel_id").val(hotel_id);
    $("#update_order_date").val(order_date);

//按钮点击时进入数据库更新
    $("#updateButton").click(function () {

        var hotelorderid = $("#update_hotel_order_id").val();
        var userid = $("#update_user_id").val();
        var hotelid = $("#update_hotel_id").val();
        var date = $("#update_order_date").val();


        $.ajax({
            url: "updateHotelOrder.do",
            type: "POST",
            datatype: "text",
            data: {
                "hotelorderid": hotelorderid,
                "userid":userid,
                "hotelid": hotelid,
                "date": date,
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("manageOrderHotel.htm");
                } else if (data == "1") {
                    alert("Update Fail,the date should be in future,at least today ^_^");
                } 
                
            },
            error: function () {
                alert("AJAX Error");
            }
        });
    });
}


function deleteHotelOrder(obj) {

    var hotelorderid = $(obj).parent().siblings(".hotel_order_id").text().toString();
    if (confirm("Are You Sure Delete Order which id is:" + hotelorderid + "?")) {

        $.ajax({
            url: "deleteHotelOrder.do",
            type: "POST",
            dataType: "text",
            data: {
                "hotelorderid": hotelorderid
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageOrderHotel.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Order was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}