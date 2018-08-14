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


function deleteFood(obj) {

    var food_name = $(obj).parent().siblings(".name").text().toString();
    var food_id = $(obj).parent().siblings(".food_id").text().toString();
    if (confirm("Are You Sure Delete " + food_name + "?")) {

        $.ajax({
            url: "deleteFood.do",
            type: "POST",
            dataType: "text",
            data: {
                "food_id": food_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageFood.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Food was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}

function updateFood(obj) {

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


    var food_id = $(obj).parent().siblings(".food_id").text();
    var name = $(obj).parent().siblings(".name").text();
    var type = $(obj).parent().siblings(".type").text();
    var num_like = $(obj).parent().siblings(".num_like").text();
    var num_praise = $(obj).parent().siblings(".num_praise").text();


    $("#update_food_id").val(food_id);
    $("#update_food_name").val(name);
    $("#update_food_type").val(type);
    $("#update_num_like").val(num_like);
    $("#update_num_praise").val(num_praise);




//    更新按钮点击时进入数据库更新
    $("#updateButton").click(function () {
        var id = $("#update_food_id").val();
        var name = $("#update_food_name").val();
        var type = $("#update_food_type").val();
        var num_praise = $("#update_num_praise").val();
        var num_like = $("#update_num_like").val();


        $.ajax({
            url: "updateFood.do",
            type: "POST",
            datatype: "text",
            data: {
                "id": id,
                "name": name,
                "type": type,
                "num_praise": num_praise,
                "num_like": num_like
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("manageFood.htm");
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


