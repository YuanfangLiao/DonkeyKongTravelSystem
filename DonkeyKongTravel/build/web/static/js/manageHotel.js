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


function deleteHotel(obj) {

    var hotel_name = $(obj).parent().siblings(".name").text().toString();
    var hotel_id = $(obj).parent().siblings(".hotel_id").text().toString();
    if (confirm("Are You Sure Delete " + hotel_name + "?")) {

        $.ajax({
            url: "deleteHotel.do",
            type: "POST",
            dataType: "text",
            data: {
                "hotel_id": hotel_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageHotel.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Hotel was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}

function updateHotel(obj) {

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


    var hotel_id = $(obj).parent().siblings(".hotel_id").text();
    var name = $(obj).parent().siblings(".name").text();
    var location_id = $(obj).parent().siblings(".location_id").text();
    var price = $(obj).parent().siblings(".price").text();
    var num_like = $(obj).parent().siblings(".num_like").text();
    var num_comments = $(obj).parent().siblings(".num_comments").text();


    $("#update_hotel_id").val(hotel_id);
    $("#update_hotel_name").val(name);
    $("#update_hotel_location_id").val(location_id);
    $("#update_hotel_price").val(price);
    $("#update_hotel_num_comments").val(num_comments);
    $("#update_hotel_num_like").val(num_like);




//    更新按钮点击时进入数据库更新
    $("#updateButton").click(function () {
        var id = $("#update_hotel_id").val();
        var name = $("#update_hotel_name").val();
        var location_id = $("#update_hotel_location_id").val();
        var price = $("#update_hotel_price").val();
        var num_comments = $("#update_hotel_num_comments").val();
        var num_like = $("#update_hotel_num_like").val();


        $.ajax({
            url: "updateHotel.do",
            type: "POST",
            datatype: "text",
            data: {
                "id": id,
                "name": name,
                "location_id": location_id,
                "price ":price ,
                "num_comments":num_comments,
                "num_like": num_like
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("manageHotel.htm");
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


