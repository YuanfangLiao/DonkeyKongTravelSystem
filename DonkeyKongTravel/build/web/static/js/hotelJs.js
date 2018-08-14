/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(function () {
    $("#praise").click(function () {
        var praise_img = $("#praise-img");
        var text_box = $("#add-num");
        var praise_txt = $("#praise-txt");
        var num = parseInt(praise_txt.text());
        if (praise_img.attr("src") == ("static/img/yizan.png")) {
            $(this).html("<img src='static/img/zan.png' id='praise-img' class='animation' />");
            praise_txt.removeClass("hover");
            text_box.show().html("<em class='add-animation'>-1</em>");
            $(".add-animation").removeClass("hover");
            num -= 1;
            praise_txt.text(num)
        } else {
            $(this).html("<img src='static/img/yizan.png' id='praise-img' class='animation' />");
            praise_txt.addClass("hover");
            text_box.show().html("<em class='add-animation'>+1</em>");
            $(".add-animation").addClass("hover");
            num += 1;
            praise_txt.text(num)
        }
    });
})

$(document).ready(function () {
    $(".cb").colorbox({rel: "cb", slideshow: true, transition: "fade",
        loop: false, opacity: 0.3});
});


function bookingHotel(id) {

    //    配置弹出层
    $.colorbox({
        width: '500',
        heigth: '900',
        inline: true,
        href: '#popup',
        title: "Hotel Booking Information",
        scrolling: false,
        close: "×"
    });

    var hotel_id = id;

    $("#updateButton").click(function () {
        var hotelid = hotel_id;
        var orderdate = $("#update_user_date").val();
        
        $.ajax({
            url: "orderHotel.do",
            type: "POST",
            datatype: "text",
            data: {
                "hotelid":hotelid,
                "orderdate": orderdate
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
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

