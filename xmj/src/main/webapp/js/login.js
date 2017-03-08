var flag6 = false
var flag7 = false

$(function() {
	if($("#loginMsg-error").text() != ""){
		$("#loginMsg-error").css("display","block")
	}// 任何需要执行的js特效 
});

function loginnameCheck(){
	var val = $("#loginname").val()
	/*var rvg = /^1[34578]\d{9}$/;*/
	if(val != ""){
		$("#loginname").next().css("display","block")
	}else{
		$("#loginname").next().css("display","none")
	}
}

function emptyLoginname(obj){
	$("#loginname").val("")
	$(obj).css("display","none")
}

function nloginpwdCheck(){
	var val = $("#nloginpwd").val()
	if(val != ""){
		$("#nloginpwd").next().css("display","block")
	}else{
		$("#nloginpwd").next().css("display","none")
	}
}

function emptyNloginpwd(obj){
	$("#nloginpwd").val("")
	$(obj).css("display","none")
}

function changeVcode(obj){
	var myDate = new Date(); 
	$(obj).attr("src","../vcode.jpg?time=" + myDate.getMilliseconds())
}

function loginSubmit(){
	var val1 = $('#loginname').val()
	var val2 = $('#nloginpwd').val()
	var val3 = $('#authcode').val()
	$.post("user/login?u_name="+ val1+"&u_password="+val2+"&vcode="+val3,null,function(data){
		console.info()
		console.info(data)
		if(data == true){
			location.href = '/xmj/index.jsp'
		}else{
			/*location.href = 'login.jsp'*/
			/*var msg = ${sessionScope.errorMsg}*/
			$("#loginMsg-error").text("用户名或密码错误")
			$("#loginMsg-error").css("display","block")
		}
	},"json")

}

