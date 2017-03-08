<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="/xmj/">
<title>管理员界面</title>
  <link rel="icon" href="//www.jd.com/favicon.ico"/>
    <link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
    <link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
    <link type="text/css" rel="stylesheet" href="css/admin.css"/>
     <link type="text/css" rel="stylesheet" href="css/lanrenzhijia.css"/>
    <link type="text/css" rel="stylesheet"
          href="css/manageLogin.css"
          source="widget"/> 
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/json2.js"></script>
	<script src="js/jquery.collapse.js"></script>
	<script src="js/jquery.collapse_storage.js"></script>
	<script src="js/jquery.collapse_cookie_storage.js"></script>
</head>
<body>
<div class="w">
    <div id="logo">
        <a href="//www.jd.com/">
            <img src="image/logo-201305-b.png" alt="晓米佳" width="170" height="60">
        </a>
    </div>
    </div>
   <div id="content">
     <div class="w">
     <div class="coagent" id="kbCoagent"></div> 
     </div>
	 	<div id="center">
	 		<div class="bottom">
	 			<div class="left">
				  <div id="css3-animated-example">
				    <h3>用户管理</h3>
				    <div>
				      <div class="content">
				      	<ul>
				      		<li><a href="javaScript:userDetail()">用户详情</a></li>
				      		<li><a>添加用户</a></li>
				      	</ul>
				      </div>
				    </div>
				    <h3>店铺管理</h3>
				    <div>
				      <div class="content">
				        <ul>
				      		<li><a>店铺详情</a></li>
				      		<li><a>添加店铺</a></li>
				      	</ul>
				      </div>
				    </div>
				  </div>
  				</div>	
  				<script>
  				 $("#css3-animated-example").collapse({
			          accordion: true,
			          open: function() {
			            this.addClass("open");
			            this.css({ height: this.children().outerHeight()+287+"px" });
			          },
			          close: function() {
			            this.css({ height: "0px" });
			            this.removeClass("open");
			          }
			        });
  				</script> 				
	 			<div class="right">
	 				<table id="userList"></table> 
	 				<div id="p" class="easyui-panel"    
					        style="width:500px;height:150px;padding:10px;background:#fafafa;"   
					        data-options="fit:true,border:false">   
					    <div id="welcome">欢迎  <span style="color:green;"><%=session.getAttribute("manageName") %></span> 使用后台管理系统！</div> 
					
					         <div class="form">
					          	   <form id="addUser" method="post" onsubmit="return false;" action="manage/addUser">
					          	   		<ul>
					          	   			<li>用户名：<input id="u_name" type="text"  name="u_name" required="required"/></li>
					          	   			<li>密码：<input id="u_password" type="password"  name="u_password" required="required"/></li>
					          	   			<li>性别：<input id="man" type="radio"  name="u_sex"/>男<input id="woman" type="radio"  name="u_sex"/>女</li>
					          	   			<li>身份证：<input id="u_idcard" type="text"  name="idcard"required="required"/></li>
					          	   			<li>电话：<input id="u_phone" type="text"  name="u_phone"required="required"/></li>
					          	   			<li>邮箱：<input id="u_email" type="text"  name="email" required="required"/></li>
					          	   			<li>买/卖家：<input id="u_root" type="text"  name="u_root" required="required"/></li>
					          	   			<li>实名认证：<input id="u_real" type="text"  name="realNameAuthentication" required="required"/></li>
					          	   			<li>支付认证：<input id="u_pay" type="text"  name="payAuthentication" required="required"/></li>
					          	   		</ul>
					              </form>
					         </div>
					    </div>
			    </div>  
	<div id="modifyDiv">
			<form id="modifyForm" method="post">
				<p><input id="uid" name="u_id" readonly="readonly"/></p>
				<p><input id="uname" name="u_name"/></p>
				<p><input id="upassword" name="u_password"/></p>
				<p><input id="usex" name="u_sex"/></p>
				<p><input id="uidcard" name="idcard" /></p>
				<p><input id="uphone" name="u_phone"/></p>
				<p><input id="uemail" name="email"/></p>
				<p><input id="uroot" name="u_root"/></p>
				<p><input id="ureal" name="realNameAuthentication"/></p>
				<p><input id="upay" name="payAuthentication"/></p>
				<p><a class="updateBtn" href="javaScript:void(0)">修改</a>&nbsp;
				<a class="closeBtn" href="javaScript:void(0)">关闭</a></p>
			</form>
		</div>
      </div>
      </div>
      </div>
	<div class="w">
    <div id="footer-2013">
        <div class="links">
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">
                关于我们
            </a>
            |
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">
                联系我们
            </a>
            |
            <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">
                人才招聘
            </a>
            |
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">
                商家入驻
            </a>
            |
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/service.aspx">
                广告服务
            </a>
            |
            <a rel="nofollow" target="_blank" href="//app.jd.com/">
                手机晓米佳
            </a>
            |
            <a target="_blank" href="/links.vm/club.jd.com/links.aspx">
                友情链接
            </a>
            |
            <a target="_blank" href="//media.jd.com/">
                销售联盟
            </a>
            |
            <a href="//club.jd.com/" target="_blank">
                晓米佳社区
            </a>
            |
            <a href="//gongyi.jd.com" target="_blank">
                晓米佳公益
            </a>
            |
            <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;晓米佳.com&nbsp;版权所有
        </div>
    </div>
</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/admin.js"></script>
</body>
</html>
