<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>我的购物车 - 京东商城</title>

<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<link source="widget" href="../css/no-login/no-login.css"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="../css/backpanel.css"
	source="widget" />
<link type="text/css" rel="stylesheet" href="../css/index.css"
	source="widget" />
<script type="text/javascript" src="../js/gouwuche.js" ></script>

<style type="text/css">
.v {
	width: 990px;
	margin: 0 auto;
}

#footer-2013 {
	padding-bottom: 30px;
	text-align: center;
}

#footer-2013 .copyright {
	margin: 10px 0;
}
</style>
</head>
<body>
	<div id="shortcut-2014">
		<div id="shortcut">
		<div class="w">
			<ul class="fl">
				<li class="dorpdown" id="ttbar-mycity"></li>
			</ul>

			<ul class="fr">
				<li class="fore2 dorpdown" clstag="h|keycount|2016|01d">
					<div class="dt cw-icon"  >
						<a id="u_name" target="_blank" href="javascript:void(0)">${sessionScope.loginUser.u_name}</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3 dorpdown" id="ttbar-myjd" >
					<div class="dt cw-icon">
						<a target="_blank" href="/xmj/page/order.jsp">我的晓米佳</a>
						<i class="ci-right"></i>
					</div>
					<div class="dd dorpdown-layer">
						<div class="myjdlist">
							<div class="fore1">
								<div class="item"><a href="//order.jd.com/center/list.action" 
										target="_blank">我的订单<span id="num-unfinishedorder"></span></a></div>
								<div class="item"><a href="//myjd.jd.com/afs/indexNew.action?entry=1" target="_blank">返修退换货</a></div>
							</div>
							<div class="fore2">
								<div class="item">
									<a href="//joycenter.jd.com/msgCenter/queryHistoryMessage.action"
										target="_blank">消息<span id="num-tip"></span></a>
								</div>
								<div class="item">
									<a href="//t.jd.com/home/follow" clstag="" target="_blank">我的关注</a>
								</div>
							</div>
						</div>
						<div class="viewlist" style="display: none;">
							<div class="smt"><h4>我的足迹</h4><span class="extra"> <a target="_blank"
									href="//my.jd.com/history/list.html">更多&nbsp;&gt;</a></span>
							</div>
							<div class="smc"></div>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore8 dorpdown" id="ttbar-serv" >
					<div class="dt cw-icon">
						客户服务
						<!--<i class="iconfont">&#xe605;</i> <i class="ci-right"> </i> -->
					</div>
					<div class="dd dorpdown-layer">
						<div class="item-client">客户</div>
						<div class="item"><a href="//myjd.jd.com/afs/indexNew.action?entry=2"
								target="_blank" true="">售后服务</a></div>
						<div class="item"><a href="//chat.jd.com/jdchat/custom.action " target="_blank"
								true="">在线客服</a></div>
						<div class="item"><a href="//myjd-crm.jd.com/opinion/orderList.action"
								target="_blank" true="">意见建议</a></div>
						<div class="item"><a href="//sale.jd.com/act/wQTpIm7GnXE.html" target="_blank"
								true="">商家入驻</a></div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore9 dorpdown" id="ttbar-navs" >
					<div class="dt cw-icon">
						网站导航
						<!-- <i class="iconfont">&#xe605;</i><i class="ci-right"> </i> -->
					</div>
					<div class="dd dorpdown-layer">
						<dl class="fore1"><dt>特色主题</dt>
							<dd><div class="item"><a href="//brands.jd.com/" target="_blank">品牌头条</a></div>
								<div class="item"><a href="//hao.jd.com/" target="_blank">发现好货</a></div>
								<div class="item"><a href="//coll.jd.com/list.html?sub=11461" target="_blank">港澳售</a></div>
								<div class="item"><a href="//a.jd.com/" target="_blank">优惠券</a></div>
								<div class="item"><a href="//miaosha.jd.com/" target="_blank">秒杀</a></div>
								<div class="item"><a href="//gift.jd.com/" target="_blank">礼品购</a></div>
								<div class="item"><a href="//smarthome.jd.com/" target="_blank">智能馆</a></div>
								<div class="item"><a href="//sale.jd.com/act/3je8ZTCxNl6SusId.html "
										target="_blank">北京老字号</a></div>
								<div class="item"><a href="//what.jd.com/" target="_blank">买什么</a></div>
							</dd>
						</dl>
						<dl class="fore2">
							<dt>行业频道</dt>
							<dd>
								<div class="item"><a href="//channel.jd.com/fashion.html" target="_blank">服装城</a></div>
								<div class="item"><a href="//channel.jd.com/electronic.html" target="_blank">家用电器</a></div>
								<div class="item"><a href="//diannao.jd.com/" target="_blank">电脑办公</a></div>
								<div class="item"><a href="//shouji.jd.com/" target="_blank">手机</a></div>
								<div class="item"><a href="//channel.jd.com/beauty.html" target="_blank">美妆馆</a></div>
								<div class="item"><a href="//channel.jd.com/chaoshi.html" target="_blank">食品</a></div>
								<div class="item"><a href="https://shuma.jd.com/" target="_blank">智能数码</a></div>
								<div class="item"><a href="//book.jd.com/" target="_blank">图书</a></div>
								<div class="item"><a href="//3c.jd.com/" target="_blank">玩3C</a></div>
							</dd>
						</dl>
						<dl class="fore3">
							<dt>生活服务</dt>
							<dd>
								<div class="item"><a href="//baitiao.jd.com/activity/third" target="_blank">白条</a></div>
								<div class="item"><a href="//licai.jd.com/" target="_blank">理财</a></div>
								<div class="item"><a href="//chongzhi.jd.com/" target="_blank">话费</a></div>
								<div class="item"><a href="//trip.jd.com/" target="_blank">旅行</a></div>
								<div class="item"><a href="//caipiao.jd.com/" target="_blank">彩票</a></div>
								<div class="item"><a href="//game.jd.com/" target="_blank">游戏</a></div>
								<div class="item"><a href="//jipiao.jd.com/" target="_blank">机票酒店</a></div>
								<div class="item"><a href="//movie.jd.com/" target="_blank">电影票</a></div>
								<div class="item"><a href="//jiaofei.jd.com/" target="_blank">水电煤</a></div>
							</dd>
						</dl>
						<dl class="fore4">
							<dt>更多精选</dt>
							<dd>
								<div class="item"><a href="http://group.jd.com/site/20000121/20000032.htm"
										target="_blank">智能社区</a></div>
								<div class="item"><a href="http://group.jd.com/index/20000001.htm"
										target="_blank">游戏社区</a></div>
								<div class="item"><a href="//sale.jd.com/act/wQTpIm7GnXE.html" target="_blank">卖家入驻</a></div>
								<div class="item"><a href="//fw.jd.com/" target="_blank">服务市场</a></div>
								<div class="item"><a href="//zhaomu.jd.com/XCDLzm.html" target="_blank">乡村招募</a></div>
								<div class="item"><a href="//zhaomu.jd.com/intro.html" target="_blank">校园加盟</a></div>
								<div class="item"><a href="//channel.jd.com/office.html" target="_blank">办公生活馆</a></div>
								<div class="item"><a href="//ipr.jd.com/edition" target="_blank">知识产权维权</a></div>
								<div class="item"><a href="//en.jd.com/" target="_blank">English Site</a></div>
							</dd>
						</dl>
						</div>
				</li>
		
	<!-- <li class="spacer"></li> -->
        <li class="fore10 mobile" id="J_mobile" style="display: none;">
        	<div class="dt mobile_txt" >手机晓米佳</div>
        	<div id='J_mobile_pop' class='mod_loading mobile_pop'>
            </div>
        </li>
      </ul>
    </div>
  </div>
	</div>
	<div class="w w1 header clearfix">
		<div id="logo-2014">
			<a href="http://www.jd.com/" class="logo"></a> <a href="#none"
				class="link2"><b></b>购物车</a>
		</div>
		<!-- <div class="cart-search">
			<div class="form">
				<input id="key" type="text" class="itxt" autocomplete="off"
					accesskey="s"> <input type="button" class="button"
					value="搜索" clstag="clickcart|keycount|xincart|cart_search"
					onclick="javascript:void(0);">
			</div>
		</div> -->
	</div>


	<!-- main -->
	<div id="container" class="cart">
		<div class="w">
			<div id="chunjie" class="mb10"></div>
			<div class="cart-filter-bar">
				<ul class="switch-cart">
					<li class="switch-cart-item curr"><a href="#none"> <em>全部商品</em>
							<span class="number">1</span>
					</a></li>
				</ul>
				<div class="cart-store">
					<input id="hiddenLocationId" type="hidden"> <input
						id="hiddenLocation" type="hidden"> <span class="label">配送至：</span>
					<div id="jdarea" class="ui-area-wrap">
						<div class="ui-area-text-wrap">
							<div class="ui-area-text"></div>
							<b> </b>
						</div>
						<div class="ui-area-content-wrap">
							<div class="ui-area-tab"></div>
							<div class="ui-area-content"
								clstag="clickcart|keycount|xincart|cart_changeArea"></div>
						</div>
					</div>
				</div>
				<div class="clr"></div>
				<div class="w-line">
					<div class="floater"></div>
				</div>
				<div class="tab-con"></div>
				<div class="tab-con hide"></div>
			</div>
		</div>
		<div class="cart-warp">
			<div class="w">
				<div id="jd-cart">
					<div class="cart-main cart-main-new">
						<div class="cart-thead">
							<div class="column t-checkbox">
								<div class="cart-checkbox">
									<input type="checkbox" checked="checked"
										id="toggle-checkboxes_up" name="toggle-checkboxes"
										class="jdcheckbox"
										clstag="clickcart|keycount|xincart|cart_allCheck"> <label
										class="checked" for="">勾选全部商品</label>
								</div>
								全选
							</div>
							<div class="column t-goods">商品</div>
							<div class="column t-props"></div>
							<div class="column t-price">单价</div>
							<div class="column t-quantity">数量</div>
							<div class="column t-sum">小计</div>
							<div class="column t-action">操作</div>
						</div>
						<div id="cart-list">
							<input type="hidden" id="allSkuIds" value="11151047032" /> <input
								type="hidden" id="outSkus" value="" /> <input type="hidden"
								id="isLogin" value="1" /> <input type="hidden"
								id="isNoSearchStockState" value="0" /> <input type="hidden"
								id="isNoDD" value="0" /> <input type="hidden" id="isNoCoupon"
								value="0" /> <input type="hidden" id="isFavoriteDowngrade"
								value="0" /> <input type="hidden" id="isUnmarketDowngrade"
								value="1" /> <input type="hidden" id="isPriceNoticeDowngrade"
								value="0" /> <input type="hidden" id="isNoZYCoupon" value="0" />
							<input type="hidden" id="isNoVenderFreight" value="0" /> <input
								type="hidden" id="isNoDeliveryService" value="0" /> <input
								type="hidden" id="isNoXzyf" value="0" /> <input type="hidden"
								id="isNoXzyfCd" value="0" /> <input type="hidden" id="jrjby"
								value="0" /> <input type="hidden" id="zyxzqfsxdg" value="0" />
							<input type="hidden" id="isGiftServiceDowngrade" value="0" /> <input
								type="hidden" id="xzyfgz" value="50-99" /> <input type="hidden"
								id="hiddenLocationId" /> <input type="hidden"
								id="hiddenLocation" /> <input type="hidden" id="ids"
								value="11151047032" /> <input type="hidden" id="isNgsdg"
								value="0" />
							<!-- 修改数量之前的值 -->
							<input type="hidden" id="changeBeforeValue" value="" /> <input
								type="hidden" id="changeBeforeId" value="" /> <input
								type="hidden" value="1" id="checkedCartState" /> <input
								type="hidden" value="636237" id="venderIds" /> <input
								type="hidden" value="" id="zySkuCid" /> <input type="hidden"
								value="636237" id="venderFreightIds" /> <input type="hidden"
								value="148.00" id="venderTotals" /> <input type="hidden"
								value="2" id="uclass" /> <input type="hidden" value="0.00"
								id="freshTotalPrice" autocomplete="off" /> <input type="hidden"
								value="0.00" id="notFreshTotalPrice" autocomplete="off" />
							<div class="cart-item-list" id="cart-item-list-01">
								<div class="cart-tbody" id="vender_636237">
									<div class="shop">
										<div class="cart-checkbox">
											<input type="checkbox" checked="checked" name='checkShop'
												class="jdcheckbox"
												clstag="clickcart|keycount|xincart|cart_checkOn_shop">
											<label for="">勾选店铺内全部商品</label>
										</div>
										<span class="shop-txt"> <a class="shop-name"
											href="javascript:;" target="_blank" id="venderId_636237"
											clstag="clickcart|keycount|xincart|cart_shopName"></a>
										</span>
										<div class="shop-extra-r" id="shop-extra-r_636237"
											checkedSkuIds="11151047032"></div>
									</div>
									<div class="item-list">
										<!-- 满减 -->
										<!-- 满减 -->
										<div class="item-full minus-item" id="product_promo_4025315760">
											<!-- <div class="item-header">
												<div class="f-txt">
													<span class="full-icon full-gray-icon">满减<b></b></span>
													活动商品购满2件， 即可享受满减 <a href="javascript:void(0);"
														id="coudan_promo_4025315760"
														clstag="clickcart|keycount|xincart|cart_couDan"
														class="ftx-05">&nbsp;去凑单&nbsp;&gt;</a>
												</div>
												<div class="f-price">
													<strong>¥148.00</strong>
												</div>
											</div> -->
											<!-- 单品-->
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="cart-floatbar">
					<div class="cart-toolbar">
						<div class="toolbar-wrap">
							<div class="selected-item-list hide"></div>
							<div class="options-box">
								<div class="select-all">
									<div class="cart-checkbox">
										<input type="checkbox" checked="checked"
											id="toggle-checkboxes_down" name="toggle-checkboxes"
											class="jdcheckbox"
											clstag="clickcart|keycount|xincart|cart_allCheckDown">
										<label class="checked" for="">勾选全部商品</label>
									</div>
									全选
								</div>
								<div class="operation">
									<a href="#none"
										clstag="clickcart|keycount|xincart|cart_somesku_del"
										class="remove-batch">删除选中的商品</a> <a href="#none"
										class="follow-batch"
										clstag="clickcart|keycount|xincart|cart_somesku_guanzhu">移到我的关注</a>
									<!-- <a class="J_clr_nosale" href="#none"
										clstag="pageclick|keycount|201508251|23">清除下柜商品</a> -->
								</div>
								<div class="clr"></div>
								<div class="toolbar-right">
									<div class="normal">
										<div class="comm-right">
											<div class="btn-area">
												<a href="/xmj/page/payment.jsp" onclick="" 
													class="submit-btn"> 去结算<b></b></a>
												<!-- <a href="javascript:void(0);" class="submit-btn submit-btn-disabled">
								去结算<b></b></a> -->
											</div>
											<div class="price-sum">
												<div>
													<span class="txt txt-new">总价：</span> <span
														class="price sumPrice"><em>¥148.00</em></span> <b
														class="ml5 price-tips"></b>
													<div class="price-tipsbox"
														style="display: none; left: 159.85px;">
														<div class="ui-tips-main">不含运费及送装服务费</div>
														<span class="price-tipsbox-arrow"></span>
													</div>
													<br> <span class="txt">已节省：</span> <span
														class="price totalRePrice">-¥0.00</span>
												</div>
											</div>
											<div class="amount-sum">
												已选择<em>1</em>件商品<b class="up"
													clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>
											</div>
											<div class="clr"></div>
										</div>
									</div>
									<div class="combine">
										<div class="comm-right">
											<div class="btn-area">
												<a href="javascript:void(0);" onclick="return false;"
													clstag="clickcart|keycount|xincart|cart_gotoOrderOut"
													class="jdInt-submit-btn"> 去全球购结算<b></b></a> <a
													href="javascript:void(0);" onclick="return false;"
													clstag="clickcart|keycount|xincart|cart_gotoOrder"
													class="common-submit-btn"> 去京东结算<b></b></a>
											</div>
											<div class="price-sum">
												<div>
													<span class="txt txt-new">总价：</span> <span
														class="price sumPrice"><em id="totalPrice">¥148.00</em></span> <b
														class="ml5 price-tips"></b>
													<div class="price-tipsbox"
														style="display: none; left: 159.85px;">
														<div class="ui-tips-main">不含运费及送装服务费</div>
														<span class="price-tipsbox-arrow"></span>
													</div>
													<br> <span class="txt">已节省：</span> <span
														class="price totalRePrice">-¥0.00</span>
												</div>
											</div>
											<div class="amount-sum">
												已选择<em>1</em>件商品<b class="up"></b>
											</div>
											<div class="clr"></div>
										</div>
										<div class="clr"></div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="cart-removed">
					<div class="r-tit">已删除商品，您可以重新购买或加关注：</div>
				</div>
			</div>
		</div>
		<div class="w">
			<div class="m m1" id="c-tabs-new">
				<div class="mt">
					<div class="extra-l">
						<a href="#none" class="c-item curr">猜你喜欢</a> <a href="#none"
							class="c-item">我的关注</a> <a href="#none" class="c-item">最近浏览</a>
					</div>
					<div class="extra-r"></div>
				</div>
				<div class="mc c-panel-main">
					<div class="c-panel" id="guess-products"></div>
					<!--  <div class="c-panel" id="favorite-products"></div>
                <div class="c-panel" id="history-products"></div> -->
				</div>
			</div>
		</div>
		<div class="v">
			<div id="footer-2013">
				<div class="links">
					<a rel="nofollow" target="_blank"
						href="//www.jd.com/intro/about.aspx"> 关于我们 </a> | <a
						rel="nofollow" target="_blank" href="//www.jd.com/contact/">
						联系我们 </a> | <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">
						人才招聘 </a> | <a rel="nofollow" target="_blank"
						href="//www.jd.com/contact/joinin.aspx"> 商家入驻 </a> | <a
						rel="nofollow" target="_blank"
						href="//www.jd.com/intro/service.aspx"> 广告服务 </a> |
					<!--  <a rel="nofollow" target="_blank" href="//app.jd.com/">
                手机京东
            </a>
            | -->
					<a target="_blank" href="/links.vm/club.jd.com/links.aspx">
						友情链接 </a> | <a target="_blank" href="//media.jd.com/"> 销售联盟 </a> |
					<!--  <a href="//club.jd.com/" target="_blank">
                京东社区
            </a>
            |
            <a href="//gongyi.jd.com" target="_blank">
                京东公益
            </a>
            | -->
					<a target="_blank" href="//en.jd.com/"
						clstag="pageclick|keycount|20150112ABD|9">English Site</a>
				</div>
				<div class="copyright">
					Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;晓米佳XMJ.com&nbsp;版权所有
				</div>
			</div>
		</div>

	</div>
	<input type="hidden" id="isMiscdg" value="0" />
	<input type="hidden" id="hideMiscls" value="0" />
	<!-- /main -->

	<!-- <div id="service-2014">
	<div class="slogen">
		<span class="item fore1">
			<i></i><b>多</b>品类齐全，轻松购物
		</span>
		<span class="item fore2">
			<i></i><b>快</b>多仓直发，极速配送
		</span>
		<span class="item fore3">
			<i></i><b>好</b>正品行货，精致服务
		</span>
		<span class="item fore4">
			<i></i><b>省</b>天天低价，畅选无忧
		</span>
	</div>
	<div class="w">
		<dl class="fore1">
			<dt>购物指南</dt>
			<dd>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-29.html">购物流程</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-151.html">会员介绍</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue.html">常见问题</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-136.html">大家电</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/index.html">联系客服</a></div>
			</dd>
		</dl>
		<dl class="fore2">		
			<dt>配送方式</dt>
			<dd>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81-100.html">上门自提</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81.html">211限时达</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/103-983.html">配送服务查询</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a></div>				
				<div><a target="_blank" href="//en.jd.com/chinese.html">海外配送</a></div>
			</dd>
		</dl>
		<dl class="fore3">
			<dt>支付方式</dt>
			<dd>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-172.html">货到付款</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-173.html">在线支付</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-176.html">分期付款</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-174.html">邮局汇款</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-175.html">公司转账</a></div>
			</dd>
		</dl>
		<dl class="fore4">		
			<dt>售后服务</dt>
			<dd>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/321-981.html">售后政策</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-132.html">价格保护</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/130-978.html">退款说明</a></div>
				<div><a rel="nofollow" target="_blank" href="//myjd.jd.com/repair/repairs.action">返修/退换货</a></div>
				<div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-50.html">取消订单</a></div>
			</dd>
		</dl>
		<dl class="fore5">
			<dt>特色服务</dt>
			<dd>		
				<div><a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a></div>
				<div><a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a></div>
				<div><a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a></div>
				<div><a rel="nofollow" target="_blank" href="//o.jd.com/market/index.action">京东E卡</a></div>				
				<div><a rel="nofollow" target="_blank" href="//mobile.jd.com/">京东通信</a></div>
				<div><a rel="nofollow" target="_blank" href="//s.jd.com/">京东JD+</a></div>
			</dd>
		</dl>
		<span class="clr"></span>
	</div>
</div> -->
	<!-- <script type="text/javascript"
		src="//cart.jd.com/js/config.js?v=201611290900"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/js/cart-recommend.js?v=201702131415"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/js/ceilinglamp.js?v=201408281121"></script>
	<script type="text/javascript"
		src="//static.360buyimg.com/im/js/cart/im_cart_v1.js?v=201509101804"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/cart/widget/??no-login/no-login.js"></script>
	<script type="text/javascript">
    seajs.use("/js/cart.new.js?v=201702061500");
</script> -->
	<!--统计代码 -->
	<!-- <script type="text/javascript">
    (function() { 
        var ja = document.createElement('script'); 
        ja.type = 'text/javascript'; 
        ja.async = true;
        ja.src = '//wl.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0]; 
        s.parentNode.insertBefore(ja, s); 
    })();
</script> -->

	<!-- 公共头尾js end -->
	<OBJECT ID="ddplugin-msie"
		CLASSID="CLSID:B35D742C-5983-40C1-A8C0-A7DBFA2EF05E" width="0"
		height="0"></OBJECT>
	<embed id="ddplugin" type="application/dd-plugin" width="0" height="0">
</body>
</html>