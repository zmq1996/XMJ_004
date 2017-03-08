<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>订单结算页 -晓米佳商城</title>
<!--结算页面样式-->
<link rel="stylesheet" href="../css/bankList.css" charset="utf-8">
<link type="text/css" rel="stylesheet" href="../css/backpanel2.css"
	source="widget" />
<link type="text/css" rel="stylesheet" href="../css/service2.css" />
<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../js/payment.js"></script>
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
<body id="mainframe">
	<div id="shortcut-2014">
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
	<div id="o-header-2013">
		<div id="header-2013" style="display: none;"></div>
	</div>
	<!--shortcut end-->


	<div class="w w1 header clearfix">
		<div id="logo">
			<a href="http://www.jd.com/" class="link1" target="_blank"><img
				src="//misc.360buyimg.com/lib/img/e/logo-201305.png" alt="购物车结算"></a>
			<a href="#none" class="link2"><b></b>"结算页"</a>
		</div>
		<div class="stepflex" id="#sflex03">
			<dl class="first done">
				<dt class="s-num">1</dt>
				<dd class="s-text">
					1.我的购物车<s></s><b></b>
				</dd>
			</dl>
			<dl class="normal doing">
				<dt class="s-num">2</dt>
				<dd class="s-text">
					2.填写核对订单信息<s></s><b></b>
				</dd>
			</dl>
			<dl class="normal last">
				<dt class="s-num">3</dt>
				<dd class="s-text">
					3.成功提交订单<s></s><b></b>
				</dd>
			</dl>
		</div>
	</div>

	<!-- /header -->
	<!--/ /widget/header/header.tpl -->

	<div id="consignee_back" name="consignee_back" style="display: none"></div>
	<div id="consignee_back_action" name="consignee_back_action"
		style="display: none"></div>
	<div id="part-invoice_back" name="part-invoice_back"
		style="display: none"></div>
	<div id="part-invoice_back_action" name="part-invoice_back_action"
		style="display: none"></div>
	<div id="payment-ship_back_action" name="payment-ship_back_action"
		style="display: none"></div>
	<div id="payment-ship_back" name="payment-ship_back"
		style="display: none"></div>
	<!-- main -->
	<div id="container">
		<div id="content" class="w">
			<!-- <div class="m"> -->
			<div class="checkout-tit">
				<span class="tit-txt">填写并核对订单信息</span>
			</div>
			<!--<div class="mc">-->
			<div class="checkout-steps">
				<!--  /widget/consignee-step/consignee-step.tpl -->
				<div class="step-tit">
					<h3>收货人信息</h3>
					<div class="extra-r">
						<a href="#none" class="ftx-05" onclick="use_NewConsignee()"
							clstag="pageclick|keycount|trade_201602181|3">新增收货地址</a> <input
							type="hidden" id="del_consignee_type" value="0" />
					</div>
				</div>
				<div class="step-cont">
					<div id="consignee-addr" class="consignee-content">
						<div class="consignee-scrollbar">
							<div class="ui-scrollbar-main">
								<div class="consignee-scroll">
									<div class="consignee-cont" id="consignee1"
										style="height: 42px;">
										<ul id="consignee-list">
											<!---->
											<!--
<li class="ui-switchable-panel" id="consignee_index_137969880" selected="selected" style="cursor: pointer;">
	<div class="consignee-item item-selected" consigneeId="137969880" id="consignee_index_div_137969880">
		<b></b>
		<div class="user-name">
			<div class="fl"><strong limit="4">郑米钦</strong>&nbsp;&nbsp;收</div>
			<div class="fr">155****1252</div>
			<div class="clr"></div>
		</div>
		<div class="mt10" limit="15">湖南 衡阳市 珠晖区 酃湖乡</div>
		<div class="adr-m" limit="30">湖南工学院计算机科学系</div>
		<div class="op-btns ar">
							<span class='mr10'>默认地址</span>
									<a href="#none" class="ftx-05 mr10 edit-consignee" fid="137969880">编辑</a>
			<a href="#none" class="ftx-05 del-consignee hide" fid="137969880">删除</a>
		</div>
	</div>
</li>
-->
											<!-- <li class="ui-switchable-panel ui-switchable-panel-selected"
												style="display: list-item;" id="consignee_index_137969880"
												selected="selected">
												<div class="consignee-item item-selected"
													consigneeid="137969880" provinceid="18" cityid="1501"
													id="consignee_index_div_137969880" consigneetype="0"
													clstag="pageclick|keycount|trade_201602181|1">
													<span limit="8" title="郑米钦">郑米钦</span><b></b>
												</div>
												<div class="addr-detail">
													yanwenqi 全球购添加idcard 不是国际购的要不要显示？
													<span class="addr-name" limit="6" title="郑米钦">郑米钦</span> <span
														class="addr-info" limit="45"
														title="湖南 衡阳市 珠晖区 酃湖乡湖南工学院计算机科学系">湖南 衡阳市 珠晖区
														酃湖乡湖南工学院计算机科学系</span> <span class="addr-tel">155****1252</span> <span
														class="addr-default">默认地址</span>
												</div>
												<div class="op-btns" consigneeid="137969880">
													<span></span> <a href="#none" class="ftx-05 edit-consignee"
														fid="137969880"
														clstag="pageclick|keycount|trade_201602181|6">编辑</a> <a
														href="#none" class="ftx-05 del-consignee hide"
														fid="137969880"
														clstag="pageclick|keycount|trade_201602181|5">删除</a>
												</div>
											</li> -->
											<!---->
											<input />
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="addr-switch switch-on" id="consigneeItemAllClick"
						onclick="show_ConsigneeAll()"
						clstag="pageclick|keycount|trade_201602181|2">
						<span>更多地址</span><b></b>
					</div>
					<div class="addr-switch switch-off hide"
						id="consigneeItemHideClick" onclick="hide_ConsigneeAll()">
						<span>收起地址</span><b></b>
					</div>

					<input type="hidden" id="consigneeList_giftSenderConsigneeMobile"
						value=""> <input type="hidden"
						id="consigneeList_giftSenderConsigneeName" value="">
				</div>
				<!--/ /widget/consignee-step/consignee-step.tpl -->
				<div class="hr"></div>
				<!--/ /widget/shopping-list/shopping-list.tpl -->
				<div id="shipAndSkuInfo">
					<div id="payShipAndSkuInfo">
						<div class="step-tit">
							<h3>支付方式</h3>
						</div>
						<div class="step-cont">
							<div class="payment-list" id="">
								<div class="list-cont">
									<ul id="payment-list">
										<input type="hidden" id="instalmentPlan" value="false" />


										<li style="cursor: pointer;">
											<div
												class="payment-item online-payment payment-item-disabled"
												for="pay-method-1" payname="货到付款" payid="1" >
												<b></b> 货到付款 <span id="codtips" class="qmark-icon qmark-tip"
													data-tips="商品属性或所在地区不支持货到付款 <a href='//help.jd.com/user/issue/103-983.html' target='_blank 'class='ftx-05'>查看服务及配送范围</a>"></span>
											</div>
										</li>
										<li style="cursor: pointer;" onclick="save_Pay(4,2,1);">
											<div class=" payment-item  online-payment "
												for="pay-method-4" payname="微信支付" payid="4"
												onlinePayType="2">
												<b></b> 微信支付 <span class="qmark-icon qmark-tip"
													data-tips="提交订单之后，使用微信扫描二维码完成支付"></span>
											</div>
										</li>
										<li style="cursor: pointer;" onclick=" save_Pay(4,0,1);">
											<div class=" payment-item item-selected online-payment "
												for="pay-method-4" payname="在线支付" payid="4"
												onlinePayType="0">
												<b></b> 在线支付 <span id="cod" class="qmark-icon qmark-tip"
													data-tips="即时到账，支持绝大数银行借记卡及部分银行信用卡 
				 <a href='//help.jd.com/user/issue/223-562.html' target='_blank' class='ftx-05'> 查看银行及限额</a>"></span>
											</div>
										</li>
										<li id="payment-less" class="hide">
											<div class="payment-item-on">
												<span>收起</span><b></b>
											</div>
										</li>
										<li id="payment-more">
											<div class="payment-item-off">
												<span>更多</span><b></b>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="hr"></div>
						<!--/ /widget/payment-step/payment-step.tpl -->
						<div class="step-tit">
							<h3>送货清单</h3>
							<div class="extra-r">
								<a class="price-desc" id="price-desc" href="#none"
									data-tips="因可能存在系统缓存、页面更新导致价格变动异常等不确定性情况出现，商品售价以本结算页商品价格为准；如有疑问，请您立即联系销售商咨询。">
									<i></i>&nbsp;价格说明
								</a> <a href="//cart.jd.com" id="cartRetureUrl"
									class="return-edit ftx-05"
									clstag="pageclick|keycount|trade_201602181|15">返回修改购物车</a>
							</div>
						</div>
						<div class="step-cont" id="skuPayAndShipment-cont">
							<!--添加商品清单  zhuqingjie -->
							<div class="shopping-lists" id="shopping-lists">
								<!--定义大商品清单LIST-->
								<div class="shopping-list ABTest">
									<div class="goods-list">
										<!--购物车单品商品-->
										<!--一般套装商品-->
										<!--满返套装商品-->
										<!--满赠套装商品-->
										<!--配送方式-->
										<div class="goods-tit">
											<!-- <h4 class="vendor_name_h" id="636237">商家：</h4> -->
										</div>

										<!--单品开始-->
										<div class="goods-items"></div>
										<!--单品结束-->
										<!--一般套装开始-->
										<!--一般套装结束-->
										<!--满返套装开始-->
										<div class="goods-items 4025315760">
											<div class="goods-suit goods-last" id="gouwuche">
												<!--跨店铺满减  开始-->
												<!-- <div class="goods-item goods-item-extra"
													goods-id="11151047032" sx-type="0">
													<div class="p-img">
														<a target="_blank"
															href="http://item.jd.com/11151047032.html"><img
															src="//img14.360buyimg.com/N4/jfs/t4078/132/1596283745/189841/7018bff5/588077fdN1ffd20ca.jpg"
															alt=""></a>
													</div>
													<div class="goods-msg">
														<div class="goods-msg-gel">
															<div class="p-name">
																京东精选 begin
																京东精选 end
																<a href="http://item.jd.com/11151047032.html"
																	target="_blank"> 书兰 卫衣男 2017春季新款韩版修身潮拼接连帽卡通绣花套头男士外套
																	绿色 M </a>
															</div>
															<div class="p-price">
																增加预售金额显示 begin   预售分阶段支付类型（1：一阶梯全款支付；2：一阶梯定金支付(全款或定金可选)；3：三阶梯(仅定金)；4：三阶梯(全款或定金可选)；5：一阶梯仅定金支付）

																<strong class="jd-price"> ￥ 148.00 </strong>
																增加预售金额显示 end
																<span class="p-num"> x1 </span> <span id="pre-state"
																	class="p-state" skuId="11151047032">有货</span>

															</div>
														</div>
													</div>
													<div>
														<i class="p-icon p-icon-w sevenicon"></i><span
															class="ftx-04 withouthk seven">7天无理由退货</span>
													</div>

													<div class="clr"></div>
													京券和东券显示

													延保显示
													京东礼品购礼品盒展示
												</div> -->
												
											</div>
										</div>
										<!--满返套装结束-->
										<!--满赠套装开始-->
										<!--满赠套装结束-->
										<!-- 买家版运费险 -->
										<div class="hide service-items ml20 mr20">
											<div class="hide service-item"
												id="vender_freight_insurance_636237">
												<div class="hr"></div>
												<span class="service-desc">退换无忧</span> <strong
													class="service-price"></strong>
											</div>
										</div>
									</div>
									<!--goods-list 结束-->
									<div class="dis-modes">
										<!--购物车单品商品-->
										<!--一般套装商品-->
										<!--满返套装商品-->
										<!--满赠套装商品-->
										<!--以下为京东配送方式-->
										<!--配送方式-->
										<!--配送方式-->
										<!--配送方式-->

										<!-- 实物商品搭售虚拟商品 -->
										<!--以下为京东大家电配送-->

										<!--以下为京东第三方配送-->
										<!--以下为第三方配送-->
										<!--如果是SOP快递或者是京东中小件商品，但是不支持配送，则采用快递运输-->
										<div class="mode-item mode-tab">
											<h4>配送方式</h4>
											<div class="mode-tab-nav">
												<ul>
													<li class="mode-tab-item curr"
														id="sop_other_shipment_item_636237"
														onclick="doSwithTabSop('636237','sopOther')"><span
														class="m-txt">快递运输<i class="qmark-icon qmark-tip"
															data-tips="由商家选择合作快递为您配送"></i></span> <b></b>
													<li class="mode-tab-item hide "
														id="pick_shipment_item_636237"
														onclick="doSwithTab('picksite_sop')"
														clstag="pageclick|keycount|trade_201602181|12"><span
														class="m-txt">上门自提<i class="qmark-icon qmark-tip"
															data-tips="自提时付款，支持现金、POS刷卡、支票支付<a href='http://help.jd.com/user/issue/100-181.html' target='_blank' class='ftx-05'>查看自提流程</a>"></i></span><b></b>
													</li>
												</ul>
											</div>
											<div class="mode-tab-con hide" id="selfpick_shipment_636237">
												<ul class="mode-list">
													<li>
														<div class="fore1" id="selfpick_date_636237">
															<span class="ftx-03">自提时间1：</span>
														</div>
														<div class="fore2" onclick="doEditPickSiteDate('636237')">
															<a href="#none" class="ftx-05"></a>
														</div>
													</li>
												</ul>
											</div>
											<div class="mode-tab-con" id="sop_shipment_636237">
												<ul class="mode-list">
													<li>
														<div class="fore1" id="sop_shipment_date_636237">
															<span class="mode-label ftx-03">配送时间：</span>
															<div class="mode-infor">工作日、双休日与节假日均可送货</div>
														</div>
														<div class="fore2 hide" id="sop_shipment_botton_636237"
															onclick="doEditSopShipment('636237')">
															<a href="#none" class="ftx-05">修改</a>
														</div>
													</li>
													<li class="buyer_insurance" style="display: none;"
														id="636237">
														<div class="foreAll">
															<span class="mode-label ftx-03">退换无忧：</span>
															<div class="mode-infor J-mode-infor-tips">
																<label> <input id="vender_636237"
																	class="fl buyer_freight_insurance" type="checkbox"
																	onclick="selectBuyerFreightInsurance(this, 636237)" />
																	<span id="636237"
																	class="fl mode-infor-con buyer_insurance"></span> <em
																	class="fr"></em> <span
																	class="mode-infor-tips mode-infor-tips-sec"
																	style="display: none;"></span>
																</label>
															</div>
														</div>
													</li>
												</ul>
											</div>
											<div class="mode-tab-con hide">
												<div class="mode-promise">
													<span id="promise-ico"><a href="javascript:void(0)"
														class="pop_FreightInsurance" title=""> </a></span>
													<div class="promise-txt yfx_div_remark" id="636237">
														为您购买了运费险，最高赔付20.00元/单</div>
												</div>
											</div>
										</div>
									</div>
									<!--dis-modes 结束-->
									<div class="clr"></div>
									<!--
			<div class="freight-cont">			   
				   					       <strong class="ftx-01" style="color:#666" freightByVenderId="636237"  popJdShipment="false">免运费</strong>
				   			  </div>
	      -->
								</div>
								<!--shopping-list 结束-->
								<form id="skuAndShipment_submit_form" method='post' action=''>
									<input type="hidden" id="addr_id"
										name="saveParam.paymentId" />
									<!--支付方式id-->
									<input type="hidden" id="saveParam_otype"
										name="saveParam.onlinePayType" value="3" />
									<!-- 京东配送 -->
									<input type="hidden" id="saveParam_jdShipmentType"
										name="saveParam.jdShipmentType" value="" />
									<!--京东配送-->
									<input type="hidden" id="saveParam_jdShipTime"
										name="saveParam.jdShipTime" value="" />
									<!-- 区分工作日，311，411-->
									<input type="hidden" id="saveParam_jdPayWayId"
										name="saveParam.jdPayWayId" value="" />
									<!--货到付款方式-->
									<input type="hidden" id="saveParam_jdCheckType"
										name="saveParam.jdCheckType" value="2" />
									
									<!--sop第三方配送-->
									<!-- 自提方式 -->
									<input type="hidden" id="saveParam_pickShipmentType"
										name="saveParam.pickShipmentType" value="" />
									<!--自提方式-->
									<input type="hidden" id="saveParam_pickSiteId"
										name="saveParam.pickSiteId" value="" />
									<!--自提点-->
									<input type="hidden" id="saveParam_pickDate"
										name="saveParam.pickDate" value="" />
									<!--自提时间-->
									<input type="hidden" id="saveParam_pickSiteNum"
										name="saveParam.pickSiteNum" value="5" />
									<!--默认5个-->
									<input type="hidden" id="saveParam_pickRegionId"
										name="saveParam.pickRegionId" />
									<!--搜索区域-->
    								</form>
								<br> <br>
								<div id="trade-nostock-recommendation-render"
									style="display: none"></div>
								<!--隐藏的无货代下单div-->
								<!-- <script>
									/**
									 * 退换无忧浮层
									 */
									$(".J-mode-infor-tips")
											.hover(
													function() {
														$(this)
																.find(
																		".mode-infor-tips")
																.show();
													},
													function() {
														$(this)
																.find(
																		".mode-infor-tips")
																.hide();
													});
								</script> -->
								<div class="clr"></div>
							</div>
							<!--shopping-lists 结束-->
						</div>
					</div>
				</div>
				<!--添加商品清单结束-->
				<!--添加备注信息-->
				<div class="order-remarks hide" id="orderRemarkItem"></div>
				<!--  /widget/invoice-step/invoice-step.tpl -->
				<div class="hr"></div>
				<!-- 发票信息 -->
				<div class="step-tit" id="invoice-step">
					<h3>发票信息</h3>
				</div>
				<div class="step-content">
					<div id="part-inv" class="invoice-cont">
						不开发票 <a href="#none" id="invoiceEdit" class="ftx-05 invoice-edit"
							onclick="edit_Invoice()"
							clstag="pageclick|keycount|trade_201602181|16">修改</a>
					</div>
				</div>
				<div class="clr"></div>
				<!--/ /widget/invoice-step/invoice-step.tpl -->
				<div class="hr"></div>
				<!--  /widget/order-coupon/order-coupon.tpl -->
				<div class="step-tit step-toggle-off" id="virtualdiv"
					onclick="vertualHidOrShow()"
					clstag="pageclick|keycount|xunizichan__2016031015|1">
					<h3>使用优惠/抵用</h3>
					<i></i>
				</div>
				<div class="step-cont order-virtual" style="display: none;">
					<div class="order-virtual-tabs">
						<ul>
							<li class="ui-switchable-item" id="couponitem"
								onclick="query_coupons_vertual()"
								clstag="pageclick|keycount|xunizichan__2016031015|2"><span>优惠券</span>
								<i style="display: none"></i></li>
							<li class="ui-switchable-item" id="giftitem"
								onclick="query_giftCards_vertual()"
								clstag="pageclick|keycount|xunizichan__2016031015|3"><span>礼品卡</span><i
								style="display: none"></i></li>
							<li class="ui-switchable-item" id="jdbeanitem"
								onclick="showOrHideJdBean()"
								clstag="pageclick|keycount|xunizichan__2016031015|4"><span>京豆</span><i
								style="display: none"></i></li>
							<li class="ui-switchable-item" id="balanceitem"
								clstag="pageclick|keycount|xunizichan__2016031015|5"><span>余额</span><i
								style="display: none"></i></li>
						</ul>
					</div>
					<div class="ui-switchable-panel-main" id>
						<div class="ftx01 virtual-warning ml20 hide" id="safeBalancePart">
							<span> 为保障您的账户资金安全，请先 <a target="_blank"
								href="http://safe.jd.com/user/paymentpassword/safetyCenter.action"
								class="ftx-05"> [开启支付密码] </a>
							</span>
						</div>
						<div class="hr hide"></div>
						<!-- coupon -->
						<div class="coupon-main ui-switchable-panel">
							<div class="coupon-optimal ml20" id="bestCouponDiv">
								<label clstag="pageclick|keycount|xunizichan__2016031015|13">
									<input id="bestCouponCheck" type="checkbox"
									onclick="getBastCouponList(this)" /> <span id="bestCoupon">
										使用最优组合 </span>
								</label>
							</div>
							<div class="hr" id="couponsplit"></div>
							<div class="coupon-cont">
								<div class="coupon-tab ml20">
									<ul>
										<li class="coupon-tab-item curr" id="skucoupontit"
											clstag="pageclick|keycount|xunizichan__2016031015|6">商品优惠券</li>
										<li class="coupon-tab-item" id="freightcoupontit"
											clstag="pageclick|keycount|xunizichan__2016031015|7">运费券</li>
										<li class="coupon-tab-item" id="changecoupontit"
											clstag="pageclick|keycount|xunizichan__2016031015|8">优惠码兑换</li>
									</ul>
								</div>
								<div class="coupon-tab-panel-main ml20" id="coupons"></div>
							</div>
						</div>
						<!-- giftcard -->
						<div class="giftcard-main ui-switchable-panel" id="gift"></div>
						<!-- jdbean-->
						<div class="jdbean-main ui-switchable-panel">
							<div class="beans-2015 ml20" id="jdBeans-new"></div>
						</div>
						<!-- balance -->
						<div class="balance-main ui-switchable-panel">
							<div class="form v-balance ml20" id="jdBalance"
								clstag="pageclick|keycount|xunizichan__2016031015|12">
								<input id="selectOrderBalance" type="checkbox"
									class="jdcheckbox" value="" onclick="useOrCancelBalance(this)">
								<label id="canUsedBalanceId" for="selectOrderBalance">
									&nbsp;使用余额（账户当前余额：<span class="ftx-01">0.00</span>元）
								</label>
								<div class="ftx01 safeLpkPart hide" id="safeBalancePart">
									为保障您的账户资金安全，余额暂不可用，请先 <a target="_blank"
										href="//safe.jd.com/user/paymentpassword/safetyCenter.action">[开启支付密码]</a>
								</div>

							</div>
						</div>
						<div class="virtual-usedcont">
							<span class="virtual-usedcont-price">金额抵用<em id="total">￥</em></span>
							<ul>
								<li id="couponTotalShow" style="display: none;">使用优惠券<em></em>张，优惠<em></em>元
								</li>
								<li id="freeFreightShow" style="display: none;">| 使用运费券<em></em>张，抵用运费<em></em>元
								</li>
								<li id="giftCardShow" style="display: none;">| 使用京东E卡<em></em>张，抵用<em></em>元
								</li>
								<li id="jdBeanShow" style="display: none;">| 使用京豆，抵用<em></em>元
								<li>
								<li id="balanceShow" style="display: none;">| 使用余额，抵用<em></em>元
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!--/  /widget/order-coupon/order-coupon.tpl -->
			</div>
			<!-- </div> -->
			<!-- </div> -->
			<!--  /widget/order-summary/order-summary.tpl -->
			<div class="order-summary">
				<!--  预售 计算支付展现方式 begin -->
				<div class="statistic fr">
					<div class="list">
						<span><em class="ftx-01" id="wareNumId">1</em> 件商品，总商品金额：</span> <em
							class="price" id="warePriceId" v="148.00">￥148.00</em>
					</div>
					<div class="list">
						<span>返现：</span> <em class="price" id="cachBackId" v="0.00">
							-￥0.00</em>
					</div>
					<div class="list">
						<span>运费：</span> <em class="price" id="freightPriceId"> ￥0.00</em>
					</div>
					<div class="list" style="display: block;">
						<span>服务费：</span> <em class="price" id="serviceFeeId">￥0.00</em>
					</div>
					<div class="list" style="display: block;">
						<span>退换无忧：</span> <em class="price" id="buyerFreightInsuranceId">￥0.00</em>
					</div>
					<div class="list" id="showCouponPrice" style="display: none;">
						<input id="couponPriceNum" type="hidden" value="0" /> <input
							id="couponPricehidden" type="hidden" value="0.00" /> <span>商品优惠：</span><em
							class="price" id='couponPriceId'>-￥0.00</em>
					</div>
					<div class="list" id="showFreeFreight" style="display: none;">
						<input id="freeFreightPriceNum" type="hidden" value="0" /> <input
							id="freeFreightPricehidden" type="hidden" value="0.00" /> <span>运费优惠：</span><em
							class="price" id="freeFreightPriceId"> -￥0.00</em>
					</div>
					<div class="list" id="showGiftCardPrice" style="display: none;">
						<input id="giftCardPricehidden" type="hidden" value="0.00" /> <input
							id="giftCardPriceNum" type="hidden" value="0" /> <span>
							礼品卡： </span><em class="price" id='giftCardPriceId'>-￥ 0.00</em>
					</div>
					<div class="list" id="showUsedJdBean" style="display: none;">
						<input type="hidden" id="jdBeanexChange" value="0"> <span>京豆：</span><em
							class="price" id='usedJdBeanId'>-￥0</em>
					</div>
					<div class="list" id="showUsedOrderBalance" style="display: none;">
						<input type="hidden" id="useBalanceShowDiscount" value="0.00">
						<span>余额：</span><em class="price" id='usedBalanceId'>-￥0.00</em>
					</div>
					<div class="list" id="showPeriodFee" style="display: none;">
						<span>分期手续费(由分期银行收取)：</span><em class="price" id="periodFee">￥0.00</em>
					</div>
				</div>
				<div class="clr"></div>
			</div>
			<!--/ /widget/order-summary/order-summary.tpl -->
			<!-- 运费弹窗显示 -->
			<div id="tooltip-box06" class="hide">
				<div class="summary-freight-box-new">
					<div class="sfb-tit">
						<span>店铺运费明细</span> <span class="ml5 ftx-03" id="frightDetail"></span>
					</div>
					<div class="sfb-con">
						<!--yanwenqi 只包含延保商品的商家不显示 -->
						<div class="sfb-item">
							<div class="sfb-item-tit">
								<span class="vendor_name_freight" id="636237"></span>
							</div>
							<!-- begin 运费明细块 -->
							<div class="sfb-item-info">
								<span class="hide">基础运费：<b class="ftx-01 base-freight"></b></span>
								<span>免运费<b class="ftx-01 free-freight"
									freightByVenderId="636237" popJdShipment="false"></b></span>
							</div>
							<div class="sfb-item-goods">
								<div class="ui-switchable-body">
									<div class="ui-switchable-panel-main">
										<div class="ui-switchable-panel">
											<ul class="sfb-goods-list">
												<li id="11151047032" class="sfb-goods-item"><a
													href="#none"
													title="书兰 卫衣男 2017春季新款韩版修身潮拼接连帽卡通绣花套头男士外套 绿色 M"><img
														height="50" width="50"
														src="//img12.360buyimg.com/n3/jfs/t4078/132/1596283745/189841/7018bff5/588077fdN1ffd20ca.jpg"
														alt="" /></a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="sfb-ui-switchable-page">
									<a href="javascript:void(0)" class="sfb-prev">&lt;</a> <a
										href="javascript:void(0)" class="sfb-next">&gt;</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 运费弹窗结束-->
			<!--  /widget/checkout-floatbar/checkout-floatbar.tpl -->
			<div class="trade-foot">
				<div class="trade-foot-detail-com">
					<div class="fc-price-info">
						<span class="price-tit">应付总额：</span> <span class="price-num"
							id="sumPayPriceId">￥148.00</span>
					</div>
					<div class="fc-baitiao-info" style="display: none;">
						<span>白条支付：<em>30天免息</em>（不使用优惠）<i class="bt-edit-icon"
							onclick="javascript:btDetail();"
							clstag="pageclick|keycount|PaymentLead__2016030411|5"></i></span>
					</div>
					<div class="giftbuy-info">
						<label class="noShowMoney hide" id="giftBuyHidePriceDiv">
							<input type="checkbox" id="giftBuyHidePrice" checked>包装内不显示礼品价格
						</label>
					</div>
					<div class="fc-consignee-info">
						<span class="mr20" id="sendAddr">寄送至： </span> <span
							id="sendMobile">收货人： </span>
					</div>
				</div>
				<!-- 支付密码 -->
				<div class="pay-pwd mt10 hide" id="paypasswordPanel">
					<div id="payPassword_container" class="alieditContainer clearfix"
						data-busy="0">
						<label for="i_payPassword" class="i-block">支付密码：</label>
						<div class="i-block">
							<div class="i-block six-password">
								<input class="i-text sixDigitPassword" id="txt_paypassword"
									type="password" autocomplete="off" required="required" value=""
									name="payPassword_rsainput" data-role="sixDigitPassword"
									tabindex="" maxlength="6" minlength="6" aria-required="true"
									AUTOCOMPLETE="off" onchange='clearError()'>
								<div tabindex="0" class="sixDigitPassword-box">
									<i><b></b></i> <i><b></b></i> <i><b></b></i> <i><b></b></i> <i><b></b></i>
									<i><b></b></i> <span id="cardwrap" data-role="cardwrap"></span>
								</div>
							</div>
							<span class="forgot-password"> <a target="_blank"
								href="//safe.jd.com/user/paymentpassword/getBackPassword.action">
									忘记密码？ </a>
							</span>
						</div>
					</div>
					<div id="no-pwd-error" class="pay-pwd-error hide">
						<label class="error-msg" for="">请输入6位数字密码</label>
					</div>
					<div id="pwd-error" class="pay-pwd-error hide"
						style="margin-right: 16px;">
						<label class="error-msg" for=""></label>
					</div>
					<div class="payment-bt-tips hide">
						<span class="bt-tips-cont">结算金额变动，请重新选择白条分期以及白条优惠</span><i
							class="bt-tips-close">×</i>
					</div>
				</div>
				<!-- 预售 -->

				<!---->
				<div class="pay-pwd" id="paypasswordPanel" style="display: none">
					<div class="pay-pwd-cont">
						<span class="label"> 支付密码 </span> <input type="password"
							class="itxt" id="txt_paypassword"> <span
							class="forgot-password"> <a target="_blank"
							href="http://safe.jd.com/user/paymentpassword/getBackPassword.action">
								忘记支付密码？ </a>
						</span>
					</div>
				</div>
				<!-- 支付密码 -->

				<!--港澳售项目 -->
				<div class="hkmtbuy-con hide" id="hkmtbuy-area">
					<div class="hkmtbuy-chk">
						<label for=""><input type="checkbox" checked=""
							id="hkmtbuy" name="">已阅读并同意</label><a
							href="http://help.jd.com/user/issue/266-1691.html" class="ftx05"
							target="_blank">《海外直邮物流服务协议》</a>
					</div>
				</div>

				<div id="checkout-floatbar" class="group">
					<div class="ui-ceilinglamp checkout-buttons">
						<div class="sticky-placeholder hide" style="display: none;">
						</div>
						<div class="sticky-wrap">
							<div class="inner">
								<input type="button" class="checkout-submit" id="order-submit"
									value="提交订单" onclick="submit_Order()" />
									
								<span id="checkCodeDiv"></span>

								<div class="checkout-submit-tip" id="changeAreaAndPrice"
									style="display: none;">由于价格可能发生变化，请核对后再提交订单</div>
								<!--div style="display:none" id="factoryShipCodShowDivBottom" class="dispatching">
                              部分商品货到付款方式：先由京东配送“提货单”并收款，然后厂商发货。
                            </div-->
							</div>
							<span id="submit_message" style="display: none"
								class="submit-error"></span>

							<div class="submit-check-info" id="submit_check_info_message"
								style="display: none"></div>
						</div>
					</div>
				</div>

			</div>
			<!--/ /widget/checkout-floatbar/checkout-floatbar.tpl -->

			<!--  /widget/backpanel/backpanel.tpl -->
			<div id="backpanel">
				<div id="backpanel-inner" class="hide switchOn">
					<div class="bp-item bp-item-survey">
						<a
							href="http://surveys.jd.com/index.php?r=survey/index/sid/416587/lang/zh-Hans"
							class="survey" target="_blank">我要反馈</a>
					</div>
					<div class="bp-item bp-item-backtop" data-top="0">
						<a href="#none" class="backtop" target="_self">返回顶部</a>
					</div>
				</div>
			</div>
			<!--/ /widget/backpanel/backpanel.tpl -->

		</div>

	</div>


	<!-- /main -->

	<!--  /widget/footer/footer.tpl -->
	<!-- footer -->
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

	<!-- <script type="text/javascript" rel="stylesheet" src="//misc.360buyimg.com/user/purchase/2.0.0/widget/??/checkout-floatbar/checkout-floatbar.js,backpanel/backpanel.js" source="widget"></script>
<script type="text/javascript" rel="stylesheet" src="//misc.360buyimg.com/user/purchase/2.0.0/js/paypwd.js"></script> 
<script>
    $("#consignee_id").val('0');
    $("#hideAreaIds").val('0-0-0-0');
</script>-->
	<!-- 不支持自提商品列表隐藏域  -->
	<script id="noSupSkus_hideDiv" type="text/temp">&nbsp;</script>
	<!-- 港澳售项目 -->

	<div class="v">
		<div id="footer-2013">
			<div class="links">
				<a rel="nofollow" target="_blank"
					href="//www.jd.com/intro/about.aspx"> 关于我们 </a> | <a rel="nofollow"
					target="_blank" href="//www.jd.com/contact/"> 联系我们 </a> | <a
					rel="nofollow" target="_blank" href="//zhaopin.jd.com/"> 人才招聘 </a>
				| <a rel="nofollow" target="_blank"
					href="//www.jd.com/contact/joinin.aspx"> 商家入驻 </a> | <a
					rel="nofollow" target="_blank"
					href="//www.jd.com/intro/service.aspx"> 广告服务 </a> |
				<!--  <a rel="nofollow" target="_blank" href="//app.jd.com/">
                手机京东
            </a>
            | -->
				<a target="_blank" href="/links.vm/club.jd.com/links.aspx"> 友情链接
				</a> | <a target="_blank" href="//media.jd.com/"> 销售联盟 </a> |
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

</body>
</html>