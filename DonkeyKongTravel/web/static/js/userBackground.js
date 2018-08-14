//侧边导航栏的ajax导航功能
//function navHome(){
//        $(".main_interface").hide();
//	$(".main_interface").load("adminBackground.htm.nav_main_interface",function(){
//            $(".menu_function").css("background-color","green");
//            $("#menu_home").css("background-color","green");
//        });
//        $(".main_interface").fadeIn(600);
//        
//}

function navChangePassword(){
        $(".main_interface").hide();
	$(".main_interface").load("user_changePassword.htm",function(){
            $(".menu_function").css("background-color","green");
            $("#menu_changePassword").css("background-color","green");
        });
        $(".main_interface").fadeIn(600);
}
function navmanageOrderedHotel(){
        $(".main_interface").hide();
	$(".main_interface").load("manageOrderHotel.htm",function(){
            $(".menu_function").css("background-color","green");
            $("#menu_manageOrderedHotel").css("background-color","green");
        });
        $(".main_interface").fadeIn(600);
}

function navManageYourTravel(){
        $(".main_interface").hide();
	$(".main_interface").load("manageYourTravel.htm",function(){
            $(".menu_function").css("background-color","green");
            $("#menu_manageYourTravel").css("background-color","green");
        });
        $(".main_interface").fadeIn(600);
}
function navManageYourGroupTravel(){
        $(".main_interface").hide();
	$(".main_interface").load("manageYourGroupTravel.htm",function(){
            $(".menu_function").css("background-color","green");
            $("#menu_manageYourGroupTravel").css("background-color","green");
        });
        $(".main_interface").fadeIn(600);
}