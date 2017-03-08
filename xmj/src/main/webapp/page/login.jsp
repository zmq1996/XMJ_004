<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>晓米佳-欢迎登录</title>
    <link type="text/css" rel="stylesheet"
          href="../css/buyerLogin.css"
          source="widget"/>  
    <script type="text/javascript" src="../easyui/jquery.min.js"></script>
    
    <script type="text/javascript" src="../js/login.js"></script> 
		</head>
<body>
<!-- SDK 登录 -->
<div class="w">
    <div id="logo">
        <a href="/xmj/index.jsp" clstag="pageclick|keycount|20150112ABD|45">
            <img src="/xmj/image/logo_s.v2.png" alt="晓米佳" width="170" height="60">
        </a>
        <b></b>
     </div>
			<!--<a href="//surveys.jd.com/index.php?r=survey/index/sid/568245/lang/zh-Hans" target="_blank"  class="q-link"><b></b>登录页面，调查问卷</a>-->
    </div> 
<div id="content">
    <div class="login-wrap">
		<div class="w">
            <div class="login-form">
                <!-- <div class="login-tab login-tab-l">
                    <a href="javascript:void(0)" clstag="pageclick|keycount|201607144|1"> 扫码登录</a>
                </div>  -->
                <div class="login-tab login-tab-r">
                    <a href="javascript:void(0)" clstag="pageclick|keycount|201607144|2">账户登录</a>
                </div>
                <div class="login-box">
                    <div class="mt tab-h">
                    </div>
                    <div class="msg-wrap" >
						<div class="msg-error hide" id="loginMsg-error" >${sessionScope.errorMsg}</div>
                    </div>
                    <div class="mc">
                        <div class="form">
                            <form id="formlogin" method="post" onsubmit="return false;">
								<input type="hidden" id="uuid" name="uuid" value="72b3b824-3a8f-4f32-9d65-b134a6e0d539"/>
                                <input type="hidden" name="eid" id="eid" value="" class="hide"/>
                                <input type="hidden" name="fp" id="sessionId" value="" class="hide"/>
                                <input type="hidden" name="_t" id="token" value="_ntXubuv" class="hide"/>
                                <input type="hidden" name="loginType" id="loginType" value="c" class="hide"/>
                                <input type="hidden" name="pubKey" id="pubKey" value="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDlOJu6TyygqxfWT7eLtGDwajtNFOb9I5XRb6khyfD1Yt3YiCgQWMNW649887VGJiGr/L5i2osbl8C9+WJTeucF+S76xFxdU6jE0NQ+Z+zEdhUTooNRaY5nZiu5PgDB0ED/ZKBUSLKL7eibMxZtMlUDHjm4gwQco1KRMDSmXSMkDwIDAQAB" class="hide"/>
                                <input type="hidden" name="npXPeINZhM" value="NdZUX"/>
									<div class="item item-fore1">
										<label for="loginname" class="login-label name-label"></label>
										<input id="loginname" type="text" class="itxt"
											onkeyup="loginnameCheck()"
											name="loginname" tabindex="1" autocomplete="off"
											maxlength="18" placeholder="用户名/已验证手机" /> <span
											class="clear-btn" onclick="emptyLoginname(this)"></span>
									</div>

									<div id="entry" class="item item-fore2">
									<label class="login-label pwd-label" for="nloginpwd"></label>
									<input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error"
										onkeyup="nloginpwdCheck()"
										tabindex="2" autocomplete="off" placeholder="密码" maxlength="18" />
									<span class="clear-btn" onclick="emptyNloginpwd(this)"></span>
									<span class="capslock"><b></b>大小写锁定已打开</span>
								</div>
                                <div id="o-authcode"
                                     class="item item-vcode item-fore3 ">
                                    <input id="authcode" type="text" class="itxt itxt02" name="authcode" tabindex="3">
                                    <img id="JD_Verification1" class="verify-code"
                                    src="../vcode.jpg" onclick="changeVcode(this)"/>
                                    <a href="javascript:void(0)" onclick="$('#JD_Verification1').click();">看不清换一张</a>
                                </div>
								
								<div class="item item-fore4">
									<div class="safe">
										<span>
                                          <!--  <input id="autoLogin" name="chkRememberMe" type="checkbox"
                                                   class="jdcheckbox" tabindex="3"
                                                   clstag="pageclick|keycount|20150112ABD|6">
                                            <label for="">自动登录</label> -->
                                                                             	</span>
										<span class="forget-pw-safe">
											<a href="/uc/links?tag=safe" class="" target="_blank"
												clstag="pageclick|keycount|201607144|3">忘记密码</a>
										</span>
                                 	</div>
                                </div>
								
                                <div class="item item-fore5">
                                    <div class="login-btn">
                                        <a href="javascript:login();" class="btn-img btn-entry" id="loginsubmit" tabindex="6"
                                           onclick="loginSubmit()"
                                           clstag="pageclick|keycount|201607144|3">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- <div class="qrcode-login">
                    <div class="mc">
                        <div class="qrcode-error-2016">
                            <div class="qrcode-error-mask">
                            </div>
                            <p class="err-cont">服务器出错</p>
                            <a href="javascript:void(0)" class="refresh-btn">刷新</a>
                        </div>
                        <div class="qrcode-main">
                            <div class="qrcode-img">
                                <img src="//img14.360buyimg.com/da/jfs/t559/51/841097244/15946/f4ff9e8/548faf09N1acc240e.png" alt="">
                            </div>
                            <div class="qrcode-help" style="display: none; "></div>
                        </div>
                        <div class="qrcode-panel">
                            <ul>
                                <li class="fore1">
									<span>打开</span>
                                    <a href="/uc/links?tag=apps" target="_blank"
										clstag="pageclick|keycount|201607144|9">
									<span class="red">手机京东</span></a>
                                </li>
								<li>扫描二维码</li>
                            </ul>
                        </div>
                        <div class="coagent qr-coagent" id="qrCoagent">
                            <ul>
                                <li><b></b><em>免输入</em></li>
                                <li><b class="faster"></b><em>更快&nbsp;</em></li>
                                <li><b class="more-safe"></b><em>更安全</em></li>
                            </ul>
                        </div>
                    </div>
                </div> -->
				             <div class="coagent" id="kbCoagent">
                    <ul>
                        	<!-- 					                        <li>
                            <a href="javascript:void(0)"
                               onclick="window.location='//qq.jd.com/new/qq/login.aspx'+window.location.search;return false;"
                               clstag="pageclick|keycount|201607144|6" class="pdl"><b
                                    class="QQ-icon"></b><span>QQ</span></a>
                                                        <span class="line">|</span>
                                                    </li>
                                                                        <li>
                            <a href="javascript:void(0)"
                               onclick="window.location='//qq.jd.com/new/wx/login.action'+window.location.search;return false;"
                               clstag="pageclick|keycount|201607144|7" class="pdl"><b
                                    class="weixin-icon"></b><span>微信</span></a>
								                        </li> -->
                                                                                                <li class="extra-r">
                            <div>
                                <div class="regist-link"><a
                                        href="/xmj/page/register.jsp"
                                        clstag="pageclick|keycount|201607144|8"
                                        target="_blank"><b></b>立即注册</a></div>
                            </div>
                        </li>
                    </ul>
                </div>            </div>
        </div>
        <div class="login-banner" clstag="pageclick|keycount|20150112ABD|46">
            <div class="w">
                <div id="banner-bg" class="i-inner"
                     >
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
           <!--  <a rel="nofollow" target="_blank" href="//app.jd.com/">
                手机京东
            </a>
            | -->
            <a target="_blank" href="/links.vm/club.jd.com/links.aspx">
                友情链接
            </a>
            |
            <a target="_blank" href="//media.jd.com/">
                销售联盟
            </a>
            |
           <!--  <a href="//club.jd.com/" target="_blank">
                京东社区
            </a>
            |
            <a href="//gongyi.jd.com" target="_blank">
                京东公益
            </a>
            | -->
            <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;晓米佳XMJ.com&nbsp;版权所有
        </div>
    </div>
</div>

<!-- <script type="text/javascript" src="//seq.jd.com/jseqf.html?bizId=passport_jd_com_login_pc&platform=js&version=1"></script>
 -->
<!-- SDK 登录 -->
</body>
</html>


