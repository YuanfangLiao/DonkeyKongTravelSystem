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


function deleteAtt(obj) {

    var att_name = $(obj).parent().siblings(".att_name").text().toString();
    var att_id = $(obj).parent().siblings(".att_id").text().toString();
    if (confirm("Are You Sure Delete " + att_id + "?")) {

        $.ajax({
            url: "deleteAtt.do",
            type: "POST",
            dataType: "text",
            data: {
                "attid": att_id
            },
            success: function (data) {
                if (data == "0") {
                    $(".list_main_interface_body").load("manageAttractions.htm");
//                    $(".list_main_interface_body").hide();
//                    $(".list_main_interface_body").fadeIn(800);
//                    window.location.href = 'manageUsers.htm';
                } else if (data == "1") {
                    alert("Attractions was not existed!");
                }

            },
            error: function () {
                alert("AJAX Issue");
            }
        });
    }
}

function updateAtt(obj) {

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


    var att_id = $(obj).parent().siblings(".att_id").text();
    var att_name = $(obj).parent().siblings(".att_name").text();
    var att_location_id= $(obj).parent().siblings(".att_location_id").text();
    var att_num_like= $(obj).parent().siblings(".att_num_like").text();

    $("#update_att_id").val(att_id);
    $("#update_att_name").val(att_name);
    $("#update_att_location_id").val(att_location_id);
    $("#update_num_like").val(att_num_like);




//    更新按钮点击时进入数据库更新
    $("#updateButton").click(function () {
        var att_id = $("#update_att_id").val();
        var name = $("#update_att_name").val();
        var location_id = $("#update_att_location_id").val();
        var num_like = $("#update_num_like").val();


        $.ajax({
            url: "updateAtt.do",
            type: "POST",
            datatype: "text",
            data: {
                "att_id": att_id,
                "name": name,
                "location_id": location_id,
                "num_like": num_like
            },
            success: function (data) {
                if (data == "0") {
                    $.colorbox({
                        html: "<br/>Update Success<br/>",
                        close: "",
                        opacity: "0"
                    });
                    $(".list_main_interface_body").load("manageAttractions.htm");
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


