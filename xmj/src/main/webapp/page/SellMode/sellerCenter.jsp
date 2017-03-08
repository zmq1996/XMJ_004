<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="data-spm" content="a2142">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">

    <base href="/xmj/"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>晓米佳网 - 卖家中心</title>    
    <link href="css/SellMode/index-min.css" rel="stylesheet">
   	<link type="text/css" rel="stylesheet" href="css/buyerLogin.css" /> 
   	
   	<link href="css/SellMode/global.css" rel="stylesheet">
    <link href="css/SellMode/index.css" rel="stylesheet">
    <link href="css/SellMode/sellCenter.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
    
</head>

<body>
   
    <div id="seller-nav" role="navigation">
        <div id="site-nav-content">
            
            <div class="login-info" data-spm="a1zvp">
              <a class="user-nick" href="#" target="_top">${user.u_name }</a>
              ,
              <a id="J_Logout" href="#="_top">退出</a>
              <a class="user-nick" href="#" >站内信</a>
            </div>
            <!--新加入的消息dom-->
            <div id="J_Tmsg" class="tmsg" data-spm="a1zvq">
                <div class="J_Menu menu" data-fn-name="fn-tmsg">
                    <div class="menu-hd J_Tmsg_Basic tmsg_basic"><span class="J_Tmsg_Logo"><span class="J_Tmsg_Logo_Loading tmsg_logo_loading" style="display: none;"></span><span class="envelope"></span><span class="J_Tmsg_Logo_Text tmsg_logo_text" style="padding-left:5px;">消息</span><span class="J_Tmsg_Logo_Unread tmsg_logo_unread"></span></span><b class="tmsg_basic_arrow"></b></div>
                    <div class="menu-bd">
                        <div class="J_Tmsg_Panel_Apps tmsg_panel_apps">
                            <div class="J_Tmsg_Panel_Head tmsg_panel_head">
                                <h2 class="J_Tmsg_Panel_Title tmsg_panel_title">未读新消息</h2> <a class="J_Tmsg_Button_ReadAll tmsg_button_read-all" data-tip="ignoreAll" title="忽略所有消息" href="#" >全部设为已读</a></div>
                            <div class="J_Tmsg_Panel_AppsBody tmsg_panel_body"> <img style="display:block;margin:30px auto" width="48" height="48" src="image/SellMode/T1HcvHXd4nXXb6ROYh-48-48.gif"></div>
                            <div class="J_Tmsg_Panel_Foot tmsg_panel_foot"> <a class="J_Tmsg_Button_Setting tmsg_button_setting" data-tips="setting" title="消息设置" href="#" >查看全部</a>   </span></div>
                        </div>
                    </div>
                </div>
                <div class="J_Tmsg_Panels tmsg_panels" style="_display:none">
                    <div class="J_Tmsg_Panel_Detail tmsg_panel_detail"></div>
                    <div class="J_Tmsg_Panel_history tmsg_panel_history"></div>
                    <div class="J_Tmsg_Panel_Strong tmsg_panel_strong"></div>
                    <div class="J_Tmsg_Panel_Setting tmsg_panel_setting"></div>
                </div>
            </div>
            
            <ul class="quick-menu" data-spm="a1zvr">
                <li><a href="#" >晓米佳首页</a>
                    <s class="line-border"></s>
                </li>
                <li class="mytaobao">
                    <div class="menu">
                        <a class="menu-hd" href="#" >我的晓米佳<b class="short-cut-down"></b></a>
                        <s class="line-border"></s>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-100">
                            <div class="menu-bd-panel">
                                <div>
                                    <a href="#" >已买到的宝贝</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="seller-center">
                    <div class="menu">
                        <a class="menu-hd" href="#" >卖家中心<b class="short-cut-down"></b></a>
                        <s class="line-border"></s>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-101">
                            <div class="menu-bd-panel">
                                <div>
                                    <a href="#" >千牛手机管店</a>
                                    <br>
                                    <a href="#" >已卖出的宝贝</a>
                                    <br>
                                    <a href="#" >出售中的宝贝</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="seller-service">
                    <div class="menu">
                        <a class="menu-hd" href="#" >卖家服务<b class="short-cut-down"></b></a>
                        <s class="line-border"></s>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-102">
                            <div class="menu-bd-panel">
                                <div>
                                    <a href="#" >我的服务</a>
                                    <br>
                                    <a href="#" >我的课程</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li><a href="#" >联系客服</a></li>
            </ul>
        </div>
    </div>

   
    <div id="header">
        <div class="clearfix" data-spm="a1zvu">
            <h1 class="logo">
            <a href="#" >卖家中心</a>
        </h1>
        </div>
        <div id="topnav" data-spm="a1zvv">
            <ul class="site-menu">
                <li class="first"><a href="#" >首页</a></li>
                <li><a href="#" >规则中心</a></li>
                <li><a href="#" >安全中心</a></li>
                <li><a href="#" >服务中心</a></li>
                <li><a href="#" >卖家论坛</a></li>
                
            </ul>
            <div class="feedback">
                <span class="feedback-icon"></span>
                <a href="#" >问题反馈</a>
            </div>
        </div>
    </div>
    <div id="page">
       	<div class="layout">
       		<div class="col-main">
                <div class="main-wrap">
                    <!-- start of 系统通知 -->
                    <!-- start of 系统通知 -->
                    
                    <!-- end of 系统通知 -->
                    <!-- start of 面包屑 -->
                    <div class="navigation" data-spm="1998679971">
                        <div class="crumbs">
                            <a href="https://myseller.taobao.com/seller_admin.htm">我是卖家</a>
                            <span>&gt;</span>
                            <a href="javascript:void(0);">店铺基本设置</a>
                            <span>&gt;</span>
                            <a href="javascript:void(0);">店铺基本设置</a>
                        </div>
                        <div class="absright">
                            <ul>
                                <li>
                                    <div class="msg">
                                        <p class="help"><a href="https://sellerhelp.taobao.com/market/service/kaidian.php" target="_blank">查看帮助</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="shop-settings-wrapper" data-spm="1998679972">
                        <ul class="shop-settings-tabs">
                            <li class="selected"><a href="https://myseller.taobao.com/app.htm?aid=12">店铺基本设置</a></li>
                            <li><a href="https://myseller.taobao.com/app.htm?aid=78" target="_blank">淘宝认证</a></li>
                            <li><a href="https://member1.taobao.com/member/fresh/account_security.htm" target="_blank">账号管理</a></li>
                        </ul>
                    </div>
                    
                    <iframe src="page/SellMode/shop_basic.jsp" class="basic-setup-wrapper-iframe" id="SellerDashBoard" width="988" height="700" frameborder="no" scrolling="no" data-spm-act-id="a313o.7775918.0.i1.4CzJ1A" style="margin-bottom: 40px;"></iframe>
                </div>
            </div>
        	<div class="col-sub">
			    <div id="sidebar">
			        
			        <div class="app-quick-entry" data-spm="a1zvx">
			            <a class="entry-wrap" href="https://myseller.taobao.com/apps_manage.htm" target="_top">
			                <span class="title">快捷应用</span>
			                <span class="tip">设置</span>
			                <span class="icon"></span>
			            </a>
			        </div>
			        <div class="app-list J_AppList has-shop">
			            <ul data-spm="a1zvx" data-spm-max-idx="73">
			                <li class="category">
			                    <div class="category-name"><span class="category-icon"></span>交易管理<a href="https://myseller.taobao.com/apps_manage.htm#category_61" class="custom-entry" data-spm="dc61" data-id="61" data-spm-anchor-id="a313o.7775918.a1zvx.dc61">自定义</a><span class="icon J_AppToggle" data-id="61" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
			                    <ol class="category-app clearfix J_Category_61">
			                        <li class="common-app"><a href="https://trade.taobao.com/trade/itemlist/list_sold_items.htm?mytmenu=ymbb" title="已卖出的宝贝" data-spm="d28" data-spm-anchor-id="a313o.7775918.a1zvx.d28">已卖出的宝贝</a></li>
			                        <li class="common-app"><a href="https://rate.taobao.com/myRate.htm?banner=1&mytmenu=pj" title="评价管理" data-spm="d27" data-spm-anchor-id="a313o.7775918.a1zvx.d27">评价管理</a></li>
 			                        <li class="common-app"><a href="https://smf.taobao.com/index.htm?&menu=activity&module=fqg" target="_blank" title="分期管理" data-spm="d84" data-spm-anchor-id="a313o.7775918.a1zvx.d84">分期管理</a></li>
			                    </ol>
			                </li>
			                <li class="category">
			                    <div class="category-name"><span class="category-icon"></span>物流管理<a href="https://myseller.taobao.com/apps_manage.htm#category_62" class="custom-entry" data-spm="dc62" data-id="62" data-spm-anchor-id="a313o.7775918.a1zvx.dc62">自定义</a><span class="icon J_AppToggle" data-id="62" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
			                    <ol class="category-app clearfix J_Category_62">
			                        <li class="common-app"><a href="https://wuliu.taobao.com/user/order_list_new.htm?order_status_show=send&mytmenu=fh" title="发货" data-spm="d30" data-spm-anchor-id="a313o.7775918.a1zvx.d30">发货</a></li>
			                        <li class="common-app"><a href="https://wuliu.taobao.com/user/logis_tools.htm?mytmenu=wlgj" title="物流工具" data-spm="d32" data-spm-anchor-id="a313o.7775918.a1zvx.d32">物流工具</a></li>
			                        <li class="common-app"><a href="https://wlmart.wuliu.taobao.com/user/consign_setting.htm?mytmenu=fhsz" title="物流服务" data-spm="d34" data-spm-anchor-id="a313o.7775918.a1zvx.d34">物流服务</a></li>
			                        <li class="common-app"><a href="https://wuliu.taobao.com/kuaidi/post.htm" title="我要寄快递" data-spm="d33" data-spm-anchor-id="a313o.7775918.a1zvx.d33">我要寄快递</a></li>
			                    </ol>
			                </li>
			                
			                
			                <li class="category">
			                    <div class="category-name"><span class="category-icon"></span>宝贝管理<a href="https://myseller.taobao.com/apps_manage.htm#category_63" class="custom-entry" data-spm="dc63" data-id="63" data-spm-anchor-id="a313o.7775918.a1zvx.dc63">自定义</a><span class="icon J_AppToggle" data-id="63" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
			                    <ol class="category-app clearfix J_Category_63">
			                        <li class="common-app"><a href="https://upload.taobao.com/auction/sell.jhtml?mytmenu=wym" target="_blank" title="发布宝贝" data-spm="d48" data-spm-anchor-id="a313o.7775918.a1zvx.d48">发布宝贝</a></li>
			                        <li class="common-app"><a href="https://sell.taobao.com/auction/merchandise/auction_list.htm" title="出售中的宝贝" data-spm="d45" data-spm-anchor-id="a313o.7775918.a1zvx.d45">出售中的宝贝</a></li>
			                        <li class="common-app"><a href="https://sell.taobao.com/mytaobao/recommend/search_recommend_item.htm?mytmenu=cctj" title="橱窗推荐" data-spm="d43" data-spm-anchor-id="a313o.7775918.a1zvx.d43">橱窗推荐</a></li>
			                        <li class="common-app"><a href="https://sell.taobao.com/auction/merchandise/auction_list.htm?type=1" title="仓库中的宝贝" data-spm="d44" data-spm-anchor-id="a313o.7775918.a1zvx.d44">仓库中的宝贝</a></li>
			                        <li class="normal-app"><a href="http://archive.taobao.com/auction/merchandise/auction_list.htm?type=4" title="历史宝贝记录" data-spm="d40" data-spm-anchor-id="a313o.7775918.a1zvx.d40">历史宝贝记录</a></li>
			                        <li class="normal-app"><a href="https://baike.taobao.com/brandApplyResult.htm?spm=0.0.0.0.pvqpCv" target="_blank" title="品牌查询" data-spm="d38" data-spm-anchor-id="a313o.7775918.a1zvx.d38">品牌查询</a></li>
			                        <li class="normal-app"><a href="https://aliqcc.taobao.com/" title="资质认证" data-spm="d96" data-spm-anchor-id="a313o.7775918.a1zvx.d96">资质认证</a></li>
			                    </ol>
			                </li>
			                <li class="category">
			                    <div class="category-name"><span class="category-icon"></span>店铺管理<a href="https://myseller.taobao.com/apps_manage.htm#category_64" class="custom-entry" data-spm="dc64" data-id="64" data-spm-anchor-id="a313o.7775918.a1zvx.dc64">自定义</a><span class="icon J_AppToggle" data-id="64" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
			                    <ol class="category-app clearfix J_Category_64">
			                        <li class="common-app"><a href="https://store.taobao.com/shop/view_shop.htm?mytmenu=mdianpu&user_number_id=716920002" target="_blank" title="查看淘宝店铺" data-spm="d53" data-spm-anchor-id="a313o.7775918.a1zvx.d53">查看淘宝店铺</a></li>
			                        <li class="common-app"><a href="https://siteadmin.taobao.com/design.htm" target="_blank" title="店铺装修" data-spm="d56" data-spm-anchor-id="a313o.7775918.a1zvx.d56">店铺装修</a></li>
			                        <li class="common-app"><a href="https://siteadmin.taobao.com/category/index.htm" target="_blank" title="宝贝分类管理" data-spm="d55" data-spm-anchor-id="a313o.7775918.a1zvx.d55">宝贝分类管理</a></li>
			                        <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=12&cid=64" title="店铺基本设置" data-spm="d12" data-spm-anchor-id="a313o.7775918.a1zvx.d12">店铺基本设置</a></li>
			                        <li class="normal-app"><a href="https://pay.taobao.com/homePage.htm" target="_blank" title="账房" data-spm="d49" data-spm-anchor-id="a313o.7775918.a1zvx.d49">账房</a></li>
			                        <li class="normal-app"><a href="https://myseller.taobao.com/app.htm?aid=11&cid=64" title="商家保障" data-spm="d11" data-spm-anchor-id="a313o.7775918.a1zvx.d11">商家保障</a></li>
			                    </ol>
			                </li>
			                
			                <li class="category">
                                <div class="category-name"><span class="category-icon"></span>营销中心<a href="https://myseller.taobao.com/apps_manage.htm#category_65" class="custom-entry" data-spm="dc65" data-id="65" data-spm-anchor-id="a313o.7775918.a1zvx.dc65">自定义</a><span class="icon J_AppToggle" data-id="65" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
                                <ol class="category-app clearfix J_Category_65">
                                    <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=60&cid=65" title="店铺营销中心" data-spm="d60" data-spm-anchor-id="a313o.7775918.a1zvx.d60">店铺营销中心</a></li>
                                    <li class="common-app"><a href="https://sycm.taobao.com/portal/index.htm" target="_blank" title="生意参谋" data-spm="d58" data-spm-anchor-id="a313o.7775918.a1zvx.d58">生意参谋</a></li>
                                    <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=23&cid=65" title="我要推广" data-spm="d23" data-spm-anchor-id="a313o.7775918.a1zvx.d23">我要推广</a></li>
                                    <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=3&cid=65" title="活动报名" data-spm="d3" data-spm-anchor-id="a313o.7775918.a1zvx.d3">活动中心</a></li>
                                    <li class="normal-app"><a href="https://smf.taobao.com/index.htm" target="_blank" title="促销管理" data-spm="d62" data-spm-anchor-id="a313o.7775918.a1zvx.d62">促销管理</a></li>
                                </ol>
                            </li>
			                
			                
			                <li class="category last-category">
			                    <div class="category-name"><span class="category-icon"></span>客户服务<a href="https://myseller.taobao.com/apps_manage.htm#category_69" class="custom-entry" data-spm="dc69" data-id="69" data-spm-anchor-id="a313o.7775918.a1zvx.dc69">自定义</a><span class="icon J_AppToggle" data-id="69" unselectable="on"><b class="close"></b><b class="open"></b></span></div>
			                    <ol class="category-app clearfix J_Category_69">
			                        <li class="common-app"><a href="https://xiaobao.taobao.com/prepay/prepay_entry.htm" title="保障服务" data-spm="d80" data-spm-anchor-id="a313o.7775918.a1zvx.d80">保障服务</a></li>
			                        <li class="common-app"><a href="https://refund.taobao.com/refund_list.htm?banner=1&mytmenu=tuikuan" title="退款管理" data-spm="d79" data-spm-anchor-id="a313o.7775918.a1zvx.d79">退款管理</a></li>
			                        <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=8&cid=69" title="售后管理" data-spm="d8" data-spm-anchor-id="a313o.7775918.a1zvx.d8">售后管理</a></li>
			                        <li class="common-app"><a href="https://openshop.taobao.com/openshop/taobaoCertification.do" target="_blank" title="淘宝认证" data-spm="d78" data-spm-anchor-id="a313o.7775918.a1zvx.d78">淘宝认证</a></li>
			                        <li class="normal-app"><a href="https://myseller.taobao.com/app.htm?aid=22&cid=69" title="申诉中心" data-spm="d22" data-spm-anchor-id="a313o.7775918.a1zvx.d22">申诉中心</a></li>
			                        <li class="normal-app"><a href="http://qinquan.taobao.com/complaint/seller/beComplaintsAuction.htm" title="知识产权" data-spm="d94" data-spm-anchor-id="a313o.7775918.a1zvx.d94">知识产权</a></li>
			                    </ol>
			                </li>
			            </ul>
			        </div>
			        <div class="seller-sidebar-ordered-app-popup loading">
			            <s></s>
			            <b></b>
			            <a href="javascript:void(0);" class="close-btn J_CloseSellerSidebarPopup">×</a>
			            <div class="seller-sidebar-ordered-app-popup-content" data-spm="a1zvx">
			            </div>
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
            <a target="_blank" href="/links.vm/club.jd.com/links.aspx">
                友情链接
            </a>
            |
            <a target="_blank" href="//media.jd.com/">
                销售联盟
            </a>
            |
            <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;晓米佳XMJ.com&nbsp;版权所有
        </div>
    </div>
</div>
    
</body>

<script type="text/javascript" src="js/SellMode/sellerCenter.js"></script>
</html>
