<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="/xmj/">
<title>忘记密码</title>
  <link rel="icon" href="//www.jd.com/favicon.ico"/>
    <link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
    <link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
    <link type="text/css" rel="stylesheet"
          href="css/manageLogin.css"
          source="widget"/> 
</head>
<body>
<div class="w">
    <div id="logo">
        <a href="//www.jd.com/" clstag="pageclick|keycount|20150112ABD|45">
            <img src="//misc.360buyimg.com/lib/img/e/logo-201305-b.png" alt="晓米佳" width="170" height="60">
        </a>
    
   <div id="content">
    <div class="login-wrap">
		<div class="w">
            <div class="login-form" style="float:left; margin-left:300px;">
                <div class="login-tab login-tab-r">
                    <span style="font-size:35px;">忘记密码</span>
                </div>
                <div class="login-box">
                    <div class="mt tab-h">
                    </div>
                    <div class="msg-wrap">
						<div class="msg-warn hide"><b></b></div>
						<div class="msg-error hide"><b></b></div>
                    </div>
                    <div class="mc">
                        <div class="form">
                       <form action="user/forget" id="formlogin" method="post">
							 <div class="item item-fore1">
                                    <label for="aname" class="login-label name-label"></label>
                                    <input id="aname" type="text" class="itxt" name="a_name" tabindex="1"
										autocomplete="off" placeholder="用户名" required="required"/>
                                    <span class="clear-btn"></span>
                                </div>
                                <div id="entry" class="item item-fore2">
									<label class="login-label pwd-label" for="apassword"></label>
									<input  id="obligate1" name="obligate1" class="itxt itxt-error"
										tabindex="2" autocomplete="off" placeholder="绑定手机号" required="required"/>
									<span class="clear-btn"></span>
								</div>
			
                                <div id="o-authcode"
                                     class="item item-vcode item-fore3  hide ">
                                    <input id="authcode" type="text" class="itxt itxt02" name="authcode" tabindex="3">
                                    <img id="JD_Verification1" class="verify-code" src2="//authcode.jd.com/verify/image?a=1&amp;acid=72b3b824-3a8f-4f32-9d65-b134a6e0d539&amp;uid=72b3b824-3a8f-4f32-9d65-b134a6e0d539"
                                                                                      onclick="this.src= document.location.protocol +'//authcode.jd.com/verify/image?a=1&amp;acid=72b3b824-3a8f-4f32-9d65-b134a6e0d539&amp;uid=72b3b824-3a8f-4f32-9d65-b134a6e0d539&amp;yys='+new Date().getTime();$('#authcode').val('');"/>
                                    <a href="javascript:void(0)" onclick="$('#JD_Verification1').click();"></a>
                                </div>
                                <div class="item item-fore5">
                                    <div class="login-btn">
                                        <a href="javascript:;" class="btn-img btn-entry" id="loginsubmit" tabindex="6">找&nbsp;&nbsp;回&nbsp;&nbsp;密&nbsp;&nbsp;码</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>          
                    </div>
                </div>
				             <div class="coagent" id="kbCoagent"></div>  
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
</body>
</html>