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


function PublishGroup() {

    var title = $("#title").val();
    var att_id = $("#att_id").val();
    var hotel_id = $("#hotel_id").val();
    var begin_date = $("#begin_date").val();
    var end_date = $("#end_date").val();
//    var begin_date = new Date();
//    var end_date = new Date();
    var fee = $("#fee").val();
    var num_people = $("#num_people").val();
    var trip_mode = $("#trip_mode").val();

    
    $.ajax({
        url: "publishGroup.do",
        type: "POST",
        datatype: "text",
        data: {
            "title": title,
            "att_id": att_id,
            "hotel_id": hotel_id,
            "begin_date ": begin_date,
            "end_date ": end_date,
            "fee": fee,
            "num_people": num_people,
            "trip_mode": trip_mode
        },
        success: function (data) {
            if (data == "0") {
                alert("publish success!");

            } else {
                alert("publish Fail");
            }
        },
        error: function () {
            alert("Entered Wrong information. Attaction,hotel,fee,people should be int,And All blank should not be null");
        }
    });
}

function JoinGroups() {
    alert("Join Success");
}



