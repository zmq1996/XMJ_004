<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>我的晓米佳--我的订单</title>
	<meta http-equiv="Content-Type"  content="text/html; charset=gb2312" />
	<meta name="format-detection" content="telephone=no" />
    
    <!-- <link type="text/css" rel="stylesheet"  href="../css/basePatch.css"/> -->
    <link type="text/css" rel="stylesheet"  href="../css/index.css"/>
	<link type="text/css" rel="stylesheet"  href="../css/m-album.css" source="widget"/>
    <link type="text/css" rel="stylesheet"  href="../css/common.css" source="widget"/>
    <link type="text/css" rel="stylesheet"  href="../css/order.css" source="combo"/>
    
	<script type="text/javascript" src="../easyui/jquery.min.js"> </script> 
	<script type="text/javascript" src="../js/order.js"> </script> 
</head>  
<body myjd="_MYJD_ordercenter">
 
 <div id="nav">
	<div class="w">
		<div class="logo">
			<a href="/xmj/" target="_blank" class="fore1" clstag="homepage|keycount|home2013|Homejdlogo"></a>
			<a href="/xmj/" target="_self" class="fore2" clstag="homepage|keycount|home2013|Homebackm">晓米佳</a>
			<a href="/xmj/" target="_blank" class="fore3" clstag="homepage|keycount|home2013|Homebackjd">返回首页</a>
		</div>
		<div class="navitems">
			<ul>
				<!-- <li class="fore-1">
					<a target="_self" href="//home.jd.com" clstag="homepage|keycount|home2013|Homeindex">首页</a>
				</li> -->
				<li class="fore-5">
					<a tid="_MYJD_joy" href="//joycenter.jd.com" target="_self" clstag="homepage|keycount|home2013|Homemsg">消息</a>
				</li>
			</ul>
		</div>
		<div class="nav-r">
		<!-- <div id="settleup" class="dorpdown">
			<div class="cw-icon">
				<i class="ci-left"></i> <i class="ci-right"></i> <i
					class="iconfont">&#xe607;</i> <a target="_blank"
					href="/xmj/page/gouwuche.jsp">我的购物车</a>
			</div>
			<div class="dorpdown-layer">
				<div class="spacer"></div>
				<div id="settleup-content">
					<span class="loading"></span>
				</div>
			</div>
		</div> -->
		</div> 
		<div class="clr"></div>
	</div>
</div>	

<div id="container">
    <div class="w">
        <div id="content">
            <div id="sub">
            	<!--左侧导航栏-->
               	<div id="menu">
	<dl class="fore1">
		<dt id="_MYJD_order">订单中心</dt>
		<dd class="fore1_1" id="_MYJD_ordercenter">
			<a href="/xmj/page/order.jsp" target="_self" >我的订单</a>
		</dd>
		<dd class="fore1_2" id="_MYJD_tuan">
			<a href="javascript:void(0);" target="_blank">团购订单</a>
		</dd>
		<dd class="fore1_5" id="_MYJD_comments">
			<a href="javascript:void(0);" target="_self">评价晒单</a>
		</dd>
	</dl>
	<dl class="fore2">
		<dt id="_MYJD_gz">关注中心</dt>
		<dd class="fore2_1" id="_MYJD_product">
			<a href="javascript:void(0);" target="_self">关注的商品</a>
		</dd>
		<dd class="fore2_2" id="_MYJD_vender">
			<a href="javascript:void(0);" target="_self">关注的店铺</a>
		</dd>
		<dd class="fore2_4" id="_MYJD_brand">
			<a href="javascript:void(0);" target="_self">关注的品牌</a>
		</dd>
		<dd class="fore2_6" id="_MYJD_history">
			<a href="javascript:void(0);" target="_blank">浏览历史</a>
		</dd>
	</dl>
	<dl class="fore3">
		<dt id="_MYJD_zc">资产中心</dt>
		<dd class="fore3_6" id="_MYJD_balance">
			<a href="javascript:void(0);" target="_self">余额</a>
		</dd>
		<dd class="fore3_7" id="_MYJD_ticket">
			<a href="javascript:void(0);" target="_self">优惠券</a>
		</dd>
	</dl>
	<dl class="fore6">
		<dt id="_MYJD_sz">设置</dt>
		<dd class="fore6_1" id="_MYJD_info">
			<a href="javascript:void(0);" target="_self">个人信息</a>
		</dd>
		<dd class="fore6_2" id="_MYJD_add">
			<a href="javascript:void(0);" onclick="showAddress(this)">收货地址</a>
		</dd>
	</dl>
</div>
                <div id="menu-ads">
                    <!--广告全部放这里-->
                </div>
            </div>
				<div id="main">
					<div id="chunjie" class="mb10"></div>
					<div class="mod-main mod-comm mod-order" id="order01">
						<div class="mt">
							<h3>我的订单</h3>
							<div class="extra-r"></div>
						</div>
					</div>
					<div class="safety-box hide"></div>

					<div class="mod-main mod-comm lefta-box" id="order02">
						<div class="mt">
							<ul class="extra-l">
								<li class="fore1"><a
									href="//order.jd.com/center/list.action" class="txt">全部订单</a></li>
								<li><a href="//order.jd.com/center/list.action?s=1"
									id="ordertoPay"  class="txt">待付款</a></li>
								<li><a href="//order.jd.com/center/list.action?s=128"
									id="ordertoReceive" class="txt">待收货</a></li>
								<li><a href="//club.jd.com/mycomments.aspx"
									id="ordertoComment" target="_blank" class="txt" >待评价</a></li>

								<li class="fore2"><a
									href="//order.jd.com/center/recycle.action?d=1" 
									class="ftx-03" id="ordertoRecycle">订单回收站</a></li>
							</ul>
							<div class="extra-r">
								<div class="search">
									<input id="ip_keyword" type="text" class="itxt"
										  placeholder="商品名称/商品编号/订单号"  /> <a href="javascript:void(0);"
										class="search-btn" clstag="click|keycount|orderinfo|search">搜索<b></b></a>
								</div>
							</div>
						</div>

						<div class="mc">
							<table class="td-void order-tb" id="orderTable">
								<colgroup>
									<col class="number-col">
										<col class="consignee-col">
											<col class="amount-col">
												<col class="status-col">
													<col class="operate-col">
								</colgroup>
								<thead>
									<tr>
										<th><div class="ordertime-cont" onmouseover="timeSpread()" onmouseout="timeFurl()">
												<div class="time-txt"  >
													近三个月订单 <span class="blank"></span>
												</div>
												<div class="time-list" >
													<ul>
														<li><a class="curr" href="javascript:void(0);"
															onclick="timeSelect(this)" _val="1&s=4096">近三个月订单</a></li>
														<li><a href="javascript:void(0);"
															onclick="timeSelect(this)" _val="2&s=4096">今年内订单</a></li>
														<li><a href="javascript:void(0);"
															onclick="timeSelect(this)" _val="2016&s=4096">2016年订单</a></li>
														<li><a href="javascript:void(0);"
															onclick="timeSelect(this)" _val="2015&s=4096">2015年订单</a></li>
														<li><a href="javascript:void(0);"
															onclick="timeSelect(this)" _val="2014&s=4096">2014年订单</a></li>
														<li><a href="javascript:void(0);"
															onclick="timeSelect(this)" _val="3&s=4096">2014年以前订单</a></li>
													</ul>
												</div>
											</div>
											<div class="order-detail-txt ac">订单详情</div></th>
										<th>收货人</th>
										<th>金额</th>
										<th>
											<div class="deal-state-cont" id="orderState" 
											onmouseover="orderStateSpread()" onmouseout="orderStateFurl()">
												<div class="state-txt">
													全部状态<b></b><span class="blank"></span>
												</div>
												<div class="state-list">
													<ul>
														<li value="4096"><a href="javascript:void(0);"
															onclick="stateSelect(this)" class="curr">全部状态</a></li>
														<li value="1"><a href="javascript:void(0);"
															onclick="stateSelect(this)">等待付款</a></li>
														<li value="128"><a href="javascript:void(0);"
															onclick="stateSelect(this)">等待收货</a></li>
														<li value="1024"><a href="javascript:void(0);"
															onclick="stateSelect(this)">已完成</a></li>
														<li value="-1"><a href="javascript:void(0);"
															onclick="stateSelect(this)">已取消</a></li>
													</ul>
												</div>
											</div>
										</th>
										<th>操作</th>
									</tr>

								</thead>
								
							</table>
							<div class="mt20">
								<div class="pagin fr" id="changePage">
									<span class="text">共1条记录</span>    
									<!-- <span class="text">共1页</span>  -->
									<span class="prev-disabled">上一页<b></b></span>
									<!-- <span class="prev-disabled">首页</span> -->
									<a class="current">1</a>
									<!-- <span class="next-disabled">末页</span>  -->
									<span class="next-disabled" >下一页<b></b></span>

								</div>
								<div class="clr"></div>
							</div>
						</div>
					</div>
					<div class="mod-main mod-comm" id="guessing-liked" style="display:none;">
						<div id="addressList" class="mod-main mod-comm">
							<div class="mt">
								<a onclick="alertAddAddressDiag()" class="e-btn add-btn btn-5"
									href="javascript:;">新增收货地址</a> <span class="ftx-03">您已创建<span
									id="addressNum_top" class="ftx-02">1 </span>个收货地址，最多可创建<span
									class="ftx-02">5</span>个
								</span>
							</div>

							<div class="mc">
								<div class="sm easebuy-m " id="addresssDiv-137969880">
									<div class="smt">
										<h3> 郑米钦 <a onclick="modifyAliasTips(137969880,event);"
												id="alias-edit-137969880" class="alias-edit"
												href="javascript:;"></a> <span class="ftx-04 ml10">默认地址</span>
										</h3>
										<div class="extra">
											<a onclick="alertDelAddressDiag(137969880);" class="del-btn"
												href="#none">删除</a>
										</div>
										<div id="alias-form-137969880" class="alias-form hide">
											<div class="alias-new">
												<input class="ipt-text" id="ipt-text-137969880" value="郑米钦"
													onblur="checkConsigneeAlias('ipt-text-137969880')"
													maxlength="20" type="text"/>
													<button type="button" class="btn-save"
														onclick="saveAddessAlias(137969880,event)" >保存</button>
											</div>
											<div class="alias-common">
												<div class="ac-tip">建议填写常用名称：</div>
												<div class="ac-con">
													<a
														href="javascript:setAddressAilas(137969880,'home-137969880');"
														id="home-137969880" class="item">家里</a> <a
														href="javascript:setAddressAilas(137969880,'parentHome-137969880');"
														id="parentHome-137969880" class="item">父母家</a> <a
														href="javascript:setAddressAilas(137969880,'company-137969880');"
														id="company-137969880" class="item">公司</a>
												</div>
												<span class="error-msg" id="error_ipt-text-137969880"></span>
											</div>
										</div>
									</div>

									<div class="smc">
										<div class="items new-items">
											<div class="item-lcol">
												<div class="item">
													<span class="label">收货人：</span>
													<div class="fl">郑米钦</div>
													<div class="clr"></div>
												</div>
												<div class="item">
													<span class="label">所在地区：</span>
													<div class="fl">湖南衡阳市珠晖区酃湖乡</div>
													<div class="clr"></div>
												</div>
												<div class="item">
													<span class="label">地址：</span>
													<div class="fl">湖南工学院计算机科学系</div>
													<div class="clr"></div>
												</div>
												<div class="item">
													<span class="label">手机：</span>
													<div class="fl">155****1252</div>
													<div class="clr"></div>
												</div>
												<div class="item">
													<span class="label">固定电话：</span>
													<div class="fl">155****1252</div>
													<div class="clr"></div>
												</div>
												<div class="item">
													<span class="label">电子邮箱：</span>
													<div class="fl"></div>
													<div class="clr"></div>
												</div>
											</div>

											<div class="item-rcol">
												<div class="extra">
												 <a class="ml10 ftx-05" href="javascript:;"
														onclick="alertUpdateAddressDiag(137969880);">编辑</a>
												</div>
											</div>
											<div class="clr"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="mc">
							<div class="goods-list"></div>
						</div>
					</div>
				</div>
			</div>
    </div>
</div>


 <div class="v">
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
 
  <!-- <script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
 
    

    
    
 		 		  <script type="text/javascript" src="//misc.360buyimg.com/user/myjd-2015/??widget/common/common.js,/widget/m-album/m-album-order.js" source="widget"></script>

	      <script type="text/javascript">
	        seajs.use("//misc.360buyimg.com/user/myjd-2015/js/page/order/list-service.js");

			seajs.use('//nfa.jd.com/loadFa.js?aid=0_0_7560', function (nh) {
            nh.show('chunjie', true)
            })
	      </script>

      	  <script type="text/javascript" src="//misc.360buyimg.com/user/myjd-2015/js/page/??recommend-base.js,order/order.js,order/base64.js,order/popOrderService.js,order/odo/OrderToolBar.js" charset="utf-8"></script>
      	  
 		      <script type="text/javascript" src="//static.360buyimg.com/im/js/im_icon_v5.js?sign=20131111" ></script>

                      <script type="text/javascript" src="//misc.360buyimg.com/user/myjd-2015/js/page/order/payOrderList.js"></script>
                            

    	<script type="text/javascript" src="//wl.jd.com/wl.js"></script>
		<script src="//payrisk.jd.com/js/td.js"></script> -->
	  </body>
</html>