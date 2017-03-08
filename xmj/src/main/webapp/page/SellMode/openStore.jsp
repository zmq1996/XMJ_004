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
    <title>晓米佳网 - 开店</title>    
    <link href="css/SellMode/opStore_index.css" rel="stylesheet">  
    <link href="css/SellMode/index-min.css" rel="stylesheet">
    <link href="css/SellMode/opStore_index(4).css" rel="stylesheet" >
    <link href="css/SellMode/opStore_index5.css" rel="stylesheet" type="text/css" >
   	<link href="css/SellMode/openStore.css" rel="stylesheet" type="text/css">
   	<link type="text/css" rel="stylesheet" href="css/buyerLogin.css" /> 
    
</head>

<body data-spm="3063657" class=" new-seller " style="overflow-y: auto; padding-right: 0px;">
   
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
               <!-- <li class="seller-map buyer-map" data-spm="a1zvs">
                    <div class="menu">
                        <span class="menu-hd" tabindex="0" aria-haspopup="menu-103" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单"><b></b>卖家地图</span>
                        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-103">
                            <div class="menu-bd-panel">
                                <ul class="seller-map-wrapper clearfix">
                                    <li class="seller-map-column">
                                        <div class="seller-map-cell seller-map-cell-t" data-index="1" data-more="1">
                                            <h2>开店&amp;入驻</h2>
                                            <ol class="seller-map-item-wrapper">
                                                <li><a href="#" >账号注册</a></li>
                                                <li><a href="#" >晓米佳开店</a></li>
                                                <li><a href="#" >天猫入驻</a></li>
                                                <li><a href="#" >一淘入驻</a></li>
                                                <li><a href="#" >中国质造入驻</a></li>
                                                <li><a href="#" >极有家入驻</a></li>
                                                <li><a href="#" >拍卖会入驻</a></li>
                                                <li><a href="#" >供销平台入驻</a></li>
                                                <li><a href="#" >速卖通开店</a></li>
                                                <li><a href="#" >出售闲置</a></li>
                                            </ol>
                                        </div>
                                        <div class="seller-map-cell seller-map-cell-m" data-index="2" data-more="1">
                                            <h2>综合服务</h2>
                                            <ol class="seller-map-item-wrapper">
                                                <li><a href="#" >服务市场</a></li>
                                                <li><a href="#" >需求定制</a></li>
                                                <li><a href="#" >摄影服务</a></li>
                                                <li><a href="#" >装修模板</a></li>
                                                <li><a href="#" >晓米佳贷款</a></li>
                                                <li><a href="#" >提前收款</a></li>
                                                <li><a href="#" >淘工作</a></li>
                                                <li><a href="#" >商家服务社区</a></li>
                                                <li><a href="#" >淘模特</a></li>
                                            </ol>
                                        </div>
                                    </li>
                                    <li class="seller-map-column seller-map-column-last">
                                        <div class="seller-map-cell seller-map-cell-t" data-index="1">
                                            <h2>寻找货源</h2>
                                            <ol class="seller-map-item-wrapper">
                                                <li><a href="#" >1688采购批发</a></li>
                                                <li><a href="#" >供销平台</a></li>
                                                <li><a href="#" >货源保税直邮</a></li>
                                                <li><a href="#" >晓米佳批发</a></li>
                                                <li><a href="#" >小微快采</a></li>
                                                <li><a href="#" >企业采购</a></li>
                                                <li><a href="#" >网货交易会</a></li>
                                            </ol>
                                        </div>
                                        <div class="seller-map-cell seller-map-cell-m" data-index="2">
                                            <h2>卖家资讯</h2>
                                            <ol class="seller-map-item-wrapper">
                                                <li><a href="#" >规则中心</a></li>
                                                <li><a href="#" >安全中心</a></li>
                                                <li><a href="#" >服务中心</a></li>
                                                <li><a href="#" >阿里研究中心</a></li>
                                                
                                                <li><a href="#" >万堂书院</a></li>
                                                <li><a href="#" >电商在线</a></li>
                                                <li><a href="#" >天下网商</a></li>
                                            </ol>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>-->
                </li>
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
        <div id="content">
            <div class="layout grid-s140m0">
                <div class="col-main">
                    <div id="J_Region" class="main-wrap">
                       <div id="ice_page" data-company="false" data-current-page="ApplyShop" data-error-message="" data-special-user-type="false" class="ice_page1"
                       >
                            <div data-reactroot=""><i class="open-icon " style="position: fixed; left: -9999px;"></i>
                                <div class="page-container">
                                    <div class="first-title">
                                        <h1>免费开店</h1>
                                        <p>
                                           申请晓米佳店铺完全免费; 一个身份只能开一家店; 开店后店铺无法注销; 申请到正式开通预计需1~3个工作日。了解更多请看
                                            <a target="_blank" href="#" >开店规则必看</a></p>
                                    </div>
                                    <div class="open-step">
                                        <div class="next-step next-step-arrow next-step-horizontal steps-container">
                                            <div class="next-step-item next-step-item-process next-step-item-first" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">1</div>
                                                            <div class="step-item-title">选择开店类型</div>
                                                            <div class="step-item-desc">个人店铺, 企业店铺</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-step-item next-step-item-wait" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">2</div>
                                                            <div class="step-item-title">阅读开店须知</div>
                                                            <div class="step-item-desc">确认自己符合个人店铺的相关规定</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-step-item next-step-item-wait next-step-item-last" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">3</div>
                                                            <div class="step-item-title">申请开店认证</div>
                                                            <div class="step-item-desc">需提供认证相关资料, 等待审核通过</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="open-page select-type">
                                        <div class="select-type-content">
                                            <div class="open-type-item">
                                                <div class="open-type-item-container">
                                                    <div class="select-icon-wrapper"><i class="open-icon "></i></div>
                                                    <h3 class="select-title">个人店铺</h3>
                                                    <p class="select-desc">通过支付系统个人实名认证的商家创建的店铺, 就是个人店铺。</p>
                                                    <a type="primary" class="next-btn next-btn-primary next-btn-large ice-link" onclick="step2()">
                                                        创建个人店铺
                                                        
                                                    </a>
                                                    <div class="select-tip"></div>
                                                </div>
                                            </div>
                                            <div class="open-type-item">
                                                <div class="open-type-item-container">
                                                    <div class="select-icon-wrapper"><i class="open-icon "></i></div>
                                                    <h3 class="select-title">企业店铺</h3>
                                                    <p class="select-desc">通过支付系统企业认证的商家创建的店铺, 就是企业店铺。</p>
                                                    <a disabled="" type="primary" class="next-btn next-btn-primary next-btn-large ice-link disabled select-type-item-btn">
                                                        敬请期待
                                                        
                                                    </a>
                                                    <div class="select-tip"><span>请使用<a href="#" >企业账户</a>登陆开店</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div> 

                       <div id="ice_page" data-company="false" data-current-page="ApplyShop" data-error-message="" data-special-user-type="false" class="ice_page2" style="display:none;">
                            <div data-reactroot=""><i class="open-icon " style="position: fixed; left: -9999px;"></i>
                                <div class="page-container">
                                    <div class="first-title">
                                        <h1>免费开店</h1>
                                        <p>
                                            <!-- react-text: 160 -->申请晓米佳店铺完全免费; 一个身份只能开一家店; 开店后店铺无法注销; 申请到正式开通预计需1~3个工作日。了解更多请看
                                            <!-- /react-text --><a target="_blank" href="https://service.taobao.com/support/seller/knowledge-5525084.htm">开店规则必看</a></p>
                                    </div>
                                    <div class="open-step">
                                        <div class="next-step next-step-arrow next-step-horizontal steps-container">
                                            <div class="next-step-item next-step-item-finish next-step-item-first" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">1</div>
                                                            <div class="step-item-title">选择开店类型</div>
                                                            <div class="step-item-desc">个人店铺, 企业店铺</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-step-item next-step-item-process" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">2</div>
                                                            <div class="step-item-title">阅读开店须知</div>
                                                            <div class="step-item-desc">确认自己符合个人店铺的相关规定</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="next-step-item next-step-item-wait next-step-item-last" style="width: auto;">
                                                <div class="next-step-item-container">
                                                    <div class="next-step-item-title">
                                                        <div class="step-item-cont">
                                                            <div class="step-item-num">3</div>
                                                            <div class="step-item-title">申请开店认证</div>
                                                            <div class="step-item-desc">需提供认证相关资料, 等待审核通过</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="open-page read-agreement">
                                        <div class="read-agreement-content">
                                            <div class="read-agreement-paper">
                                                <p class="question">1、开晓米佳店要收费吗?</p>
                                                <p class="answer">答：晓米佳开店是免费的，不收取任何服务费用。</p>
                                                <p class="question">2、 我可以开多个晓米佳店吗?</p>
                                                <p class="answer">答：不可以。一张身份证（一张营业执照）只能开一个晓米佳店铺。如是企业店铺，开店后营业执照不得注销。</p>
                                                <p class="question">3、 我已经开过晓米佳店，现在想要注销原来的店铺重新开店，可以吗?</p>
                                                <p class="answer">答：不可以，晓米佳暂时不提供注销店铺的服务。用户一但成功开店就无法再用身份证（营业执照）另开一家晓米佳店铺。</p>
                                                <p class="question">4、我在晓米佳已经开了个店了，我用别人的身份证再开一个店可以吗？</p>
                                                <p class="answer">答：不可以，开店需提供本人的有效信息。晓米佳通过定期或不定期复核方式验证开店认证信息的持续真实有效。如果发现信息不全、无效或者虚假，晓米佳将依据情节严重程度，采取下架商品，限制发布商品，创建创建店铺等临时性市场管控措施。</p>
                                                <p class="question">5、我可以把店铺转租给其他人吗？</p>
                                                <p class="answer">答：不可以，无法规避租用方产生不良的经营行为，且所有经营行为包括处罚都记录在开店本人名下。依据情节严重，晓米佳网将保留追究的权利。</p>
                                            </div>											
                                            <div class="read-agreement-tip"><i class="short-cut-1"></i>
                                            											
                                                <!-- react-text: 190 -->晓米佳网在任何情况下都不会用QQ与您取得联系, 任何使用QQ联系您的"工作人员"都是骗子。
                                                <!-- /react-text -->
                                            </div>
                                            <div class="read-agreement-actions">
                                                <a class="next-btn next-btn-normal next-btn-large ice-link" type="normal" onclick="step1()">
                                                	上一步
                                                </a>
                                                <a type="primary" class="next-btn next-btn-primary next-btn-large ice-link" onclick="step3()">
                                                    	我已了解, 继续开店
                                                 </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                       <div id="ice_page" data-company="false" data-current-page="ApplyShop" data-error-message="" data-special-user-type="false" class="ice_page3"
                     style="display: none;">
                        <div data-reactroot=""><i class="open-icon " style="position: fixed; left: -9999px;"></i>
                            <div class="page-container">
                                <div class="first-title">
                                    <h1>免费开店</h1>
                                    <p>
                                        <!-- react-text: 408 -->申请晓米佳店铺完全免费; 一个身份只能开一家店; 开店后店铺无法注销; 申请到正式开通预计需1~3个工作日。了解更多请看
                                        <!-- /react-text --><a target="_blank" href="https://service.taobao.com/support/seller/knowledge-5525084.htm">开店规则必看</a></p>
                                </div>
                                <div class="open-step">
                                    <div class="next-step next-step-arrow next-step-horizontal steps-container">
                                        <div class="next-step-item next-step-item-finish next-step-item-first" style="width: auto;">
                                            <div class="next-step-item-container">
                                                <div class="next-step-item-title">
                                                    <div class="step-item-cont">
                                                        <div class="step-item-num">1</div>
                                                        <div class="step-item-title">选择开店类型</div>
                                                        <div class="step-item-desc">个人店铺, 企业店铺</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="next-step-item next-step-item-finish" style="width: auto;">
                                            <div class="next-step-item-container">
                                                <div class="next-step-item-title">
                                                    <div class="step-item-cont">
                                                        <div class="step-item-num">2</div>
                                                        <div class="step-item-title">阅读开店须知</div>
                                                        <div class="step-item-desc">确认自己符合个人店铺的相关规定</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="next-step-item next-step-item-process next-step-item-last" style="width: auto;">
                                            <div class="next-step-item-container">
                                                <div class="next-step-item-title">
                                                    <div class="step-item-cont">
                                                        <div class="step-item-num">3</div>
                                                        <div class="step-item-title">申请开店认证</div>
                                                        <div class="step-item-desc">需提供认证相关资料, 等待审核通过</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="open-page apply-open-shop">
                                    <div>
                                         <div class="select-user-type"> 
                                            <!-- <div class="next-form-item" label="用户类型：" required="">
                                                <label required="" class="next-col-2 next-form-item-label">用户类型：</label>
                                                <div class="next-col-20 next-form-item-control">
                                                    <div class="next-radio-group">
                                                        <label class=""><span class="next-radio checked "><span class="next-radio-inner"></span>
                                                            <input type="radio" value="1" aria-checked="true">
                                                            </span><span class="next-radio-label">中国大陆</span></label>
                                                        
                                                        <label class=""><span class="next-radio "><span class="next-radio-inner"></span>
                                                            <input type="radio" value="2" aria-checked="false">
                                                            </span><span class="next-radio-label">香港/澳门用户</span></label>
                                                        
                                                        <label class=""><span class="next-radio "><span class="next-radio-inner"></span>
                                                            <input type="radio" value="3" aria-checked="false">
                                                            </span><span class="next-radio-label">台湾用户</span></label>
                                                        
                                                        <label class=""><span class="next-radio "><span class="next-radio-inner"></span>
                                                            <input type="radio" value="4" aria-checked="false">
                                                            </span><span class="next-radio-label">外籍用户</span></label>
                                                    </div>
                                                   
                                                    
                                                    <div class=""></div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                       
                                        <div class="account-bind-status ">
                                             -->
                                            <div class="tip-container tip-type-success">
                                                <p>
                                                    <!-- react-text: 477 -->您已绑定了支付宝账户：${user.email }
                                                    <!-- /react-text -->
                                                    <!-- react-text: 478 -->&nbsp;
                                                    <!-- /react-text --><a href="https://member1.taobao.com/member/fresh/account_management.htm" target="_blank">查看</a></p>
                                                <p>
                                                    <!-- react-text: 481 -->开店类型必须与支付宝认证类型一致, 否则可能无法创建店铺。
                                                    <!-- /react-text -->
                                                </p>
                                            </div>
                                        </div>
                                        <div class="conditions">
                                            <div class="next-table only-bottom-border zebra">
                                                <div class="next-table-inner">
                                                    <div class="next-table-header">
                                                        <div class="next-table-header-inner">
                                                            <table>
                                                                <colgroup>
                                                                    <col>
                                                                    <col>
                                                                    <col style="width: 300px;">
                                                                    <col>
                                                                </colgroup>
                                                                <tbody>
                                                                    <tr>
                                                                        <th rowspan="1">
                                                                            <div class="next-table-cell-wrapper">
                                                                                <!-- react-text: 497 -->认证名称
                                                                                <!-- /react-text -->
                                                                            </div>
                                                                        </th>
                                                                        <th rowspan="1">
                                                                            <div class="next-table-cell-wrapper">
                                                                                <!-- react-text: 500 -->状态
                                                                                <!-- /react-text -->
                                                                            </div>
                                                                        </th>
                                                                        <th rowspan="1">
                                                                            <div class="next-table-cell-wrapper">
                                                                                <!-- react-text: 503 -->提示
                                                                                <!-- /react-text -->
                                                                            </div>
                                                                        </th>
                                                                        <th rowspan="1">
                                                                            <div class="next-table-cell-wrapper">
                                                                                <!-- react-text: 506 -->操作
                                                                                <!-- /react-text -->
                                                                            </div>
                                                                        </th>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="next-table-body">
                                                        <table>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col style="width: 300px;">
                                                                <col>
                                                            </colgroup>
                                                            <tbody>
                                                                <tr class="next-table-row first">
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <!-- react-text: 518 -->支付宝实名认证
                                                                            <!-- /react-text -->
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                        <c:set var="payAuthentication" value="${user.payAuthentication }"/>
	                                                                        <span 
	                                                                        class=${payAuthentication eq "1" ? "passed" : "notPassed" }>
	                                                                         ${payAuthentication eq "1" ? "通过" : "未通过" }
	                                                                        </span>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <div class="open-shop-condition-tips-container">
                                                                                <div>
                                                                                    &nbsp;
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <a shape="text" href="https://certify.alipay.com/" type="primary" target="_blank" class="next-btn next-btn-text next-btn-primary next-btn-medium">
                                                                                <!-- react-text: 531 -->查看
                                                                                <!-- /react-text -->
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr class="next-table-row last">
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <!-- react-text: 535 -->晓米佳实名认证
                                                                            <!-- /react-text -->
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                        <c:set var="realNameAuthentication" value="${user.realNameAuthentication }"/>
                                                                        <span class=${realNameAuthentication eq "1" ? "passed" : "notPassed" }>
                                                                        	${realNameAuthentication eq "1" ? "通过" : "不通过" }
                                                                        </span>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <div class="open-shop-condition-tips-container">
                                                                                <div>
                                                                                    <!-- react-text: 543 -->
                                                                                    <!-- /react-text -->
                                                                                    <!-- react-text: 544 -->&nbsp;
                                                                                    <!-- /react-text -->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="next-table-cell-wrapper">
                                                                            <a shape="text" href="https://verify.taobao.com/auth/verify_status.htm" type="primary" target="_blank" class="next-btn next-btn-text next-btn-primary next-btn-medium">
                                                                                <!-- react-text: 548 -->查看
                                                                                <!-- /react-text -->
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="actions">
                                            <div class="actions-content">
                                                <a class="next-btn next-btn-normal next-btn-large ice-link"
                                                 type="normal" onclick="step2()">上一步</a>
                                                 
                                                <button type="button" class="next-btn next-btn-primary 
                                                next-btn-large ice-link" onclick="open_pact_window()" 
                                                <c:choose>
													<c:when test="${realNameAuthentication eq 0 }">
														disabled="disabled"
													</c:when>
													<c:when test="${payAuthentication eq 0 }">
														disabled="disabled" 
													</c:when>
                                                </c:choose>
                                                >下一步</button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        </div> 

                    </div>
                </div>
               
            </div>
        </div>
    </div>
    
     <div aria-hidden="false" class="next-dialog right next-overlay-inner animated zoomIn shop-dialog" role="dialog" aria-labelledby="dialog-header-0" style="width: 615px; left: 375.5px; top: 40px; display:none;">
                <div id="dialog-header-0" class="next-dialog-header">阅读开店协议</div>
                <div id="dialog-body-1" class="next-dialog-body" style="max-height: 223px; overflow-y: auto;">
                    <h2 class="assignment-title">请认真阅读以下四大协议条款, 确认无误再点击“同意”正式签署：</h2>
                    <div class="assignment-container">
                        <h3>诚信经营承诺书</h3>
                        <p class="assignment-item">为共同构建诚信、透明的网络消费环境，共同维护公平、规范的网络经营秩序，共同促进电子商务生态系统的健康持续发展，本店（本人）特向广大网民及晓米佳网承诺如下： 一、 不参与、不加入、不组建任何交易信用炒作组织（该交易信用包括商品销量、评价、DSR评分等）； 二、 不进行 任何交易信用炒作行为，保证每一笔交易内容、交易信用均为真实、可信，绝无虚构、炒作行为。 三、 不发布、不传播、不推广任何有关交易信用炒作的违规信息，并积极举报此类违规信息； 四、 积极接受广大网民及晓米佳网的监督，严格遵守、积极维护晓米佳网交易信用体系的各项规则； 五、 若本店违反晓米佳网交易信用体系的各项规则，本店愿意接受晓米佳网的相应处理措施，并承担因此引发的相关责任。 本店郑重承诺：本店将始终恪守上述承诺，不进行任何形式的交易信用炒作行为，严格遵守国家法律法规及晓米佳网的相关规定，诚信、公平、规范地开展经营活动。 新的虚假交易规则请查看这里：
                            <a href="https://rule.taobao.com/detail-14.htm" target="_blank">//rule.taobao.com/detail-14.htm?spm=0.0.0.0.5PoVda&amp;tag=self#237</a></p>
                    </div>
                    <div class="assignment-container">
                        <h3>消费者保障服务协议</h3>
                        <div class="assignment-item">
                            <div>
                                <p class="p1"><span class="s1">本协议由您与浙江晓米佳网络有限公司共同缔结，本协议具有合同效力。</span></p>
                                <p class="p2"><span class="s1">本协议中协议双方合称协议方，浙江晓米佳网络有限公司在本协议中亦称为“晓米佳”。</span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>一、协议内容及生效</b></span></p>
                                <p class="p3"><span class="s1">1、本协议内容包括协议正文及所有晓米佳已经发布或后续发布并采取合理途径提前七个自然日通知您的与“消费者保障服务”相关的规则。前述规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。</span></p>
                                <p class="p2"><span class="s1">2、您应当在实际向其他晓米佳网会员（以下简称“买家”）提供消费者保障服务之前认真阅读全部协议内容，对于协议中以</span><span class="s3"><b>粗体下划线</b></span><span class="s1">标注的内容，您应重点阅读。如您对本协议有任何疑问，应向晓米佳咨询。但无论您事实上是否在向买家提供消费者保障服务之前认真阅读了本协议内容，只要您在线点击签署了本协议，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得晓米佳对您问询的解答等理由，主张本协议无效，或要求撤销本协议。</span></p>
                                <p class="p2"><span class="s1">3、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即结束开店流程或停止店铺经营活动。</span></p>
                                <p class="p3"><span class="s1">4、</span><span class="s3"><b>晓米佳可根据需要不时地制订、修改本协议及/或与“消费者保障服务”相关的规则，以网站公示的方式进行公告并通知您。变更后的协议和规则在晓米佳网站公布之日起七个自然日后，即自动生效。如您不同意相关变更，应当立即停止店铺经营活动。您继续进行任何店铺经营活动，包括但不限于维持所发布的商品信息，或继续发布商品信息，使用消费者保障服务标识，即表示您接受经修订的协议。</b></span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>二、定义</b></span></p>
                                <p class="p4"><span class="s1">1、&nbsp;基础消费者保障服务：指您根据本协议约定的条款和条件及晓米佳网其他公示规则的规定，通过晓米佳网发布全新、二手商品信息并利用支付宝服务向买家出售全新、二手商品时，应履行商品如实描述义务，在国家法律法规规定的期限内保障买家在商品完好前提（请<a href="https://service.taobao.com/support/seller/knowledge-5704097.htm"><span class="s4">点击查看</span></a>晓米佳网关于商品完好的认定）下的无理由退货权益，和在法定或晓米佳指定期间内保障买家在商品与网上描述不符、商品存在质量问题、未履行售后服务情形下的权益。</span>
                                </p>
                                <p class="p4"><span class="s1">2、特色交易约定服务：指您在承诺消费者保障服务的基础上，除履行法律规定义务外，根据您的店铺主营类目情况自愿选择向买家提供的特定服务项目，包括但不限于“发货时间承诺服务”、“品质承诺服务”、“破损补寄承诺服务”、“退货承诺服务”等。晓米佳将在晓米佳网不时公示新增的或对原服务项目内容进行修订的合约工具。特色交易约定服务与基础消费者保障服务合称为“消费者保障服务”。</span></p>
                                <p class="p4"><span class="s1">3、保证金：指您根据本协议约定的条款和条件及晓米佳网其他公示规则的规定缴存并止付锁定于您的支付宝账户，在您未履行消费者保障服务承诺时用于对买家进行赔付的资金。</span></p>
                                <p class="p4"><span class="s1">4、违约赔付：指您与买家通过支付宝服务进行交易后，如因您未履行消费者保障服务承诺而导致买家权益受损，且在买家直接要求您处理未果的情况下，</span><span class="s3"><b>晓米佳可以普通或非专业人员的知识水平标准，根据相关证据材料和规则判定您是否应履行赔付义务。如是，则晓米佳可通知支付宝公司自您的支付宝账户扣除相应金额保证金款项，或者使用您支付宝账户中的余额赔付给买家。</b></span></p>
                                <p class="p4"><span class="s1">5、消费者保障服务保证保险：指用于保障您按照本协议如约履行消费者保障服务承诺的一种<a href="https://service.taobao.com/support/seller/knowledge-5677572.htm" target="_blank"><span class="s4">保证保险</span></a>，在保险期间内，若您作为投保人违反本协议相关承诺，买家（被保险人）在卖家投保协议约定的有效保险期间内发起维权申请的，由保险公司在保险合同约定的赔偿限额内负责赔偿，并获得对您的追偿权。</span>
                                </p>
                                <p class="p5"><span class="s1">6、履约担保金：指根据本协议约定的条款和条件及晓米佳网其他公示规则的规定，买家发起维权情形下，止付锁定于您的支付宝账户中的相应金额，用于保障维权成立时您对买家进行赔付的履约担保资金。</span></p>
                                <p class="p4"><span class="s1">7、支付宝服务：指由支付宝（中国）网络技术有限公司（以下简称“支付宝公司”）向您提供的“支付宝”软件服务系统及附随为您提供的代收代付货款的中介服务。支付宝服务具体内容，详见您与支付宝公司之间签署生效的《支付宝服务协议》之约定。</span></p>
                                <p class="p4"><span class="s1">8、支付宝账户：指您使用支付宝服务时由支付宝公司为您提供的一个唯一的编号，由您自行设置密码，以此查询或计量您的预付或应收应付款。</span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>三、消费者保障服务内容</b></span></p>
                                <p class="p2"><span class="s1">在您向买家提供消费者保障服务过程中，您承诺遵守以下约定：</span></p>
                                <p class="p3"><span class="s1">1、您同意遵守本协议、《晓米佳服务协议》、《支付宝服务协议》以及所有公示于晓米佳网与“消费者保障服务”相关的规则。</span></p>
                                <p class="p3"><span class="s1">2、您同意接受“支付宝服务”或其他由支付宝公司提供的支付方式作为您通过晓米佳网达成交易的支付工具。</span></p>
                                <p class="p3"><span class="s1">3、您拥有的合法的权利和资格向晓米佳网上传有关商品销售信息，且前述行为未对任何第三方合法权益，包括但不限于第三方知识产权、财产权等构成侵害。如因您的行为导致晓米佳或其关联公司遭受任何第三方提起的索赔、诉讼或行政责任，您应承担相应责任并使晓米佳免责。</span></p>
                                <p class="p3"><span class="s1">4、</span><span class="s3"><b>您应在商品描述页面、店铺页面、阿里旺旺等所有晓米佳网提供的渠道中，对上传于晓米佳网的商品信息进行如实描述，包括但不限于对商品的基本属性、成色、瑕疵等必须说明的信息进行真实、准确、完整的描述，并对描述的商品信息负有举证责任。</b></span><span class="s1">您应保证您出售的商品在合理期限内可正常使用，不存在危及人身财产安全的不合理危险，具备商品应当具备的使用性能，符合商品或其包装上注明采用的标准等。</span></p>
                                <p class="p3"><span class="s1">5、如您在男装、女装/女士精品类目下发布商品，以及发布二手属性商品时，您应当使用实物拍摄图片，即您针对该件商品本身实际拍摄的图片，不包括杂志图片、官方网站图片及宣传图片。如您违反本条款之约定，则视为您违反了商品如实描述义务。</span></p>
                                <p class="p3"><span class="s1">6、除特定商品品类（请<a href="https://bbs.taobao.com/catalog/thread/16029511-265984735.htm?spm=0.0.0.0.vLirzd" target="_blank"><span class="s4">点击查看</span></a>晓米佳网关于特定商品品类的规定）外，您同意一旦买家在收到商品后七（7）天内向您提出无理由退货申请，您应积极配合，与买家主动协商，自愿友好达成退货退款协议，并在收到买家退货的商品之日起七（7）天内向买家返还其支付的商品价款。前述收到商品的日期以物流签收单或物流公司系统记录确定的日期为准。包邮商品发生无理由退货时，买卖双方各自承担发货运费。</span>
                                </p>
                                <p class="p3"><span class="s1">7、在您根据您的店铺主营类目情况自愿选择向买家提供特色交易约定服务时，您应严格依照您所承诺的服务内容向买家履行义务，晓米佳将为您提供统一的特色交易约定服务后台选择工具，并在晓米佳网前台公示各类交易约定服务的相关规则。</span></p>
                                <p class="p4"><span class="s1">8、</span><span class="s3"><b>您明确了解并同意您是消费者保障服务的责任主体，晓米佳及其关联公司仅向您提供相关技术支持及服务，除法律有明文规定外，不对您向买家提供的消费者保障服务内容承担任何保证责任。</b></span><span class="s1">当发生买家主张无理由退货、商品与网上描述不符、商品存在质量问题、您违反特色交易约定服务承诺等情形时，您应积极与买家沟通协商并保证买家的权益。对于买家因前述问题提出的退换货要求，您应积极处理。</span></p>
                                <p class="p4"><span class="s1">9、您同意当晓米佳受理买家提出的消费者保障服务维权和赔付申请时，您应积极配合，在晓米佳要求的时间期限内提供相关证据材料，以证明与买家交易的商品不存在买家提出的问题或符合双方的约定，并保证所提交的证据材料真实、合法。</span><span class="s3"><b>如晓米佳以普通或非专业人员的知识水平标准，对您和/或买家提供的证据材料进行表面审核后，以其独立判断您未全面履行消费者保障服务内容的，则晓米佳可根据本协议及其它公示规则的规定，用您在本协议项下缴纳的保证金对因此遭受权益损失的买家进行违约赔付。</b></span></p>
                                <p class="p3"><span class="s1">10、您同意当晓米佳用您在本协议项下缴纳的保证金进行违约赔付时，或晓米佳使用自有资金代您向买家进行赔付时，即视为您违规，晓米佳可给予您相应惩罚。</span></p>
                                <p class="p3"><span class="s3"><b>11、您同意接受晓米佳出于保护消费者利益目的而对您在售产品进行的品质和品牌（版权）抽检。品质抽检的检测报告由国家认可的第三方检验机构出具，品牌（版权）抽检的鉴定报告由品牌方（著作权人）或其授权的法人、个人及其他组织出具。晓米佳将不时地修订品质抽检规则和品牌（版权）抽检鉴定规则，并在前台进行公示。您依据该规则享有有条件的请求复检的权利。对于经抽检或复检证明存在瑕疵（含质量问题、描述不符、假冒伪劣等情形）的商品，所有费用（包括但不限于产品购买费用、物流费用、检测/鉴定费用等）由您承担，晓米佳可将检测报告或鉴定报告交由国家有关机关做进一步处理。</b></span></p>
                                <p class="p6"><span class="s3"><b>晓米佳可依照晓米佳规则对出售前述瑕疵商品的卖家进行相应的处理。</b></span></p>
                                <p class="p3"><span class="s3"><b>为了保障消费者权益，若根据抽检结果或复检结果确定商品涉及晓米佳规则中的严重违规情形，您将自被处理之日起进入180天重点监督期；在重点监督期内，晓米佳网有权对您在售产品再进行1-3次抽检。晓米佳网有权根据重点监督期内的抽检结果情况对重点监督期的时长进行缩短或延长。</b></span></p>
                                <p class="p2"><span class="s1">12、您同意根据晓米佳网页面提示或买家要求，准确提供并及时更新您的退货地址及退货收件人姓名、联系方式等退货信息，使之真实、及时、完整和准确。如因您提供的退货地址、退货收件人等退货信息错误、不实、过时或不完整，而导致退货之商品发生毁损或灭失风险，则该风险及因此产生的直接或间接支出应由您自行承担。</span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>四、保证金</b></span></p>
                                <p class="p2"><span class="s1">您应根据以下条款之约定缴存，并授权晓米佳及其关联公司可根据以下条款及晓米佳网其他公示规则的规定止付锁定、使用、处置保证金，除您主动注销账户并终止在晓米佳所有经营活动情况外，上述授权不可撤销。</span></p>
                                <p class="p2"><span class="s1">1、保证金的缴存</span></p>
                                <p class="p2"><span class="s1">1.1如您为晓米佳规定必须缴纳保证金的商品类目卖家，则您必须缴纳的保证金金额应不少于晓米佳网公布的“类目消费者保障服务保证金标准”要求的金额，否则您将不能在对应类目下发布全新/二手商品。“类目消费者保障服务保证金标准”由晓米佳根据各类目特点制定，并以晓米佳网公布的最新内容为准（请<a href="https://service.taobao.com/support/knowledge-1133649.htm"><span class="s4">点击查看</span></a>具体类目和保证金额度要求，晓米佳可以调整该等类目商品范围并进行公示）。</span>
                                </p>
                                <p class="p2"><span class="s1">1.2除晓米佳规定必须缴纳保证金的商品类目卖家外，您可在开店流程中，或在“我的晓米佳”等相关页面自由选择主动缴纳或不缴纳保证金。如您选择主动缴纳保证金，则您首次缴纳的保证金金额应不少于1000元。</span></p>
                                <p class="p2"><span class="s1">1.3不论前述何种情形，只要您事实上缴纳了保证金且保证金余额大于0，您店铺的相关页面将出现“已交保证金”或类似文案之标识。</span></p>
                                <p class="p2"><span class="s1">1.4</span><span class="s3"><b>尽管有上述约定，本协议有效期内，晓米佳可根据您业务变化及实际赔付情况以书面方式通知您调整保证金金额。</b></span></p>
                                <p class="p2"><span class="s1">1.5您应使保证金余额始终保持不低于本条款约定之金额，如发生赔付事件导致您需补缴保证金的，则晓米佳可指示支付宝公司继续止付锁定您支付宝账户中的余额以补足保证金，如您的支付宝账户余款不足，则您应在赔付事件发生之日起三（3）日内补足。如您未能在上述期间补足相应的保证金，则您店铺相关页面的“已交保证金”或类似文案之标识将被取消，且晓米佳可对您发布的商品采取搜索降权、下架等限制措施，对您的店铺采取屏蔽等限制措施。</span></p>
                                <p class="p2"><span class="s1">1.6</span><span class="s3"><b>如您已经因发布全新商品成为消保卖家，并且已经缴纳全新商品保证金，当您发布二手商品时，您需要补签本协议，并且补全需缴纳的保证金差额（如有）。否则您将无法发布、编辑、管理您的二手属性商品，晓米佳可暂停或终止向您提供全部或部分晓米佳网服务。</b></span></p>
                                <p class="p2"><span class="s1">2、保证金缴纳的保险替代</span></p>
                                <p class="p2"><span class="s1">如您为晓米佳规定必须缴纳保证金的商品类目卖家,或您选择主动缴纳保证金，且您及您的店铺满足“消费者保障服务保证保险”投保条件前提下，您可以通过投保“消费者保障服务保证保险”的方式，全部或部分减少您保证金缴纳义务。若您投保了消费者保障服务保证保险，您在本协议项下的保证金缴纳义务金额可相应扣减与保险赔偿额度等值的金额。</span></p>
                                <p class="p2"><span class="s1">如无特别说明本协议项下的保证金系指现金缴纳保证金，因卖家投保消费者保障服务保证保险而抵扣的保证金缴纳义务金额简称为“保险保证金”。</span></p>
                                <p class="p2"><span class="s1">3、保证金的止付锁定</span></p>
                                <p class="p7"><span class="s1">您授权支付宝公司根据晓米佳之指令，将您根据本协议之约定缴存的保证金款项止付锁定于您的支付宝账户中，除您主动注销账户并终止在晓米佳所有活动情况外，上述授权不可撤销。</span></p>
                                <p class="p2"><span class="s1">4、保证金的止付解除</span></p>
                                <p class="p2"><span class="s1">4.1 若您为晓米佳规定必须缴纳保证金的商品类目卖家，您申请解除全部或部分保证金的止付措施，进而导致您的保证金额度（现金缴纳保证金和保险保证金之和）低于类目要求的最低金额的，您须同时满足以下条件：</span></p>
                                <p class="p2"><span class="s1">（1）没有未完结的基础服务转移单；
																（2）没有正在处理的违约赔付投诉记录；
																（3）没有正在处理的未完结的赔付记录；
																（4）晓米佳赔付基金无催缴单；
																（5）没有未结束的消保交易记录；
																（6）没有交易成功并且在15天以内的消保交易记录；
																（7）没有交易成功并且在45天以内的30天维修服务记录；
																	（8）没有未完结的退款记录</span><span class="s5">。</span></p>
                                <p class="p2"><span class="s1">4.2 若您缴纳的保证金金额超过相应商品类目最低保证金额度，就超出部分保证金申请解除止付的，不受上述止付解除申请条件限制。</span></p>
                                <p class="p2"><span class="s1">4.3 虽然您未主动申请解除保证金的止付措施，如您的店铺被处以查封账户处理的，且当时您没有未完结的退款交易，包括但不限于交易产生的纠纷均已处理完毕，晓米佳将直接解除您剩余保证金余额的止付措施，并可直接终止向您提供全部或部分晓米佳网服务。</span></p>
                                <p class="p2"><span class="s1">4.4如您已成功申请解除保证金的止付措施，止付解除后您的保证金余额为0，则您店铺相关页面的“已交保证金”或类似文案之标识将被取消，晓米佳可暂停或终止向您提供全部或部分晓米佳网服务。</span></p>
                                <p class="p2"><span class="s1">5、保证金的管理与使用</span></p>
                                <p class="p2"><span class="s1">5.1 您同意，晓米佳可在以下情况发生时，向支付宝公司就保证金的管理和使用发出指令，处置您的保证金：</span></p>
                                <p class="p2"><span class="s1">5.1.1 </span><span class="s3"><b>如您在晓米佳网发布商品、利用支付宝服务达成交易、履行交易相关义务过程中，违反国家法律、法规、政策、晓米佳网已公示并生效的规则或支付宝公司的规定，或违反您对买家的承诺，或被买家申请维权、索赔时，晓米佳可根据其独立的判断，先行使用保证金对买家进行违约赔付。</b></span><span class="s1">
5.1.2</span><span class="s3"><b>如您违反本协议和/或晓米佳网任何规则和/或您与晓米佳签署的其他协议，给晓米佳或其关联公司造成任何损失（包括但不限于诉讼赔偿、诉讼费用、律师费用等）的，或您在售商品经晓米佳质量抽检，由第三方检验机构检测证明存在质量瑕疵的，晓米佳可根据其独立的判断，先行从保证金中扣除相当于晓米佳或其关联公司损失（含应退回的货款等）的金额和相当于检测费用的金额，以补偿晓米佳或其关联公司所遭受的损失。</b></span></p>
                                <p class="p6"><span class="s1">5.1.3</span><span class="s6"></span><span class="s1">其他晓米佳可处置您的保证金的情形。</span></p>
                                <p class="p2"><span class="s3"><b>同时，在上述5.1.1和5.1.2项约定场景下，晓米佳均可要求支付宝公司关闭卖家支付宝账户的全部或部分功能。</b></span></p>
                                <p class="p2"><span class="s1">5.2 晓米佳如使用保证金进行任何赔付，将以书面方式（包括但不限于电子邮件、传真等）通知您。在向您出具的书面通知中，将说明赔付原因及赔付金额。</span></p>
                                <p class="p2"><span class="s1">5.3 </span><span class="s3"><b>如您的保证金或支付宝余额不足以赔付时，您应自行支付额外的赔付金额。在您保证金或支付宝余额不足时，除法律有明文规定外，晓米佳没有使用自有资金向买家或者任何第三方支付赔偿金、补偿金或其它任何款项的义务，您仍应对买家或者其他权利人承担赔付、补偿义务。您明确同意如您的保证金或支付宝余额不足以赔付，且您未自行向买家支付额外的赔付金额时，您委托晓米佳（但晓米佳无义务）使用自有资金代您向买家进行赔付。</b></span><span class="s1">不论是在本协议项下，或是您与晓米佳另行签署的其他关于消费者保障服务的协议项下，晓米佳基于您的委托而代为赔付的合计总金额以3000元人民币为上限。此等情形下，晓米佳可向您追偿赔付金，包括采用以下方式：</span></p>
                                <p class="p2"><span class="s1">5.3.1 要求您在晓米佳赔付后十四（14）日内向晓米佳偿还与赔付金数额相同的资金，以补偿晓米佳所遭受的损失，并向买家赔付您实际需赔付金额中的剩余部分（如有），且在指定时间内补足保证金。</span></p>
                                <p class="p2"><span class="s1">5.3.2 要求支付宝公司将您支付宝账户下的款项直接支付给晓米佳，以补偿晓米佳所遭受的损失；如晓米佳的损失通过上述二种方式仍无法弥补，则晓米佳可单方面终止向您提供晓米佳网服务，而且继续要求您承担赔偿责任。</span></p>
                                <p class="p6"><span class="s1">5.3.3 晓米佳可采取的其他追偿方式。</span></p>
                                <p class="p2"><span class="s1">5.4 您对买家、任何第三方以及晓米佳的赔付责任不以您已缴纳的保证金数额为限。除法律有明文规定外，晓米佳不对买家或者任何第三方承担任何赔付、赔偿义务，但可根据本协议的规定将您的保证金用于保障对买家或其他权利人的利益。</span></p>
                                <p class="p2"><span class="s1"><b>五、履约担保金</b></span></p>
                                <p class="p2"><span class="s1">1、履约担保金的止付锁定</span></p>
                                <p class="p2"><span class="s1">1.1 当买家向您发起维权申请时，您授权支付宝公司根据晓米佳之指令，止付锁定您支付宝账户余额中相应金额款项作为您的履约担保金，相应金额系指：</span></p>
                                <p class="p2"><span class="s1">（1）交易进行中环节，相应金额等于买家申请维权金额与货款金额差额；</span></p>
                                <p class="p2"><span class="s1">（2）交易完成后环节，相应金额与维权金额等值。</span></p>
                                <p class="p2"><span class="s1">1.2 如您的支付宝账户余额不足，您同意，晓米佳系统自动从您保证金中扣减相应金额作为您的履约担保金。若扣减后您的保证金无法满足您店铺所在类目的最低保证金金额要求的，或</span><span class="s3">买家维权成立，但您的保证金或</span><span class="s1">支付宝余额</span><span class="s3">均不足赔付退款金额的，</span><span class="s1">适用本协议第四条4.4款的相关约定。</span></p>
                                <p class="p2"><span class="s1">2、履约担保金的使用与止付解除</span></p>
                                <p class="p2"><span class="s1">2.1 您同意，当买家完成退货操作时，您授权支付宝公司根据晓米佳之指令，直接使用履约担保金对买家进行违约赔付。</span></p>
                                <p class="p2"><span class="s1">2.2 晓米佳如使用履约担保金进行赔付，将以书面方式（包括但不限于电子邮件、传真等）通知您。在向您出具的书面通知中，将说明赔付原因及赔付金额。</span></p>
                                <p class="p2"><span class="s1">2.3 如在维权过程中任一环节买家因未及时操作导致系统超时自动完结此项维权申请，或在晓米佳人工介入并判定维权申请不成立时，您账户中被止付锁定的相应金额的履约担保金将自行解除止付。</span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>六、有限责任</b></span></p>
                                <p class="p2"><span class="s3"><b>1、您了解并同意，晓米佳及其关联公司并非司法机构，仅能以普通或非专业人员的知识水平标准对您提交的证据材料进行鉴别，晓米佳及其关联公司对交易纠纷的调处完全是基于您的委托，晓米佳及其关联公司无法保证交易纠纷处理结果符合您的期望，也不对交易纠纷调处结果及保证金、履约担保金赔付决定承担任何责任。您应保证您提交的证据材料的真实性、合法性，并承担您或买家提供的信息、数据不实的风险和责任。如您因此遭受损失，您同意自行向受益人索赔。</b></span></p>
                                <p class="p2"><span class="s3"><b>2、您了解并同意，除法律有明文规定外，晓米佳及其关联公司对与本协议相关的以及由于本协议的签订、履行导致的所有的、全部的责任，不管是否与违约、侵权相关，也不管由于故意还是过失，也不管您是否向晓米佳支付过任何费用，在任何情况下，都不应超过3000元人民币，这并不影响晓米佳根据本协议、晓米佳与您签署的其它协议、晓米佳规则享有的免责、责任限制的权利。</b></span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>七、委托支付</b></span></p>
                                <p class="p2"><span class="s3"><b>1、本协议一旦生效，即表示您已充分理解并同意向支付宝公司作出授权，您授权支付宝公司根据晓米佳发出的指令对您支付宝账户中的保证金、履约担保金、余额进行相应操作（含向您开通了支付宝卡通功能的银行账户所属银行转发并协助完成该支付指令的操作），此授权在本协议有效期间以及本协议明确约定的期间均具有法律约束力。</b></span></p>
                                <p class="p2"><span class="s3"><b>2、根据本协议的约定，晓米佳可向支付宝公司发出如下类型的指令：</b></span></p>
                                <p class="p2"><span class="s3"><b>2.1保证金、履约担保金的止付锁定和解除；</b></span></p>
                                <p class="p2"><span class="s3"><b>2.2划扣保证金、履约担保金用于执行违约赔付或划扣保证金用于赔偿晓米佳及其关联公司的损失、质检费用；</b></span></p>
                                <p class="p2"><span class="s3"><b>2.3在保证金不足时，划扣支付宝账户余额补充保证金；</b></span></p>
                                <p class="p2"><span class="s3"><b>2.4在您尚未缴纳保证金的情况下，划扣支付宝账户余额用于执行违约赔付或赔偿晓米佳及其关联公司的损失、质检费用；</b></span></p>
                                <p class="p2"><span class="s3"><b>2.5如晓米佳根据你的委托代您向买家进行了赔付，或者因您的原因导致晓米佳及其关联公司发生损失或质检费用的，或发生风险事件晓米佳必须采取紧急措施避免损失扩大的，支付宝可在您的支付宝账户有效期间（即可能超越本协议有效期）根据晓米佳的指令从您支付宝账户中的划扣/止付锁定同等金额的款项和/或关闭支付宝账户的全部或部分功能。</b></span></p>
                                <p class="p2"><span class="s3"><b>3、您同意支付宝公司依照您的授权进行操作的一切风险由您和您指定的支付宝用户承担。作为支付宝公司为您的支付宝账户提供的一项增值服务，除非支付宝公司未按照您的授权执行操作或执行指令错误，支付宝公司将不对任何因授权行为之履行承担任何法律责任，您也不得在诉讼、仲裁或其他任何形式的争议解决中向支付宝公司主张权利，该等争议应由您与晓米佳自行协商或通过司法途径解决。</b></span></p>
                                <p class="p2"><span class="s1"><b></b></span></p>
                                <p class="p2"><span class="s1"><b>八、协议终止</b></span></p>
                                <p class="p2"><span class="s1">1、出现以下情况时，本协议终止。本协议终止后，您将无法继续进行任何店铺经营活动：</span></p>
                                <p class="p2"><span class="s1">1.1 自然终止：如您在线签署的《晓米佳服务协议》、《支付宝服务协议》因任何原因终止，则本协议将同时终止。</span></p>
                                <p class="p2"><span class="s3"><b>1.2 通知解除：晓米佳可提前十五（15）天以书面通知的方式终止本协议。</b></span></p>
                                <p class="p2"><span class="s3"><b>1.3 晓米佳单方解除权：如您违反本协议中的任何承诺与保证或晓米佳网的任何规则，晓米佳可立即终止本协议，且按有关规则对您进行惩罚。</b></span></p>
                                <p class="p2"><span class="s1">1.4 本协议（含规则）变更时，您明示并通知晓米佳不愿接受新的消费者保障服务协议，则本协议自晓米佳收到您通知之日起自动终止。</span></p>
                                <p class="p2"><span class="s1">1.5 本协议规定的其他协议终止条件发生或实现，导致本协议终止。</span></p>
                                <p class="p2"><span class="s1">2、无论本协议因何原因终止，在协议终止前的行为所导致的任何赔偿和责任，您必须完全且独立地承担责任。即使本协议终止，晓米佳及其关联公司仍可根据本协议的规定处理，包括但不限于使用您支付宝账户中的保证金、余额来处理因本协议有效期内发生的交易所导致的买家索赔。</span></p>
                                <p class="p2"><span class="s1">3、本协议第四条、第五条及第八条的效力不因本协议的终止而终止。</span></p>
                                <p class="p2"><span class="s1">
<b>九、争议解决</b></span></p>
                                <p class="p8"><span class="s3"><b>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国大陆地区法律予以处理，并以晓米佳所在地人民法院为第一审管辖法院。</b></span></p>
                                <p class="p2"><span class="s1"></span></p>
                                <p class="p2"><span class="s1"><b>十、其他</b></span></p>
                                <p class="p2"><span class="s1">1、如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。</span></p>
                                <p class="p2"><span class="s1">2、晓米佳于您过失或违约时放弃本协议约定的权利的，不得视为晓米佳对您的其他或以后同类之过失或违约行为弃权。</span></p>
                                <p class="p2"><span class="s1">3、</span><span class="s3"><b>晓米佳基于本协议享有的权利以及获得的授权，均可以全部或部分转移、转让、许可、分授权、转授权给任何第三方。</b></span></p>
                            </div>
                        </div>
                    </div>
                    <div class="assignment-container">
                        <h3>支付服务协议</h3>
                        <div class="assignment-item">
                            <p>&nbsp;支付服务协议(以下简称“本协议”)是支付宝（中国）网络技术有限公司（以下简称“支付宝”）、晓米佳平台经营者、集分宝南京企业管理有限公司（以下简称为“集分宝企业”）、集分宝南京商务服务有限公司（以下简称为“集分宝商务”）与用户（以下简称“您”）就支付服务、集分宝服务（以下单独或合并称为“本服务”）的使用事项所订立的有效合约。您通过网络页面点击确认或以其他方式选择接受本协议，即表示您与支付宝、晓米佳平台经营者、集分宝企业、集分宝商务已达成协议并同意接受本协议的全部约定内容。</p>
                            <p><strong><u>在接受本协议之前，请您仔细阅读本协议的全部内容（特别是以粗体下划线标注的内容）。如果您不同意本协议的任意内容，或者无法准确理解本协议任何条款的含义，请不要进行确认及后续操作。</u></strong>如果您对本协议的条款有疑问的，请通过各自服务提供者的客服渠道进行询问，其将向您解释条款内容。</p>
                            <p><strong><u>您同意，支付宝、晓米佳平台经营者、集分宝企业、集分宝商务有权随时对本协议内容进行单方面的变更，并以在支付宝网站(</u></strong><a href="http://www.alipay.com/">www.alipay.com</a><strong><u>)</u></strong><strong><u>或者晓米佳平台经营者网站（包括但不限于</u></strong><a href="http://taobao.com/">taobao.com</a><strong><u>或</u></strong><u>tmall.com</u><u>或alitrip.com或etao.com或ju.taobao.com<strong>）上公告的方式提前予以公布，无需另行单独通知您；若您在本协议内容公告变更生效后继续使用本服务的，表示您已充分阅读、理解并接受变更修改后的协议内容，也将遵循变更修改后的协议内容使用本服务；若您不同意变更修改后的协议内容，您应在变更生效前停止使用本服务。</strong></u></p>
                            <p>&nbsp;</p>
                            <p><strong>一、定义</strong></p>
                            <p>1、支付服务（又称“基础支付服务”）：指支付宝向您及您的客户所提供的“支付宝”软件系统及其附随提供的款项代收代付服务（不包括信用卡支付服务及/或花呗），包括但不限于余额支付、余额宝支付、借记卡快捷支付（含卡通），具体以服务提供者届时提供的服务为准。</p>
                            <p>2、借记卡快捷支付（含卡通）：指持卡人（下文或称“买家”）向支付宝系统提交银行借记卡信息并付款，由支付宝完成代收代付的服务。</p>
                            <p>3、信用卡大额网银支付：指买家通过支付宝的服务跳转对应银行的网上银行进行付款操作，由支付宝完成代收代付的服务。</p>
                            <p>4、国际支付：指买家通过支付资金流和/或信息流经中国大陆境外机构处理的支付工具向您付款，由支付宝完成代收代付的服务。</p>
                            <p>5、花呗支付：指买家在线使用花呗服务进行付款，由支付宝完成代收代付的服务。</p>
                            <p>6、交易流量（交易款项）：指由支付宝/晓米佳平台经营者软件系统所统计的您通过其选定服务类型使用支付服务所完成交易的金额（包括但不限于货款、运费等）。交易流量将作为支付宝向您收费的依据。</p>
                            <p>7、服务费用：指您因使用本服务而须向支付宝支付的软件服务费。该服务费用依据交易流量（交易款项）及本协议中支付宝向您明示的费率确定。</p>
                            <p>8、非授权交易：指买家未经过银行卡（含借记卡、信用卡等）持卡人或支付宝账户持有人授权，使用该银行卡或支付宝账户与您通过本服务完成的交易。</p>
                            <p>9、“套现”交易：指您与买家通过虚构交易、虚开价格、现金退货等方式向买家直接支付现金。“套现”交易包括但不限于通过信用卡套现、通过花呗支付套现。</p>
                            <p>10、集分宝服务：本协议项下是指集分宝企业及集分宝商务向根据本协议约定及集分宝相关规则提供的集分宝产品及服务。</p>
                            <p>11、晓米佳平台经营者：指法律认可的经营该平台网站的责任主体，有关晓米佳平台经营者的信息请查看各家晓米佳平台首页底部公布的公司信息和证照信息。“晓米佳平台”指由晓米佳运营的网络平台，包括但不限于晓米佳网，域名为 taobao.com；天猫，域名为tmall.com；阿里旅行网，域名为alitrip.com；一淘网，域名为etao.com；聚划算，域名为ju.taobao.com；95095医药平台，域名为95095.com。前述主体可单称或统称为晓米佳平台经营者。</p>
                            <p>12、服务提供者：向您提供本服务的提供者。该等提供者可单独或合并称为“服务提供者”。</p>
                            <p>13、拒付：指持卡人直接向其借记卡或信用卡公司或其借记卡或信用卡的发卡银行提出的撤销付款请求。</p>
                            <p><strong>二、支付服务</strong></p>
                            <p>就支付服务涉及的权利义务由您与支付宝做如下特别约定：</p>
                            <p>1、您知晓并同意，您接受本协议即代表您向支付宝申请使用支付服务。支付宝有权根据风险防范等需要拒绝您的申请。支付宝未向您开通支付服务即代表拒绝了您的申请。在此情形下，您与支付宝未就支付服务成立合同。</p>
                            <p>&nbsp;&nbsp;&nbsp; 2、您同意在使用支付服务时，将依照《支付宝服务协议》及支付宝、晓米佳平台网站上不时公布的规则履行义务并享有权利。就支付服务使用的专项约定优先适用本协议约定，本协议与《支付宝服务协议》约定不一致的，以本协议为准；本协议未约定事宜，均以支付宝网站所不时公布的《支付宝服务协议》及相关附属规则为补充。</p>
                            <p>3、您在使用支付服务时暂无须支付任何费用。</p>
                            <p><strong>三、集分宝服务</strong></p>
                            <p><strong><u>就集分宝服务涉及的权利和义务由您与集分宝企业及集分宝商务做如下特别约定：</u></strong></p>
                            <p><strong><u>1</u></strong><strong><u>、您知晓并同意，您接受本协议即代表您向集分宝企业及集分宝商务申请使用集分宝服务。集分宝企业及集分宝商务有权根据风险防范等需求拒绝您的申请。如集分宝企业及集分宝商务未向您开通集分宝服务即代表拒绝了您的申请。在此情形下，您与集分宝企业及集分宝商务未就集分宝服务成立合同。</u></strong></p>
                            <p>2、您同意在使用集分宝服务时，将依照本协议及集分宝企业及集分宝商务不时在晓米佳平台经营者及/或支付宝网站上公布的规则履行义务并享有权利。</p>
                            <p><strong><u>3</u></strong><strong><u>、您应自行承担您与您的用户之间的所有交易风险，并自行处理所有相关的交易及货款纠纷。</u></strong></p>
                            <p>4、您知晓并同意，100个集分宝可抵1元人民币。集分宝企业及集分宝商务有权随时通过在晓米佳平台经营者或/及支付宝网站上发布公告变更前述抵扣标准。</p>
                            <p>5、您同意，集分宝企业及集分宝商务有权基于法律法规要求及风险防范需要而要求您提供相关材料（包括但不限于您的营业执照复印件、税务登记证复印件、税务登记证号等）。您应自收到提供通知后在合理期限内向集分宝企业及集分宝商务提供。</p>
                            <p>6、您保证每个月向集分宝企业开具需结算或已结算的集分宝对应金额的发票，具体开具时间为次月15日前。发票内容依据商户的经营范围开具，但备注中必须有“集分宝”字样。发票开具主体为公司全称（企业商户）或个人姓名（个人商户）。如有特殊原因且经得集分宝企业同意可延迟一个月出具。如您不按时将发票送达集分宝企业的，<strong><u>集分宝企业有权随时要求支付宝从您名下的支付宝账户中扣除相当于应开发票金额的30%作为违约金。</u></strong></p>
                            <p>发票请邮寄至以下地址：</p>
                            <p>地址：浙江省杭州市万塘路18号黄龙时代广场B座2楼小邮局</p>
                            <p>收件人：“集分宝”财务部</p>
                            <p>联系电话：0571-26888888</p>
                            <p><strong>四、本服务约定</strong></p>
                            <p align="left">就使用本服务涉及的权利和义务由您与支付宝及晓米佳平台经营者做如下约定：</p>
                            <p align="left">&nbsp;&nbsp;&nbsp; 1、您知晓并同意，您签署本协议即代表您将依照本协议、<a href="https://help.alipay.com/lab/help_detail.htm?help_id=211403">《支付宝服务协议》</a>及支付宝、晓米佳平台经营者网站公布的规则履行义务并享有权利。本协议与《支付宝服务协议》约定不一致的，以本协议为准；本协议未约定事宜，均以支付宝网站所不时公布的《支付宝服务协议》及相关附属规则及晓米佳平台经营者网站公布的规则及您另行签署的相关协议为补充。</p>
                            <p align="left">&nbsp;&nbsp;&nbsp; <strong>2</strong><strong>、您同意，您在晓米佳平台收取的交易款项，晓米佳平台经营者或其关联公司有权按照与您的协议向支付宝发送分账指令，支付宝有权按照晓米佳平台经营者或其关联公司的指令直接进行分账处理。支付宝对于正确执行晓米佳平台经营者或其关联公司指令的行为不承担责任。</strong></p>
                            <p align="left">&nbsp;&nbsp; 本条所称分账指将买家支付给您的交易款项部分或全部分给其他主体，包括但不限于供销平台的供应商、晓米佳客，<strong>如交易款项不足以分账，将从您名下支付宝账户余额中扣除以补足。</strong></p>
                            <p>3、您认可，您使用本服务的记录数据、交易金额数据均以支付宝/晓米佳平台经营者软件系统记录的数据为准。</p>
                            <p><strong><u>4</u></strong>、<strong><u>您同意并保证，在使用本服务时，您应严格履行如下约定：</u></strong></p>
                            <p><strong><u>（1）您应本着“遵纪守法”的原则严格遵守所在国家或地区的法律法规及相关规定。不得利用本服务从事任何有违所在国家或地区的法律法规及相关规定所禁止的产品/服务的销售。</u></strong></p>
                            <p><strong><u>（2）您应本着“审慎交易”的原则了解并遵守与支付宝合作的银行卡组织（包括但不限于中国银联、VISA、MASTER、JCB、AMEX等）、银行及其他合作机构制定的相关规则（包括但不限于现行有效或后续变更、新增的规则，具体以涉及的服务类型为准）。</u></strong></p>
                            <p><strong><u>（3）您应本着“诚实信用”的原则合理使用本服务，不得利用本服务从事“套现”交易；或从事产品订购页面说明中明确的暂不开放类目的产品/服务的销售，亦不得违规将暂不开放类目的产品/服务发布在开放类目下使用本服务，暂不开放的类目以订购页面实时公布的信息为准。</u></strong></p>
                            <p><strong><u>（4）您应本着“了解买家”的原则妥善保留与本服务相关的一切凭证，上述凭证包括但不限于交易订单号、买家姓名、交易日期、交易金额、所购商品或服务内容、收货地址、收货人签收单、发货记录、物流凭证、交易过程中的阿里旺旺聊天记录（包括交易过程中的交易变更等可以证明实际履行与双方的约定一致的信息）等。同时，您须有效约束您委托的物流机构送达您的交易物品时的签收标准：即明确须为您的买家本人签收，如您的买家委托他人代收的，签收凭证中须有授权证明及“**代**收货”的字样。您应自交易成功之日起将上述一切凭证至少保存两年。</u></strong></p>
                            <p>5、涉及交易风险的特别约定</p>
                            <p>（1）<strong><u>您同意，为了保障买卖双方的交易安全和维护晓米佳平台正常的交易秩序，在任何使用本服务涉及的交易中，如支付宝认为交易存在异常或风险的(例如存在交易的支付宝账户或银行卡被他人盗用等非授权交易、“套现”交易等)，有权不经通知而采取一定的措施以控制风险，这些措施包括但不限于：1）取消交易，并将买家已支付的交易款项退回；如前述交易款项已支付至您的账户的，支付宝有权从您的账户中扣除；2）止付交易款项；3）暂停或停止向您提供服务的全部或部分。</u></strong></p>
                            <p>对于上述第2)和3)项的限制措施，如支付宝根据您提供的或支付宝掌握的证据判断上述风险已解除或得到合理控制，支付宝将解付款项或恢复提供相关服务。</p>
                            <p>（2）在支付宝邮件通知您与买家的交易存在风险时，您有义务配合支付宝采取相关措施，包括但不限于停止发货、向物流公司召回已发出的货物及提供相关凭证（详见本条第3项第（4）款约定，下同）。</p>
                            <p>（3）<strong><u>您同意，当您的交易款项中涉及非授权交易、“套现”交易的，支付宝可能会采取本条第4项（1）约定的措施以处置您支付宝账户内相应款项(包括但不限于交易金额、可能产生的银行卡组织仲裁费用)。您应在收到支付宝邮件通知后5个自然日内按要求提供相关凭证。针对非授权交易，如因您在约定时间内无法提供相关凭证或提交的凭证经银行卡组织、银行、其他合作机构或支付宝判定为无效或效力不足而导致持卡人非授权交易申诉成立，您须在接到支付宝邮件通知后3个工作日内赔偿因此导致的所有损失（包括但不限于持卡人损失、仲裁费用、支付宝因您未能成功证明该笔交易出自持卡人的真实授权所导致的惩罚性或其他类型的损失比如持卡人申诉成功、支付宝根据承诺或规则向持卡人承担补偿责任所产生的损失）。针对“套现”交易，如因您在约定时间内无法提供相关凭证或提交的凭证经支付宝判断为无效或效力不足的，您应在接到支付宝邮件通知后3个工作日内向支付宝支付违约金十万元，且支付宝有权从您的任一支付宝账户中直接扣除该违约金。如该违约金不足以弥补支付宝或/及晓米佳平台经营者损失的，您仍予以补足。</u></strong></p>
                            <p><strong><u>您同意，对于非授权交易、“套现”交易处理过程中因款项止付、支付宝账户暂停或停止使用等所产生的损失，支付宝对此不承担任何责任。</u></strong></p>
                            <p>5、您在使用本服务过程中，如发生以下情形，服务提供者有权终止为您提供该服务：</p>
                            <p>（1）违反中华人民共和国相关法律法规、其他适用于您的境外法律及国际惯例及本协议的约定，将本服务用于任何非法目的或利用该服务从事侵害他人合法权益之行为，包括但不限于;</p>
                            <p>1)、侵害他人名誉权、隐私权、商业秘密、商标权、著作权、专利权等合法权益。</p>
                            <p>2)、违反依法定或约定之保密义务。</p>
                            <p>3)、冒用他人名义使用本服务。</p>
                            <p>4)、从事不法交易行为，如洗钱、贩卖枪支、毒品、禁药、盗版软件、黄色淫秽物品及其他服务提供者认为不得使用本服务进行交易的物品等。</p>
                            <p>5)、提供赌博资讯或以任何方式引诱他人参与赌博。</p>
                            <p>6)、违反《银行卡业务管理办法》等规定或本协议的约定使用银行卡，或利用信本服务进行“套现”交易。</p>
                            <p>7)、进行与您或买家宣称的交易内容不符的交易、使用本服务从事禁止或暂不开放类目的交易及不真实的交易。</p>
                            <p>8)、从事任何可能含有电脑病毒或是可能侵害本服务系统、资料之故意行为。</p>
                            <p>（2）违反您与服务提供者签署的任一协议、在网站公布的规则的（包括但不限于《支付宝服务协议》、《晓米佳服务协议》、《消费者保障服务协议》）。</p>
                            <p>（3）您不再符合晓米佳平台网站公布的本服务申请标准的。</p>
                            <p>（4）因国家相关主管部门颁布、变更的法令、政策，服务提供者需要终止提供约定服务的。该等情况下不视为服务提供者违约。</p>
                            <p><strong>五、通知</strong></p>
                            <p><strong><u>本协议履行过程中，服务提供者向您发出的书面通知方式包括但不限于邮寄纸质通知、网站公告、电子邮件、站内信、旺旺系统信息、手机短信和传真等方式。</u></strong><strong><u>无论采用何种形式，前述修订内容自通知发出之日起即对您和服务提供主体产生约束力。若您在通知送达之后继续使用本服务的，表示您已充分阅读、理解并接受修改后的内容，也将遵循修改后的内容使用相关服务；若您不同意修改后的内容，您应停止使用相关服务。</u></strong></p>
                            <p><strong>六、服务提供者的权利和义务</strong></p>
                            <p>1、服务提供者应负责受理或委托第三方受理涉及服务相关问题的投诉并处理由此产生纠纷，但本协议另有约定外。</p>
                            <p>2、服务提供者应负责或委托第三方设立业务咨询和联系电话，负责解答您在使用相关服务过程中遇到的各种疑问，并及时解决在数据对账、资金流转过程中的有关问题。</p>
                            <p>3、您同意在有正当、合法、合理之情形时，服务提供者有权将您的相关交易信息提供给第三方，如政府部门、司法机关、银行卡组织、其他合作机构等； 就支付宝而言，《支付宝服务协议》另有约定的，按该协议约定执行。</p>
                            <p>4、服务提供者有权留存您在使用本服务过程中形成的数据信息并提供给各自的关联公司，以供后续向您提供持续地、更优质的服务； 就支付宝而言，《支付宝服务协议》另有约定的，按该协议约定执行。</p>
                            <p><strong>七、其他</strong></p>
                            <p><strong><u>1</u></strong><strong><u>、您同意，服务提供者有权根据您的风险程度及自身业务运营情况的需求而随时调整服务规则、中止/终止向您提供的全部或部分服务，或调整您通过服务进行收款或交易的限额，并按照本协议约定方式书面通知您。</u></strong></p>
                            <p><strong><u>2</u></strong><strong><u>、您理解并同意，在您使用本协议项下服务过程中，因服务提供者原因导致您发生相应损失的，服务提供者就因此给您造成的直接损失进行赔偿。在任何情况下，服务提供者不就您的利润、商誉、资料损失或其他间接、附带、特别、衍生性的损失承担责任或赔偿性惩罚。</u></strong></p>
                            <p>3、为有效提供服务，服务提供者会不时对系统进行维护和升级。届时，服务提供者仅需在支付宝或晓米佳平台经营者网站发布公告即可。在此过程中可能出现服务中断或不稳定状态，此情形不应视作服务提供者违约。</p>
                            <p>4、您同意，因您违反本协议约定造成服务提供者损失的，您应赔偿相应的损失或承担相应的违约责任。如您未主动赔偿的，您授权服务提供者可从您名下的支付宝账户扣取相应款项，并就不足部分向您保留追索的权利。</p>
                            <p>5、为查询您的信用状况，审核您履行本合同义务的能力，确认您使用本服务的资格，您同意并授权支付宝及服务提供者在不违反《征信业管理条例》等法律法规及国家关于个人金融信息保护方面相关规定的前提下，向芝麻信用管理有限公司及其他依法设立的征信机构、资信评估机构或有关法律、监管机构许可的类似机构（以下统称“信用机构”）查询、使用您的芝麻分、个人信用信息和信用报告。如未有另行约定，前述授权期限与本合同有效期限一致。且为建立信用体系，您同意并授权支付宝及服务提供者向信用机构发送您的信息并一经通知您即将您的不良信息发送信用机构，包括但不限于芝麻信用管理有限公司。</p>
                            <p><strong><u>6</u></strong><strong><u>、您同意，本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，没有相关法律规定的，参照通用国际商业惯例和（或）行业惯例。如有纠纷，双方应努力友好协商解决。如协商不成，您同意在被告住所地有管辖权的人民法院审理。</u></strong></p>
                            <p>7、本协议的纸质版本仅供参考，纸质版本与电子版本不一致的，以支付宝/晓米佳平台经营者网站上展示的电子版本为准。</p>
                            <p>8、本协议有效期为一年，自本协议包含的任一服务开通之日起起算。协议到期后，双方均无异议的，则本协议自动续期一年，以此类推，次数不限。</p>
                            <p>9、本协议附件《国际支付服务规则》与本协议具有同等效力。</p>
                        </div>
                    </div>
                    <div class="assignment-container">
                        <h3>国际支付服务规则</h3>
                        <div class="assignment-item">
                            <p>一、凡是晓米佳网买家使用国际支付与您建立交易（以下简称“国际支付交易”），相应的交易即受国际支付组织电子资金转账网络（包括但不限于“Visa”/”MasterCard”/”JCB”）相关交易规则的约束。<strong>您应遵循法律法规的规定，遵守您与支付宝、晓米佳之间的协议约定，还需遵守所有国际支付组织电子资金转账网络现行有效及后续新增、变更的规则，并独自承担因违反国际支付组织电子资金转账网络相关规则产生的不利后果。</strong>为尽可能避免国际支付交易产生的纠纷和责任，在进行国际支付交易时，您首先应遵守以下内容：
                                <br>
                                <br><strong>1</strong><strong>、不进行虚假交易。</strong></p>
                            <p><strong>2、妥善保留与国际支付交易有关的一切凭证，该等凭证包括但不限于交易订单号、买家（消费者）姓名、交易日期、交易金额、所购商品或服务内容、收货地址、收货人签收单、发货记录、交易过程的聊天记录（包括交易过程中的交易变更等可以证明卖家的履行与双方的约定一致的信息）等。对于酒店、机票及根据晓米佳网规则允许使用国际支付的非实物类商品，除上述凭证外，还需要保留酒店流水账单，电子机票，电子预订记录，与客户的来往邮件凭证，商户预订及取消政策等。且支付宝或晓米佳可以根据实际情况要求您提供其他凭证。</strong></p>
                            <p><strong>3</strong><strong>、发货物流单据保留不少于180天，且物流信息可在线查看跟踪信息。</strong></p>
                            <p><strong>4</strong><strong>、确保将交易物品发往晓米佳网系统的“收货和物流信息”页面上所列明的收货地址。</strong></p>
                            <p><strong>5</strong><strong>、除晓米佳网另有明确规定外，保证仅销售需要物流运送的有形实物商品，不销售非实物商品（包括但不限于服务、无形物品或数字化商品等）；所销售的有形实物商品均为正规厂商生产的合格产品，不存在质量问题；如发生任何质量问题，应积极与买家协商；不进行见面交易。</strong></p>
                            <p><strong>6</strong><strong>、严格保证接受国际支付的商品信息的发布符合晓米佳网的相关规则，保证商品信息发布时选择的商品类目准确无误。</strong></p>
                            <p><strong>7、及时按照支付宝和/或晓米佳的要求，提供国际支付交易相关凭证及其他信息。</strong></p>
                            <p><strong>8、使用大型、正规、国际认可度较高的物流服务提供商，例如UPS, DHL, FedEx,TNT, EMS,顺丰速运等（该等列举不意味着您一旦选择，您的国际支付交易就没有风险，而只是可能会对您在发生国际支付争议时的举证会有所帮助，支付宝和晓米佳将不对任何物流服务商为您提供的服务承担任何担保责任）。</strong>
                                <br>
                                <br>二、尽管您完全遵守以上规定，不意味着您即完全符合国际支付组织电子资金转账网络的全部规则，您仍应通过规范您自身的行为、查询、学习国际支付组织电子资金转账网络的其他规则，以避免可能的责任与损失。支付宝、晓米佳不承担任何责任与损失。
                                <br>
                                <br><strong>三、无论您是否遵循本规则或其他国际信用卡组织的规则，一旦与信用卡交易相关的信用卡发卡银行、国际支付组织电子资金转账网络或司法机关认定您的行为非法（包括但不限于银行卡拒付、欺诈、洗钱等），或支付宝基于自身谨慎判断认为您可能涉及上述行为的，您同意：</strong></p>
                            <p align="left"><strong>1 </strong><strong>、拒付通知会发送到您的预留邮箱；您应在收到拒付通知后5个自然日或预仲裁通知3个自然日内按通知要求提供相关凭证。若您未预留邮箱地址或预留邮箱地址无效，导致未收到拒付通知的，由您自行承担损失。因您在约定时间内无法提供相关凭证或提交的凭证经国际支付组织电子资金转账网络规则的认定、银行、其他合作机构或支付宝判定为无效或效力不足而导致拒付成立，您须在接到邮件通知后3个自然日内赔偿因此导致的所有损失（包括但不限于持卡人损失、仲裁费用、支付宝因您未能成功证明该笔交易出自持卡人的真实授权所导致的惩罚性或其他类型的损失比如持卡人拒付成功、支付宝根据承诺或规则向持卡人承担补偿责任所产生的损失）。<br>2、支付宝有权根据发卡银行、国际支付组织电子资金转账网络规则、境内收单行或司法机关的认定撤销相应的国际支付交易，并将国际支付交易相关的资金自您的支付宝账户退回至持卡人的支付宝账户内。<br>3、晓米佳有权根据该等事实，进行独自判断，对您采取限制措施，该等措施包括但不限于公示警告、限制发布商品信息、删除商品、永久冻结帐号。<br>4、支付宝有权根据该等事实，进行独自判断，对您的支付宝账户采取限制措施，该等限制措施包括但不限于对您名下支付宝账户暂停或终止提供全部或部分支付宝服务，或对资金的全部或部分进行止付，且有权限制您所使用的产品或服务的部分或全部功能（包括但不限于关闭收款功能，对这些账户名下的款项和在途交易采取取消交易、调账等限制措施），并通过邮件或站内信或者客户端通知等方式通知您，您应及时予以关注。</strong></p>
                            <p align="left">
                                <br><strong>四、支付宝和/或晓米佳因您的国际支付交易先行承担责任和/或产生其他损失的，该等责任和/或损失将由您最终完全承担，在此情形下，您授权支付宝和/或晓米佳直接自您的支付宝账户中扣取相应金额，且无需事先征得您的同意。</strong></p>
                        </div>
                    </div>
                    <h3 class="assignment-tips">本人同意将支付宝认证材料授权晓米佳开店使用；本人同意认证材料用于晓米佳店铺的对外披露</h3></div>
               <form id="sendapp" action="seller/openShop">
               	<input type="hidden" name="u_id" value="${user.u_id }"/>
               	<input type="hidden" name="realNameAuthentication" value="${user.realNameAuthentication }"/>
               	<input type="hidden" name="payAuthentication" value="${user.payAuthentication }"/>
               	
                <div id="dialog-footer-2" class="next-dialog-footer">
                    <div class="dialog-actions">
                        <button type="button" class="next-btn next-btn-normal 
                        next-btn-large" onclick="dialog_close()">不同意</button>
                        
                        <a type="primary" class="next-btn next-btn-primary next-btn-large 
                        ice-link" onclick="sendApply();" >同意 </a> <!--  onclick="document.getElementById('sendapp').submit();return false"-->
                    </div>
                </div><a href="javascript:;" class="next-dialog-close"><i class="short-icon-close" onclick="dialog_close();"></i></a></div>
    		</form>
    <body data-spm="3063657" class=" new-seller " style="overflow-y: auto; padding-right: 0px;">
	
                                    
                                    
       <div class="open-page open-success" style="display:none; padding-bottom:100px;">
           <div class="open-success"><img src="image/SellMode/opensuccess2.jpg" class="open-img">
               <h2 class="open-success-title">亲，店铺创建成功啦！祝您生意兴隆！</h2>
               <p class="open-success-desc">现在您可以经营您的店铺了，赶紧发布宝贝吧！</p>
               <a type="primary" target="_blank" href="https://upload.taobao.com/auction/sell.jhtml?file=sell.jhtml" class="next-btn next-btn-primary next-btn-large shop-success-btn-primary">
                   <!-- react-text: 270 -->立即发布宝贝
                   <!-- /react-text -->
               </a>
               <p style="color: rgb(255, 68, 0); font-size: 14px; font-weight: bold; margin-top: 10px;">晓米佳网不会主动联系您缴纳保证金业务，谨防假冒客服诈骗！</p>
           </div>
       </div>
                                 
</body>
    
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/SellMode/openStore.js"></script>
</html>
