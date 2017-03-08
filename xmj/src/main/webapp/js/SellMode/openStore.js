function step2(){
	$(".ice_page1").eq(0).css("display","none");
	$(".ice_page2").eq(0).css("display","block");
	$(".ice_page3").eq(0).css("display","none");
}

function step1(){
	$(".ice_page1").eq(0).css("display","block");
	$(".ice_page2").eq(0).css("display","none");
	$(".ice_page3").eq(0).css("display","none");
}

function step3(){
	$(".ice_page1").eq(0).css("display","none");
	$(".ice_page2").eq(0).css("display","none");
	$(".ice_page3").eq(0).css("display","block");
}

function open_pact_window(){
	$(".shop-dialog").eq(0).css("display","block");
}
function dialog_close(){
	$(".shop-dialog").eq(0).css("display","none");
}

function sendApply(){
	
	//[] 和 eq()取值的差别
	var u_id = $("input[name='u_id']").eq(0).val();
	var payAuthentication = $("input[name='payAuthentication']").eq(0).val();
	var realNameAuthentication = $("input[name='realNameAuthentication']").eq(0).val();
	
	$.post("seller/openShop",{"u_id":u_id,"payAuthentication":payAuthentication,"realNameAuthentication":realNameAuthentication},function(data){
		if(data==1){
			$(".ice_page1").eq(0).css("display","none");
			$(".ice_page2").eq(0).css("display","none");
			$(".ice_page3").eq(0).css("display","none");
			$(".open-success").eq(0).css("display","block");
			dialog_close();
		}else if(data==0){
			alert("对不起，您不满足要求，请检查自己的实名认证和支付认证");
		}else{
			alert("数据库异常，请检查自己是否符合要求，重新尝试一次");
		}
	},"JSON")

}