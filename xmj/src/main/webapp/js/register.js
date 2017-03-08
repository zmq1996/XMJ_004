var flag0 = false
var flag1 = false
var flag2 = false
var flag3 = false
var flag4 = false
var flag5 = false
var val5 = '0' 

function form_accountPrompt(){
	$("#form-account").next().attr("class","i-status i-status03")
	$("#form-account").next().css("display","block")
	$("#form-account").parent().next().children("span").css("color","red")
	$("#form-account").parent().next().children("span").text("  由4-20个字母或者数值组成")
}

function form_accountCheck(){
	/*console.info($("#form-account").next())*/
	var rvg = /^[a-zA-Z0-9_]{4,20}$/;
	/*console.info(rvg.test($("#form-account").val()))*/
	if(rvg.test($("#form-account").val())){
		$("#form-account").next().attr("class","i-status i-status02")
		$("#form-account").parent().next().children("span").text("")
		flag0 = true
	}else{
		$("#form-account").next().attr("class","i-status i-status03")
		$("#form-account").parent().next().children("span").text("  由4-20个字母或者数值组成")
		flag0 = false
	}
}

function form_pwdPrompt(){
	$("#form-pwd").next().attr("class","i-status i-status03")
	$("#form-pwd").next().css("display","block")
	$("#form-pwd").parent().next().children("span").css("color","red")
	$("#form-pwd").parent().next().children("span").text("  字母开头且使用字母、数字和符号两种及以上的组合，6-20个字符")
}

function form_pwdCheck(){
	/*console.info($("#form-account").next())*/
	var rvg = /^[a-zA-Z]\w{5,20}$/;
	/*console.info(rvg.test($("#form-account").val()))*/
	if(rvg.test($("#form-pwd").val())){
		$("#form-pwd").next().attr("class","i-status i-status02")
		$("#form-pwd").parent().next().children("span").text("")
		flag1 = true
	}else{
		$("#form-pwd").next().attr("class","i-status i-status03")
		$("#form-pwd").parent().next().children("span").text("  字母开头且使用字母、数字和符号两种及以上的组合，6-20个字符")
		flag1 = false
	}
}

function reform_pwdPrompt(){
	$("#form-equalTopwd").next().attr("class","i-status i-status03")
	$("#form-equalTopwd").next().css("display","block")
	$("#form-equalTopwd").parent().next().children("span").css("color","red")
	$("#form-equalTopwd").parent().next().children("span").text("  两次密码不相同")
}

function reform_pwdCheck(){
	/*console.info($("#form-account").next())*/
	var rvg = $("#form-pwd").val();
	/*console.info(rvg.test($("#form-account").val()))*/
	if(rvg == $("#form-equalTopwd").val()){
		$("#form-equalTopwd").next().attr("class","i-status i-status02")
		$("#form-equalTopwd").parent().next().children("span").text("")
		if($("#form-equalTopwd").val() == ""){
			$("#form-equalTopwd").parent().next().children("span").css("color","green")
			$("#form-equalTopwd").parent().next().children("span").text("  亲，头顶没绿也是不行的哟")
		} 
		flag2 = true
	}else{
		$("#form-equalTopwd").next().attr("class","i-status i-status03")
		$("#form-equalTopwd").parent().next().children("span").text("  两次密码不相同")
		flag2 = false
	}
}
/*++++++++++++++++++++++++++++*/
function form_phonePrompt(){
	$("#form-phone").next().attr("class","i-status i-status03")
	$("#form-phone").next().css("display","block")
}

function form_phoneCheck(){
	var val3 = $("#form-phone").val()
	var rvg = /^1[34578]\d{9}$/;
	if(rvg.test(val3)){
		$("#form-phone").next().attr("class","i-status i-status02")
		$("#form-phone").parent().next().children("span").text("")
		flag4 = true
	}else{
		$("#form-phone").next().attr("class","i-status i-status03")
		flag4 = false
	}
}

function mobileCodePrompt(){
	$("#mobileCode").next().next().attr("class","i-status i-status03")
	$("#mobileCode").next().next().css("display","block")
	/*alert()*/
}

function mobileCodeCheck(){
	var val4 = $("#mobileCode").val()
	if(val4 == val5){
		$("#mobileCode").next().next().attr("class","i-status i-status02")
		flag5 = true
	}else{
		$("#form-phone").next().next().attr("class","i-status i-status03")
		flag5 = false
	}
}
/*================================*/
function form_agreen(){
	flag3 = !flag3
	console.info(flag3)
}

function formSubmit(){
	if(flag0 && flag1 && flag2 && flag3 && flag4 && flag5){
		/*var params = $('#register-form').serialize()
		console.info(params)*/
		var val1 = $("#form-account").val()
		var val2 = $("#form-pwd").val()
		var val3 = $("#form-phone").val()
		$.post("user/register?u_name="+ val1+"&u_password="+val2+"&u_phone="+val3,null, function(data) {
			if(data){
				location.href = 'login.jsp'
			}else{
				location.href = 'register.jsp'
			}
		}, "json")
	}else{
		alert(flag3)
	}
	return false
}

/*function form_phoneCheck(){
	var val3 = $("#form-phone").val()
	var rvg = /^1[34578]\d{9}$/;
	if(rvg.test(val3)){
		flag4 = true
	}else{
		flag4 = false
	}
}*/

function getSMS(){
	var val3 = $("#form-phone").val()
	if(flag4){
		$.post("user/getSMS?u_phone="+val3,null, function(data) {
			alert(data)
			val5 = data
		}, "json")
	}else{
		
	}
	
}
