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
				    <h3>店铺交易管理</h3>
				    <div>
				      <div class="content">
				      	<ul>
				      		<li><a>每日交易数量Top10</a></li>
				      		<li><a>每月交易数量Top10</a></li>
				      		<li><a>每年交易数量Top10</a></li>
				      	</ul>
				      </div>
				    </div>
				    <h3>交易报表</h3>
				    <div>
				      <div class="content">
				        <ul>
				      		<li><a>年报表</a></li>
				      		<li><a>月报表</a></li>
				      		<li><a>日报表</a></li>
				      	</ul>
				      </div>
				    </div>
				     <h3>普通管理员管理</h3>
				    <div>
				      <div class="content">
				        <ul>
				      		<li><a>管理员详情</a></li>
				      		<li><a>添加管理员</a></li>
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
	 				<div id="p" class="easyui-layout"    
					        style="width:500px;height:150px;padding:10px;background:#fafafa;"   
					        data-options="fit:true,border:false">   
					    <div id="welcome">欢迎  <span style="color:green;"><%=session.getAttribute("manageName") %></span> 使用后台管理系统！</div> 
					</div>
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
	<script type="text/javascript" src="js/admin2.js"></script>
</body>
</html>
