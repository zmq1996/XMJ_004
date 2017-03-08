<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<title>晓米佳支付-请选择支付方式</title>
<link rel="icon" href="//sp.jd.com/payment/1.3.0/css/i/ico.ico"
	type="image/x-icon" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link rel="stylesheet" type="text/css" href="../css/zhifu.css">
<!-- <link rel="stylesheet" type="text/css" href="//sp.jd.com/payment/1.2.0/css/bankList.css">        <script type="text/javascript" src="//sp.jd.com/payment/1.3.0/js/lib/jquery-1.6.4-min.js"></script>
    <script type="text/javascript" src="/misc/js/lib/md5.js"></script> -->
<script>
    //js全局变量
    var globalVar={
    	/**默认选中白条*/
    	baiTiaoIsChecked:true,
    	fenQiIsChecked:false,
    	//默认分期数为1,1标识默认不分期
    	defaultFenqiPlan:"1",
    	
    	/**小金库*/
    	xjkIsChecked:false,
    	payOtherIsChecked:false,
    	yuEIsChecked:false,
    	jingBeanIsChecked:false,
    	gangbengIsChecked:false,
    	bankCardIsChecked:true,
    	quickPayIsChecked:true,
    	canBeSubmit:true,//是否可提交
    	payPwd:{
    		isSearchPayPwd:false,//是否查询过开通支付密码服务
    		isOpenPayPwd:'0',//是否开通支付长密码框
            isOpenShortPwd:'',//是否开通支付端密码框
    		isValidPayPwd:false,//是否校验支付密码
			isHaveValidPayPwd:'',//结算页是否已经校验过支付密码
            validatedEncode:""//收银台已经校验过
    	},
    	//是否为白条沉睡用户,true为沉睡，false为正常用户
    	isBaiTiaoDeadUser:false,
    	//用户白条类型 userType 为1代表普通白条类型用户，3代表金采类型用户
    	userType:'1',

        quickBoundUserFlag:false,//快捷绑定用户
        quickBoundPayFlag:false,//快捷二次支付
//        eBankUserFlag:false,//仅网银老用户
        decryptPaysession:'5288cacb32da4757eff7ce2e274cf5ce940352dd5245d9579a94694b144057f569b056fca276401584a890514dc85f4f3f843e5725fd5f1d1006eb6049b56c3e2e1fcfae4cbff38e46bfe2a6695a5b95969ea29efbc44fc03a886515e50354cb25afbd112b6d72628283d5874d6ed01590632c8ce757cdd8c69250600256b5f37fb767659b65413c867d584b3d418007bb4fc289b429ac7ed9dd17bc3374fbd55d91017705345b198b4fb1938a4188ab6690cdd2e99a832fe61a90e619b8980a7da57d1dff3e1f23a99e8ebfcaeb705b2c5f97a755d45dd3c73b3648f9050b115afb09b527b469ae214a48c05f0b9af146e581df72835bdb715b6c36e1a8872edd34d6143600ca9114afde44b2d4a11e03a8c9728de1be8cc2ef82c004fa9fe957c2f94e26c756d918044c16f14179f978e78ebba15228fb135d5c3fcdd2af3db684b5074f050fafdd792955157877e55b6f0e286e60ae5284569040ea6bbeab24c5ceb0d673c1f6dafaf20801ff499b2f66537faf233df4ef0c4d924575e788f427613794b37c2f99c4539b976c7155644449723f64c660eeb4d997b89f4fb44821857171579a339f4fe4d036a27dd4f498018509774a11b7110f8df367ba4ee70915000ab0cb8d9c9bcf2d94a0d7030c320bb7942cdc5c6f467d334c728ae504aafa2e8d81db0c6783022b6974bdf545c2035ad08b1e5598e857bc023dfc1d8f04bb53c4a285df7358902d4f38d2a706d9c59dd1cf031c52c94af1d4d7e9cc5b93396aee66f0d592232804e1bfcf6930cf7e30603f8b07940c8dd8e5506a41b8cf4380e51a60b0941722779c471985121af9d117f6560a2c40ae71db8f16867c95cbf7073eae3a43babdd88e2b1d1b51945ec525e90b73cc8b647117789ebf1f277362da550b2f31a101bd7604b91d0afc53d40b560771e32b74e9c9c857421b1dfec07aada246ceed4522ea5e50ce8b60ab0717df63aec233ccf597d5055a766656d987c5a8cd2bd4e041bc3fa63443a7bbc4d6385e081f41e5e7eb88e6534d6b1e54189dea98b5d9c86c6b2c0549',
        //查白条分两步，当服务端查询失败时creditInfo.needAjaxReload返回1前台进行查询
        //当服务端查询白条成功时creditInfo.needAjaxReload返回0，则不需要进行查询
        ajaxReload:'0',
        contextPath:'',
        payXjkYingXiaoIsOpenState:'',
        isVaildCVV2:true,
        openCouponDialog:false,//没有打开过白条优惠券
		cshstate:true,
        baitiaoCouponListURL:'https://btrim.jd.com/coupon/userCoupons',
        isSignPay:false, //签约支付
		clickAddNewCard:false,
		useZhiFuManJian:false,
		//默认为商城订单,不是全球购业务
		globalPay:'false',
		xjkMarket:false, //是否选中过小金库营销
		jimiConfig:{
            openState:"true",
            jimiURL:"//jimi.jd.com/index.action?source=jdpayFinancing",
            complainURL:"//ur.jr.jd.com/survey/show?id=109&u=http://www.jd.com?orderId=49457805343",
			questionURL:"//cashier.jd.com/others/getJimiQuestionList.action?cashierId=jd_cashier",
		}
    }
	</script>
<script type="text/javascript"
	src="//sp.jd.com/payment/1.3.0/js/common.js"></script>

<script type="text/javascript">

    </script>
<script type="text/javascript"
	src="/misc/js/cashier/prefs_jd.js?verson=201611171"></script>


<script type="text/javascript"
	src="/misc/js_release/cashier.js?verson=201611171"></script>

<!--PSA监控埋点20160801-->
<script type='text/javascript'>
		var projectKey="UA-JR-JDCashier";//商城收银台
        var pageKey="common_pay";//普通支付页面
        if(globalVar.globalPay=="true"){//全球购收银台
            pageKey="global_Pay";
		}
        var _jaq = _jaq || [];
        _jaq.push(['_setAccount', projectKey]);
        _jaq.push(pageKey);
        (function() {
            var ja = document.createElement('script'); ja.type = 'text/javascript'; ja.async = true;
            ja.src ="//ag.jd.com/resource/psa-ag.js";
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ja, s);
        })();
    </script>
</head>
<body>
	<div class="shortcut">
		<div class="w">
			<ul class="s-right">
				<li id="loginbar" class="s-item fore1"></li>
				<li class="s-div">|</li>
				<li class="s-item fore2"><a class="op-i-ext"
					href="//order.jd.com/center/list.action">我的订单</a></li>
				<li class="s-div">|</li>
				<li class="s-item fore3"><a class="op-i-ext" target="_blank"
					href="//help.jd.com/user/issue/list-173-224.html">支付帮助</a></li>
				<li class="s-div">|</li>
				<li class="s-item fore4"><a class="op-i-ext" target="_blank"
					href="//survadmin.jd.com/index.php?r=survey/index/sid/757632/lang/zh-Hans">问题反馈</a>
				</li>
			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<div class="p-header">
		<div class="w">
			<div id="logo">
				<img width="170" height="28"
					src="//sp.jd.com/payment/1.3.0/css/i/logo.png" alt="收银台">
			</div>
		</div>
	</div>

	<!-- <form name="virtualPayForm" id="virtualPayForm" action="/combinationVirtualPay.action" method="post" style="display:none">
	
		<input type="checkbox" name="virtualPayType" id="virtualPayBlankNote" value="blank_note" >	<input type="hidden" name="" id="baiTiaoCanPay" value="" autocomplete="off" >	<input type="hidden" name="instalmentNum" id="fenQiPlanHidden" value="" autocomplete="off">	<input type="hidden" name="userType" id="userTypeHidden" value="1" autocomplete="off">	
	<input type="hidden" autocomplete="off" name="baiTiaoActivityCode" id="baiTiaoActivityCode"  value="">
	<input type="hidden" autocomplete="off" name="baiTiaoCouponCode" id="baiTiaoCouponCode" value="">
	<input type="hidden" autocomplete="off" name="baiTiaoCouponType" id="baiTiaoCouponType" value="">
	<input type="hidden" autocomplete="off" name="baiTiaoDiscountAmount" id="baiTiaoDiscountAmount" value="">
	<input type="hidden" autocomplete="off" name="baitiaoActivityType" id="baitiaoActivityType" value="">
	<input type="hidden" autocomplete="off" name="baitiaoPlans" id="baitiaoPlans" value="">
	<input type="hidden" autocomplete="off" name="baiTiaoCouponInfo" id="baiTiaoCouponInfo" value="">
	<input type="hidden" name="" id="baitiaoWillPay" value="" autocomplete="off" >
	<input type="hidden" name="requestInfo" id="decryptPaysession" autocomplete="off" value="5288cacb32da4757eff7ce2e274cf5ce940352dd5245d9579a94694b144057f569b056fca276401584a890514dc85f4f3f843e5725fd5f1d1006eb6049b56c3e2e1fcfae4cbff38e46bfe2a6695a5b95969ea29efbc44fc03a886515e50354cb25afbd112b6d72628283d5874d6ed01590632c8ce757cdd8c69250600256b5f37fb767659b65413c867d584b3d418007bb4fc289b429ac7ed9dd17bc3374fbd55d91017705345b198b4fb1938a4188ab6690cdd2e99a832fe61a90e619b8980a7da57d1dff3e1f23a99e8ebfcaeb705b2c5f97a755d45dd3c73b3648f9050b115afb09b527b469ae214a48c05f0b9af146e581df72835bdb715b6c36e1a8872edd34d6143600ca9114afde44b2d4a11e03a8c9728de1be8cc2ef82c004fa9fe957c2f94e26c756d918044c16f14179f978e78ebba15228fb135d5c3fcdd2af3db684b5074f050fafdd792955157877e55b6f0e286e60ae5284569040ea6bbeab24c5ceb0d673c1f6dafaf20801ff499b2f66537faf233df4ef0c4d924575e788f427613794b37c2f99c4539b976c7155644449723f64c660eeb4d997b89f4fb44821857171579a339f4fe4d036a27dd4f498018509774a11b7110f8df367ba4ee70915000ab0cb8d9c9bcf2d94a0d7030c320bb7942cdc5c6f467d334c728ae504aafa2e8d81db0c6783022b6974bdf545c2035ad08b1e5598e857bc023dfc1d8f04bb53c4a285df7358902d4f38d2a706d9c59dd1cf031c52c94af1d4d7e9cc5b93396aee66f0d592232804e1bfcf6930cf7e30603f8b07940c8dd8e5506a41b8cf4380e51a60b0941722779c471985121af9d117f6560a2c40ae71db8f16867c95cbf7073eae3a43babdd88e2b1d1b51945ec525e90b73cc8b647117789ebf1f277362da550b2f31a101bd7604b91d0afc53d40b560771e32b74e9c9c857421b1dfec07aada246ceed4522ea5e50ce8b60ab0717df63aec233ccf597d5055a766656d987c5a8cd2bd4e041bc3fa63443a7bbc4d6385e081f41e5e7eb88e6534d6b1e54189dea98b5d9c86c6b2c0549">	
	
		<input type="checkbox" name="virtualPayType" id="virtualPayJrb" value="jr_jrb" >	<input type="hidden" name="" id="jrbCanPay" value="" autocomplete="off">	<input type="hidden" name="" id="jrbWillPay" value="" autocomplete="off">			<input type="hidden" name="xjkMarketingInfoResVo" id="xjkMarketingInfoResVo" value="" autocomplete="off">
	<input type="hidden" name="xjkWellPay" id="xjkWellPay" value="" autocomplete="off">
        <input type="hidden" name="xjkdisAmountValue" id="xjkdisAmountValue" value="" autocomplete="off">

	

		<input type="checkbox" name="virtualPayType" id="virtualPayYue" value="balance_com" >	<input type="hidden" name="" id="yueCanPay" value="" autocomplete="off">	
		<input type="checkbox" name="virtualPayType" id="virtualPayJingBean" value="jingbean" >	<input type="hidden" name="" id="jingBeanCanPay" value="" autocomplete="off">	
		<input type="checkbox" name="virtualPayType" id="virtualPayGangbeng" value="gangbeng" >	<input type="hidden" name="" id="gangbengCanPay" value="" autocomplete="off">	
	
		<input type="checkbox" name="virtualPayType" id="virtualPayWyQianBao" value="wyQianBao" >	<input type="hidden" name="" id="wyQianBaoCanPay" value="" autocomplete="off">	
	
	
	<input type="hidden" name="cardPayType" id="cardPayType" value="" autocomplete="off">
	<input type="hidden" name="cardPayAmountHide" id="cardPayAmountHide" value="" autocomplete="off">

		<input type="hidden" name="verifCode" id="verifCode" value="" autocomplete="off" >
		<input type="hidden" name="riskPaySession" id="riskPaySession" value="" autocomplete="off">
	<input type="hidden" name="codedPhoneNum" id="codedPhoneNum" value="" autocomplete="off">
	<input type="hidden" name="haveQuickPay" id="haveQuickPay" value="" autocomplete="off" >

</form> 

<form id="quickPayForm">
    <input type="hidden" name="cardCanPay" id="cardCanPay" value="" autocomplete="off" >    <input type="hidden" name="cardDiscountAmount" id="cardDiscountAmount" value="" autocomplete="off">    <input type="hidden" name="cardWillPay" id="cardWillPay" value="" autocomplete="off" ></form>
 
<form action="/payment/paymentConfirm.action" name="paymentConfirm" id="paymentConfirm" method="post" target="_blank" style="display:none">
    <input type="hidden" name="orderId" id = "orderId" value="49457805343" autocomplete="off"/>    <input type="hidden" name="paySign" id = "paySign" value="5288cacb32da4757eff7ce2e274cf5ce940352dd5245d9579a94694b144057f569b056fca276401584a890514dc85f4f3f843e5725fd5f1d1006eb6049b56c3e2e1fcfae4cbff38e46bfe2a6695a5b95969ea29efbc44fc03a886515e50354cb25afbd112b6d72628283d5874d6ed01590632c8ce757cdd8c69250600256b5f37fb767659b65413c867d584b3d418007bb4fc289b429ac7ed9dd17bc3374fbd55d91017705345b198b4fb1938a4188ab6690cdd2e99a832fe61a90e619b8980a7da57d1dff3e1f23a99e8ebfcaeb705b2c5f97a755d45dd3c73b3648f9050b115afb09b527b469ae214a48c05f0b9af146e581df72835bdb715b6c36e1a8872edd34d6143600ca9114afde44b2d4a11e03a8c9728de1be8cc2ef82c004fa9fe957c2f94e26c756d918044c16f14179f978e78ebba15228fb135d5c3fcdd2af3db684b5074f050fafdd792955157877e55b6f0e286e60ae5284569040ea6bbeab24c5ceb0d673c1f6dafaf20801ff499b2f66537faf233df4ef0c4d924575e788f427613794b37c2f99c4539b976c7155644449723f64c660eeb4d997b89f4fb44821857171579a339f4fe4d036a27dd4f498018509774a11b7110f8df367ba4ee70915000ab0cb8d9c9bcf2d94a0d7030c320bb7942cdc5c6f467d334c728ae504aafa2e8d81db0c6783022b6974bdf545c2035ad08b1e5598e857bc023dfc1d8f04bb53c4a285df7358902d4f38d2a706d9c59dd1cf031c52c94af1d4d7e9cc5b93396aee66f0d592232804e1bfcf6930cf7e30603f8b07940c8dd8e5506a41b8cf4380e51a60b0941722779c471985121af9d117f6560a2c40ae71db8f16867c95cbf7073eae3a43babdd88e2b1d1b51945ec525e90b73cc8b647117789ebf1f277362da550b2f31a101bd7604b91d0afc53d40b560771e32b74e9c9c857421b1dfec07aada246ceed4522ea5e50ce8b60ab0717df63aec233ccf597d5055a766656d987c5a8cd2bd4e041bc3fa63443a7bbc4d6385e081f41e5e7eb88e6534d6b1e54189dea98b5d9c86c6b2c0549" autocomplete="off"/>    <input type="hidden" name="agencyCode" id="agencyCode" autocomplete="off"/>    <input type="hidden" name="bankCode" id="bankCode" autocomplete="off"/>     <input type="hidden" name="bankName" id="bankName" autocomplete="off"/>     <input type="hidden" name="commonBankType" id="commonBankType" value="" autocomplete="off"/>     <input type="hidden" name="confirmPaymentAmount" id="confirmPayAmount" autocomplete="off"/>     <input type="hidden" name="shouldPaymentAmount" id="shouldPaymentAmount" autocomplete="off"/>    <input type="hidden" name="gradedPayment" id="gradedPayment" autocomplete="off"/>    <input type="hidden" name="toType" id="toType" autocomplete="off"/></form>
-->
	<div class="main">
		<div class="w">
			<!-- order 订单信息 -->
			<div class="order">
				<div class="o-left">
					<h3 class="o-title">订单提交成功，请您尽快付款！ 订单号：49457805343</h3>
					<p class="o-tips">

						请您在<span class='font-red'>24小时</span>内完成支付，否则订单会被自动取消（以订单详情页为准）。 <span
							class="pay-safeguard j_uiPop"> <em
							class="ps-title j_uiBaozhangPop">在线支付保障</em>
						</span> 请您放心购买。
					</p>
				</div>
				<div class="o-right">
					<div class="o-price">
						<em>应付金额</em><strong>148.00</strong><em>元</em>
					</div>

					<div class="o-detail" id="orderDetail">
						<a onclick="payOrder.toggleDetail(this,49457805343);"
							href="javascript:;"
							clstag="jr|keycount|cashier_jd|cashier_jd_ddxq"
							psa="pcCashier_ddxq">订单详情<i></i></a>
					</div>

				</div>
				<div class="clr"></div>

				<div class="o-qrcode">
					<a class="oq-img"> <img alt=""
						src="https://cashier.jd.com/image/getImageV2.action?sign=9f95fc277ba8f352d7fd5adc2cf9abcd2cf170ad1ab70715122800607d715705&type=1&PassKey=1E06075F8D17B838C96AF24AFED73A7C">
					</a>
					<div class="op-arrow"></div>
					<div class="op-phone"></div>
				</div>

				<div class="o-list j_orderList" id="listPayOrderInfo">
					<!-- 单笔订单 -->

					<div class="o-list-info">
						<span class="mr10" id="shdz"></span> <span class="mr10" id="shr"></span>
						<span id="mobile"></span>
					</div>
					<div class="o-list-info">
						<span id="spmc"></span>
					</div>

					<!-- 单笔订单 end -->

				</div>
			</div>
			<!-- order 订单信息 end -->
			<input type="hidden" autocomplete="off" name="orderShouldPay"
				id="orderShouldPayHide" value="148.00"> <input
				type="hidden" autocomplete="off" name="ordeTypeHide"
				id="ordeTypeHide" value="22"> <input type="hidden"
				autocomplete="off" name="orderId" id="orderIdHide"
				value="49457805343"> <input type="hidden"
				autocomplete="off" name="openPayPwd" id="openPayPwd" value="0">
			<input type="hidden" autocomplete="off" name="isCheckedSuccess"
				id="isCheckedSuccess" value="">
			<!-- payment 支付方式选择 -->
			<div class="payment">
				<!--京东支付图标-->
				<div class="jp-logo-wrap">
					<span class="jp-logo"></span>
				</div>
				<!--京东支付图标 end-->
				<!--收银台公告-->
				<div class="jp-notice" style="background: none;">
					<div class="jp-tips">以下支付方式由京东支付提供</div>

				</div>
				<!--收银台公告 end-->

				<div class="paybox paybox-baitiao j_paybox" id="baiTiaoDivContainer">


					<!-- paybox 京东白条 -->
					<div class="p-wrap">
						<i class="p-border"></i>
						<div class="p-key">
							<!-- 支付方式选择 -->
							<span
								class="p-k-check  p-k-check-baitiao-new    ui-checkbox-wrap ui-check-disable "
								onclick="baiTiao.checked()"
								clstag="jr|keycount|cashier_jd|cashier_jd_jdbt"> <input
								type="hidden" autocomplete="off" id="baiTiaoIsEnable"
								value="false"> <input type="hidden" autocomplete="off"
								id="creditVersion" value=""> <input type="hidden"
								autocomplete="off" id="baitiaoState" value="1"> <i
								id="baiTiaoCheckBox" class="ui-checkbox-L j_paymentCheck"
								psa="pcCashier_bt"><em class="selected"></em></i> <strong>
									<b>白条</b>
							</strong> <!--当creditInfo中的userType为３时表示为金采用户--> <i
								class="ui-icon ui-icon-info ml5 j_uiTips"
								data-tips="<strong>京东白条：</strong>是京东新推出的会员增值服务，会员<br />购物时可以享受先消费后付款的全新购物体验，<br />最长可延后30天付款。"></i>
							</span>
							<!-- 支付方式选择 end -->
						</div>
						<div class="p-value">
							<div class="p-v-line">
								<span class="">白条额度未激活，<a target="_blank"
									href="https://baitiao.jd.com/v3/activity/open?srcCode=jrcashier_b&orderid=49457805343"
									clstag="jr|keycount|cashier_jd|cashier_jd_ljjh">立即激活</a>&nbsp;即可消费
								</span>
							</div>
						</div>
					</div>

				</div>
				<div class="paybox j_paybox" id="payBalancePayboxDiv"
					style="display: none"></div>
				<!-- paybox 银行卡 -->
				<div class="paybox j_paybox paybox-selected" id="payCardBoxDiv">
					<div class="p-wrap">
						<i class="p-border"></i>
						<div class="p-key">

							<!-- 支付方式选择 -->
							<span class="p-k-check" id="p-k-check-payCard"
								onclick="bankCard.checked();"
								clstag="jr|keycount|cashier_jd|cashier_jd_yhk"
								psa="pcCashier_yhk"> <i
								class="ui-checkbox-L j_paymentCheck" id="ui-checkbox-L-payCard"><em
									class="selected"></em></i> <strong>银行卡</strong>
							</span>
							<!-- 支付方式选择 end -->
						</div>


						<div class="p-value">
							<div class="p-v-line" style="height: 35px">

								<!-- 老用户 已使用 银行卡列表 -->
								<div class="j_bankUsed" style="display: none">


									<!-- 已选银行 -->
									<div class="used-bank">
										<dt class="j_usedBankSelect  ">
											<div class="ub-item" id="ub-item-firstBank"></div>


											<i class="ub-arrow"></i>
										</dt>
										<dd class="j_usedBankList" style="display: none;">
											<ul class="ub-list" id="ub-list-usedCard">


											</ul>
										</dd>
									</div>
									<!-- 已选银行 end -->

									<a class="fl ml20 bank-new" href="javascript:;"
										onclick="payBankcard.showAllBankList(this)"
										psa="pcCashier_tjxk"><b class="bn-icon">+</b>添加新卡</a>
									<div class="clr"></div>
								</div>
								<!-- 老用户 已使用 银行卡列表 end -->

								<!-- 返回老用户 银行卡列表 -->
								<div class="bank-return j_returnBankUsed" style="display: none;">
									<a href="javascript:;" onclick="payBankcard.returnBankUsed()"
										psa="pcCashier_fhwdyhk"> <i><</i> 返回我的银行卡
									</a>
								</div>
								<!-- 返回老用户 银行卡列表 end -->
							</div>

							<div class="b-pre-tips" id="pay_manjian" style="display: none;"></div>

						</div>

						<div class="p-amount">
							<em>支付</em><strong id="cardPayAmountStrong">148.00</strong><em>元</em>
							<div class="pre-val" id="cardPayDisAmountText"
								style="display: none;">已减20元</div>

						</div>

						<!-- 银行卡 区域 -->
						<div class="bank-area j_bankArea" style="display: none;">

							<!-- bank-identific 银行卡自动识别 -->
							<div class="bank-identific j_bankIdentific clearfix">
								<div class="bi-input fl mr10 j_uiMagnifying">
									<i class="ui-icon ui-icon-pen"></i> <input type="text"
										class="bi-i-text" style="width: 280px;" id="bi-i-text-cardNo"
										placeholder="输入银行卡号或简码进行识别" maxlength="25" /> <span
										class="bi-i-result" id="bi-i-result-bank"
										style="display: none;"></span>
								</div>
								<button class="ui-button fl disable" style="display: none;"
									onclick="payBankcard.editedQuickBank()" psa="pcCashier_qd">确定</button>
								<input id="cardVerifyShort" autocomplete="off" type="hidden"
									value=""> <span class="font-red ml10"
									id="font-red-cardError"></span> <span class="ml10"
									id="noCardReadminSpan"></span>
							</div>
							<!-- bank-identific 银行卡自动识别 end -->

							<!-- bank-wrap 银行卡选择数据录入区域 -->
							<div class="bank-wrap j_tabs j_bankEdit" data-widget="tabs">
								<div class="ui-tab">
									<div class="ui-tab-items">
										<ul class="clearfix">
											<li class="ui-tab-item bw-tab-quick curr"
												data-widget="tab-item" id="quickPayCardMenuLi"
												onclick="bankCard.quickCardShow()" psa="pcCashier_kjzf">
												<a href="javascript:;"><i></i>快捷支付</a>
											</li>
											<li class="ui-tab-item bw-tab-wangyin" data-widget="tab-item"
												id="normalPayCardMenuLi"
												onclick="bankCard.normalPayCardShow()" psa="pcCashier_wyzf">
												<a href="javascript:;">网银支付</a>
											</li>

										</ul>
									</div>
								</div>

								<!-- 快捷支付 -->
								<div class="bw-tab-content" data-widget="tab-content"
									id="quickPayCardDiv">
									<!-- 支付银行列表 -->
									<div class="payment-list j_quickBankList" id="quickPayListDiv">
										<!--按字母排序按钮-->
										<div class="order-by-wrap">
											<a class="active">热门</a> <a class="">ABCDE</a> <a class="">FGHIJ</a>
											<a class="">KLMNO</a> <a class="">PQRST</a> <a class="">UVWXYZ</a>
										</div>
										<ul class="pl-wrap clearfix">
											<li data-order="2" id="quick_ICBC" class="pl-item "
												clstag="payment|keycount|bank|c-icbc"
												onclick="payBankcard.selectedQuickBank('ICBC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-icbc">工商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_ICBC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ICBC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_ICBC"
												type="hidden" value="5千/5万/5千/5万" autocomplete="off">
												<input id="promptInfo_ICBC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_ICBC"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_ICBC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ICBC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ICBC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ICBC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ICBC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ICBC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_CCB" class="pl-item "
												clstag="payment|keycount|bank|c-ccb"
												onclick="payBankcard.selectedQuickBank('CCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ccb">建设银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CCB"
												type="hidden" value="1万/2万/5万/5万" autocomplete="off">
												<input id="promptInfo_CCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CCB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_CCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CCB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_CCB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_CCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CMB" class="pl-item "
												clstag="payment|keycount|bank|c-cmb"
												onclick="payBankcard.selectedQuickBank('CMB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cmb">招商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CMB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0,'protocolTitle':'《招商银行储蓄卡快捷支付服务协议》','protocolURL':'http://help.jd.com/user/issue/224-1705.html'}"
												autocomplete="off"> <input id="quickCredit_CMB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0,'protocolTitle':'《招商银行信用卡快捷支付服务协议》','protocolURL':'http://help.jd.com/user/issue/224-1658.html'}"
												autocomplete="off"> <input id="amountLimit_CMB"
												type="hidden" value="3万/3万/3万/5万" autocomplete="off">
												<input id="promptInfo_CMB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CMB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_CMB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CMB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CMB" type="hidden"
												value="《招商银行储蓄卡快捷支付服务协议》" autocomplete="off"> <input
												id="debitProtocolURL_CMB" type="hidden"
												value="http://help.jd.com/user/issue/224-1705.html"
												autocomplete="off"> <input
												id="creditProtocolTitle_CMB" type="hidden"
												value="《招商银行信用卡快捷支付服务协议》" autocomplete="off"> <input
												id="creditProtocolURL_CMB" type="hidden"
												value="http://help.jd.com/user/issue/224-1658.html"
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_ABC" class="pl-item "
												clstag="payment|keycount|bank|c-abc"
												onclick="payBankcard.selectedQuickBank('ABC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-abc">农业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_ABC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ABC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_ABC"
												type="hidden" value="1万/1万/5千/5千" autocomplete="off">
												<input id="promptInfo_ABC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_ABC"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_ABC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ABC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ABC" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_ABC"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_ABC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ABC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BCOM" class="pl-item "
												clstag="payment|keycount|bank|c-bcom"
												onclick="payBankcard.selectedQuickBank('BCOM')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bcom">交通银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BCOM" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BCOM"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BCOM"
												type="hidden" value="1万/1万/4万/5万" autocomplete="off">
												<input id="promptInfo_BCOM" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BCOM"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BCOM" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BCOM" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BCOM" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BCOM" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BCOM" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BCOM" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GDB" class="pl-item "
												clstag="payment|keycount|bank|c-gdb"
												onclick="payBankcard.selectedQuickBank('GDB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-gdb">广发银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_GDB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GDB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_GDB"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_GDB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_GDB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_GDB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GDB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GDB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_GDB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_GDB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GDB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOC" class="pl-item "
												clstag="payment|keycount|bank|c-boc"
												onclick="payBankcard.selectedQuickBank('BOC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boc">中国银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOC"
												type="hidden" value="1万/1万/1万/1万" autocomplete="off">
												<input id="promptInfo_BOC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOC"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BOC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOC" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_BOC"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_BOC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CMBC" class="pl-item "
												clstag="payment|keycount|bank|c-cmbc"
												onclick="payBankcard.selectedQuickBank('CMBC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cmbc">中国民生银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CMBC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0,'protocolTitle':'《民生银行借记卡快捷支付服务协议》','protocolURL':'http://help.jd.com/user/issue/224-1706.html'}"
												autocomplete="off"> <input id="quickCredit_CMBC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CMBC"
												type="hidden" value="3万/3万/3万/3万" autocomplete="off">
												<input id="promptInfo_CMBC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CMBC"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_CMBC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CMBC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CMBC" type="hidden"
												value="《民生银行借记卡快捷支付服务协议》" autocomplete="off"> <input
												id="debitProtocolURL_CMBC" type="hidden"
												value="http://help.jd.com/user/issue/224-1706.html"
												autocomplete="off"> <input
												id="creditProtocolTitle_CMBC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CMBC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HXB" class="pl-item "
												clstag="payment|keycount|bank|c-hxb"
												onclick="payBankcard.selectedQuickBank('HXB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hxb">华夏银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HXB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HXB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HXB"
												type="hidden" value="1万/1万/2万/2万" autocomplete="off">
												<input id="promptInfo_HXB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HXB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_HXB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HXB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HXB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_HXB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_HXB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HXB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CIB" class="pl-item "
												clstag="payment|keycount|bank|c-cib"
												onclick="payBankcard.selectedQuickBank('CIB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cib">兴业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CIB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CIB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CIB"
												type="hidden" value="2万/2万//" autocomplete="off"> <input
												id="promptInfo_CIB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CIB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_CIB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CIB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CIB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_CIB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_CIB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CIB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CEB" class="pl-item "
												clstag="payment|keycount|bank|c-ceb"
												onclick="payBankcard.selectedQuickBank('CEB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ceb">中国光大银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CEB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CEB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CEB"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_CEB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CEB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_CEB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CEB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CEB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_CEB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_CEB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CEB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_POST" class="pl-item "
												clstag="payment|keycount|bank|c-post"
												onclick="payBankcard.selectedQuickBank('POST')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-post">邮政储蓄</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_POST" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_POST"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_POST"
												type="hidden" value="5千/5千/2万/2万" autocomplete="off">
												<input id="promptInfo_POST" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_POST"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_POST" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_POST" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_POST" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_POST" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_POST" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_POST" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CITIC" class="pl-item "
												clstag="payment|keycount|bank|c-citic"
												onclick="payBankcard.selectedQuickBank('CITIC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-citic">中信银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CITIC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CITIC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CITIC"
												type="hidden" value="5万/20万//" autocomplete="off"> <input
												id="promptInfo_CITIC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CITIC"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_CITIC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CITIC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CITIC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CITIC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CITIC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CITIC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SHB" class="pl-item "
												clstag="payment|keycount|bank|c-shb"
												onclick="payBankcard.selectedQuickBank('SHB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-shb">上海银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_SHB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SHB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_SHB"
												type="hidden" value="5万/5万/2万/" autocomplete="off">
												<input id="promptInfo_SHB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_SHB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_SHB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SHB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SHB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_SHB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_SHB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SHB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SPDB" class="pl-item "
												clstag="payment|keycount|bank|c-spdb"
												onclick="payBankcard.selectedQuickBank('SPDB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-spdb">浦发银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_SPDB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SPDB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_SPDB"
												type="hidden" value="10万/10万/10万/10万" autocomplete="off">
												<input id="promptInfo_SPDB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_SPDB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_SPDB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SPDB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SPDB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SPDB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SPDB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SPDB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BOB" class="pl-item "
												clstag="payment|keycount|bank|c-bob"
												onclick="payBankcard.selectedQuickBank('BOB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bob">北京银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOB"
												type="hidden" value="2万/2万/5万/5万" autocomplete="off">
												<input id="promptInfo_BOB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BOB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_BOB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_BOB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_CBHB" class="pl-item "
												clstag="payment|keycount|bank|c-cbhb"
												onclick="payBankcard.selectedQuickBank('CBHB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cbhb">渤海银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_CBHB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CBHB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CBHB" type="hidden" value="5千/5千//"
												autocomplete="off"> <input id="promptInfo_CBHB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CBHB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CBHB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_PAB" class="pl-item "
												clstag="payment|keycount|bank|c-pab"
												onclick="payBankcard.selectedQuickBank('PAB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-pab">平安银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_PAB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_PAB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_PAB"
												type="hidden" value="5万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_PAB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_PAB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_PAB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_PAB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_PAB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_PAB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_PAB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_PAB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_NJCB" class="pl-item "
												clstag="payment|keycount|bank|c-njcb"
												onclick="payBankcard.selectedQuickBank('NJCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-njcb">南京银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_NJCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_NJCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_NJCB"
												type="hidden" value="2千/2千/2万/2万" autocomplete="off">
												<input id="promptInfo_NJCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_NJCB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_NJCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_NJCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_NJCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_NJCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_NJCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_NJCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HZB" class="pl-item "
												clstag="payment|keycount|bank|c-hzb"
												onclick="payBankcard.selectedQuickBank('HZB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hzb">杭州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HZB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HZB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HZB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_HZB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HZB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_HZB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HZB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HZB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_HZB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_HZB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HZB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SRCB" class="pl-item "
												clstag="payment|keycount|bank|c-srcb"
												onclick="payBankcard.selectedQuickBank('SRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-srcb">上海农商行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_SRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SRCB"
												type="hidden"
												value="{'agencyCode':'152','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_SRCB"
												type="hidden" value="2万/2万//" autocomplete="off"> <input
												id="promptInfo_SRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_SRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="debitpromotionDesc_SRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WZCB" class="pl-item "
												clstag="payment|keycount|bank|c-wzcb"
												onclick="payBankcard.selectedQuickBank('WZCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-wzcb">温州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_WZCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WZCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_WZCB"
												type="hidden" value="5万/5万/2万/5万" autocomplete="off">
												<input id="promptInfo_WZCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_WZCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_WZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WZCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JSB" class="pl-item "
												clstag="payment|keycount|bank|c-jsb"
												onclick="payBankcard.selectedQuickBank('JSB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jsb">江苏银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_JSB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JSB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_JSB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_JSB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_JSB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_JSB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JSB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JSB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_JSB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_JSB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JSB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BOCD" class="pl-item "
												clstag="payment|keycount|bank|c-bocd"
												onclick="payBankcard.selectedQuickBank('BOCD')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bocd">成都银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOCD"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOCD"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOCD" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOCD"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOCD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOCD" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_CQRCB" class="pl-item "
												clstag="payment|keycount|bank|c-cqrcb"
												onclick="payBankcard.selectedQuickBank('CQRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cqrcb">重庆农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_CQRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CQRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CQRCB" type="hidden" value="1万/1万//"
												autocomplete="off"> <input id="promptInfo_CQRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CQRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CQRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JSNX" class="pl-item "
												clstag="payment|keycount|bank|c-jsnx"
												onclick="payBankcard.selectedQuickBank('JSNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jsnx">江苏省农村信用社联合社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_JSNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JSNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JSNX" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_JSNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JSNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SHXNX" class="pl-item "
												clstag="payment|keycount|bank|c-shxnx"
												onclick="payBankcard.selectedQuickBank('SHXNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-shxnx">陕西省农村信用社联合社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_SHXNX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SHXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_SHXNX" type="hidden" value="5千/2万//"
												autocomplete="off"> <input id="promptInfo_SHXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SHXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SHXNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BHRCB" class="pl-item "
												clstag="payment|keycount|bank|c-bhrcb"
												onclick="payBankcard.selectedQuickBank('BHRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bhrcb">天津滨海农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BHRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BHRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BHRCB"
												type="hidden" value="5千/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_BHRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BHRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BHRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HBNX" class="pl-item "
												clstag="payment|keycount|bank|c-hbnx"
												onclick="payBankcard.selectedQuickBank('HBNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hbnx">河北省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_HBNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HBNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HBNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_HBNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HBNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GSNX" class="pl-item "
												clstag="payment|keycount|bank|c-gsnx"
												onclick="payBankcard.selectedQuickBank('GSNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-gsnx">甘肃省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_GSNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GSNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_GSNX" type="hidden" value="5千/2万//"
												autocomplete="off"> <input id="promptInfo_GSNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_GSNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GSNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOXM" class="pl-item "
												clstag="payment|keycount|bank|c-boxm"
												onclick="payBankcard.selectedQuickBank('BOXM')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boxm">厦门银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOXM"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOXM"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOXM" type="hidden" value="5千/5万//"
												autocomplete="off"> <input id="promptInfo_BOXM"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOXM" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOXM" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_BOLJ" class="pl-item "
												clstag="payment|keycount|bank|c-bolj"
												onclick="payBankcard.selectedQuickBank('BOLJ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bolj">龙江银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOLJ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOLJ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOLJ"
												type="hidden" value="5千/1万/5千/1万" autocomplete="off">
												<input id="promptInfo_BOLJ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOLJ"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BOLJ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOLJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOLJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOLJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOLJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOLJ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GDNYB" class="pl-item "
												clstag="payment|keycount|bank|c-gdnyb"
												onclick="payBankcard.selectedQuickBank('GDNYB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-gdnyb">广东南粤银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_GDNYB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GDNYB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_GDNYB"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_GDNYB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_GDNYB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_GDNYB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GDNYB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GDNYB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_GDNYB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_GDNYB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GDNYB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JZCB" class="pl-item "
												clstag="payment|keycount|bank|c-jzcb"
												onclick="payBankcard.selectedQuickBank('JZCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jzcb">晋中银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_JZCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JZCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JZCB" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_JZCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JZCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_CHAB" class="pl-item "
												clstag="payment|keycount|bank|c-chab"
												onclick="payBankcard.selectedQuickBank('CHAB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-chab">长安银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_CHAB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CHAB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CHAB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_CHAB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CHAB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CHAB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BODL" class="pl-item "
												clstag="payment|keycount|bank|c-bodl"
												onclick="payBankcard.selectedQuickBank('BODL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bodl">大连银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BODL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BODL"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BODL" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_BODL"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BODL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BODL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HBCL" class="pl-item "
												clstag="payment|keycount|bank|c-hbcl"
												onclick="payBankcard.selectedQuickBank('HBCL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hbcl">湖北银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HBCL" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HBCL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HBCL"
												type="hidden" value="2万/5万/2万/5万" autocomplete="off">
												<input id="promptInfo_HBCL" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HBCL"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_HBCL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HBCL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HBCL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HBCL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HBCL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HBCL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_ORDOS" class="pl-item "
												clstag="payment|keycount|bank|c-ordos"
												onclick="payBankcard.selectedQuickBank('ORDOS')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ordos">鄂尔多斯银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_ORDOS" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ORDOS"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_ORDOS"
												type="hidden" value="1万/2万/1万/2万" autocomplete="off">
												<input id="promptInfo_ORDOS" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_ORDOS"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_ORDOS" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ORDOS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ORDOS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ORDOS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ORDOS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ORDOS" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LNNX" class="pl-item "
												clstag="payment|keycount|bank|c-lnnx"
												onclick="payBankcard.selectedQuickBank('LNNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lnnx">辽宁农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_LNNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_LNNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_LNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_LNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LNNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_PZHCCB" class="pl-item "
												clstag="payment|keycount|bank|c-pzhccb"
												onclick="payBankcard.selectedQuickBank('PZHCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-pzhccb">攀枝花市商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_PZHCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_PZHCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_PZHCCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_PZHCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_PZHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_PZHCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HANABANK" class="pl-item "
												clstag="payment|keycount|bank|c-hanabank"
												onclick="payBankcard.selectedQuickBank('HANABANK')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hanabank">韩亚银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_HANABANK" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HANABANK"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HANABANK" type="hidden" value="1万/1万//"
												autocomplete="off"> <input id="promptInfo_HANABANK"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HANABANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HANABANK" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BOCZ" class="pl-item "
												clstag="payment|keycount|bank|c-bocz"
												onclick="payBankcard.selectedQuickBank('BOCZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bocz">沧州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOCZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOCZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOCZ"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_BOCZ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOCZ"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOCZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_KSRCB" class="pl-item "
												clstag="payment|keycount|bank|c-ksrcb"
												onclick="payBankcard.selectedQuickBank('KSRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ksrcb">昆山农商银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_KSRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_KSRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_KSRCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_KSRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_KSRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_KSRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BJRCB" class="pl-item "
												clstag="payment|keycount|bank|c-bjrcb"
												onclick="payBankcard.selectedQuickBank('BJRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bjrcb">北京农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BJRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BJRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BJRCB"
												type="hidden" value="5千/5千/5千/5千" autocomplete="off">
												<input id="promptInfo_BJRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BJRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BJRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BEEB" class="pl-item "
												clstag="payment|keycount|bank|c-beeb"
												onclick="payBankcard.selectedQuickBank('BEEB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-beeb">鄞州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BEEB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BEEB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BEEB"
												type="hidden" value="2万/5万/2万/5万" autocomplete="off">
												<input id="promptInfo_BEEB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BEEB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BEEB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BEEB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BEEB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BEEB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BEEB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BEEB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BSB" class="pl-item "
												clstag="payment|keycount|bank|c-bsb"
												onclick="payBankcard.selectedQuickBank('BSB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bsb">包商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BSB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BSB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BSB"
												type="hidden" value="1万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_BSB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BSB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BSB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BSB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BSB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_BSB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_BSB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BSB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_QHNX" class="pl-item "
												clstag="payment|keycount|bank|c-qhnx"
												onclick="payBankcard.selectedQuickBank('QHNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-qhnx">青海省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_QHNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_QHNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_QHNX" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_QHNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_QHNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_QHNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HNNX" class="pl-item "
												clstag="payment|keycount|bank|c-hnnx"
												onclick="payBankcard.selectedQuickBank('HNNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hnnx">河南省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_HNNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HNNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_HNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HNNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_XTB" class="pl-item "
												clstag="payment|keycount|bank|c-xtb"
												onclick="payBankcard.selectedQuickBank('XTB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-xtb">邢台银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_XTB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_XTB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_XTB" type="hidden" value="5千/5千//"
												autocomplete="off"> <input id="promptInfo_XTB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_XTB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_XTB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_XTB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_XTB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_XTB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_XTB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_XTB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WHCCB" class="pl-item "
												clstag="payment|keycount|bank|c-whccb"
												onclick="payBankcard.selectedQuickBank('WHCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-whccb">威海市商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_WHCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WHCCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_WHCCB"
												type="hidden" value="1万/2万/5千/1万" autocomplete="off">
												<input id="promptInfo_WHCCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_WHCCB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_WHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WHCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WHCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_BOLY" class="pl-item "
												clstag="payment|keycount|bank|c-boly"
												onclick="payBankcard.selectedQuickBank('BOLY')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boly">洛阳银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOLY"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOLY"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOLY" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOLY"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOLY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOLY" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_TJWQCZ" class="pl-item "
												clstag="payment|keycount|bank|c-tjwqcz"
												onclick="payBankcard.selectedQuickBank('TJWQCZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-tjwqcz">天津武清村镇银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_TJWQCZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_TJWQCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_TJWQCZ" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_TJWQCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_TJWQCZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LZCCB" class="pl-item "
												clstag="payment|keycount|bank|c-lzccb"
												onclick="payBankcard.selectedQuickBank('LZCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lzccb">泸州市商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_LZCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LZCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_LZCCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_LZCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_LZCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LZCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HSB" class="pl-item "
												clstag="payment|keycount|bank|c-hsb"
												onclick="payBankcard.selectedQuickBank('HSB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hsb">徽商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HSB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HSB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HSB"
												type="hidden" value="2万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_HSB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HSB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_HSB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HSB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HSB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_HSB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_HSB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HSB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HNRCC" class="pl-item "
												clstag="payment|keycount|bank|c-hnrcc"
												onclick="payBankcard.selectedQuickBank('HNRCC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hnrcc">海南省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HNRCC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HNRCC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HNRCC"
												type="hidden" value="1万/2万/1万/2万" autocomplete="off">
												<input id="promptInfo_HNRCC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HNRCC"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_HNRCC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HNRCC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HNRCC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HNRCC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HNRCC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HNRCC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOXJ" class="pl-item "
												clstag="payment|keycount|bank|c-boxj"
												onclick="payBankcard.selectedQuickBank('BOXJ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boxj">华融湘江银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOXJ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOXJ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOXJ"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_BOXJ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOXJ"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOXJ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOXJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOXJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOXJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOXJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOXJ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_TCRCB" class="pl-item "
												clstag="payment|keycount|bank|c-tcrcb"
												onclick="payBankcard.selectedQuickBank('TCRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-tcrcb">太仓农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_TCRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_TCRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_TCRCB" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_TCRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_TCRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_TCRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SXNX" class="pl-item "
												clstag="payment|keycount|bank|c-sxnx"
												onclick="payBankcard.selectedQuickBank('SXNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-sxnx">山西省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_SXNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_SXNX" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_SXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SXNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOFX" class="pl-item "
												clstag="payment|keycount|bank|c-bofx"
												onclick="payBankcard.selectedQuickBank('BOFX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bofx">阜新银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOFX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOFX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOFX"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_BOFX" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOFX"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOFX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOFX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOFX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOFX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOFX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOFX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_DRCB" class="pl-item "
												clstag="payment|keycount|bank|c-drcb"
												onclick="payBankcard.selectedQuickBank('DRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-drcb">东莞农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_DRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_DRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_DRCB"
												type="hidden" value="1万/1万/1万/1万" autocomplete="off">
												<input id="promptInfo_DRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_DRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_DRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_DRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_DRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_DRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_DRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_DRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_YNNX" class="pl-item "
												clstag="payment|keycount|bank|c-ynnx"
												onclick="payBankcard.selectedQuickBank('YNNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ynnx">云南省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_YNNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_YNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_YNNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_YNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_YNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_YNNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_URB" class="pl-item "
												clstag="payment|keycount|bank|c-urb"
												onclick="payBankcard.selectedQuickBank('URB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-urb">联合村镇银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_URB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_URB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_URB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_URB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_URB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_URB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_URB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_URB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_URB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_URB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_URB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_EGB" class="pl-item "
												clstag="payment|keycount|bank|c-egb"
												onclick="payBankcard.selectedQuickBank('EGB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-egb">恒丰银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_EGB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_EGB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_EGB" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_EGB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_EGB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_EGB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_EGB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_EGB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_EGB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_EGB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_EGB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LYCB" class="pl-item "
												clstag="payment|keycount|bank|c-lycb"
												onclick="payBankcard.selectedQuickBank('LYCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lycb">辽阳银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_LYCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LYCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_LYCB" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_LYCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_LYCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LYCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOGL" class="pl-item "
												clstag="payment|keycount|bank|c-bogl"
												onclick="payBankcard.selectedQuickBank('BOGL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bogl">桂林银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOGL" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOGL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOGL"
												type="hidden" value="1万/1万/1万/1万" autocomplete="off">
												<input id="promptInfo_BOGL" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOGL"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOGL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOGL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOGL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOGL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOGL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOGL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BONC" class="pl-item "
												clstag="payment|keycount|bank|c-bonc"
												onclick="payBankcard.selectedQuickBank('BONC')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bonc">江西银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BONC" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BONC"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BONC"
												type="hidden" value="2万/2万/5万/5万" autocomplete="off">
												<input id="promptInfo_BONC" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BONC"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BONC" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BONC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BONC" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BONC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BONC" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BONC" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_PJCCB" class="pl-item "
												clstag="payment|keycount|bank|c-pjccb"
												onclick="payBankcard.selectedQuickBank('PJCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-pjccb">盘锦银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_PJCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_PJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_PJCCB" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_PJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_PJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_PJCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOGY" class="pl-item "
												clstag="payment|keycount|bank|c-bogy"
												onclick="payBankcard.selectedQuickBank('BOGY')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bogy">贵阳银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOGY"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOGY"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOGY" type="hidden" value="5千/5千//"
												autocomplete="off"> <input id="promptInfo_BOGY"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOGY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOGY" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HUNNX" class="pl-item "
												clstag="payment|keycount|bank|c-hunnx"
												onclick="payBankcard.selectedQuickBank('HUNNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hunnx">湖南农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_HUNNX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HUNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HUNNX" type="hidden" value="2千/5千//"
												autocomplete="off"> <input id="promptInfo_HUNNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HUNNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HUNNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_RZB" class="pl-item "
												clstag="payment|keycount|bank|c-rzb"
												onclick="payBankcard.selectedQuickBank('RZB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-rzb">日照银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_RZB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_RZB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_RZB"
												type="hidden" value="3万/3万/3万/3万" autocomplete="off">
												<input id="promptInfo_RZB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_RZB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_RZB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_RZB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_RZB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_RZB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_RZB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_RZB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SZRCB" class="pl-item "
												clstag="payment|keycount|bank|c-szrcb"
												onclick="payBankcard.selectedQuickBank('SZRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-szrcb">深圳农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_SZRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SZRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_SZRCB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_SZRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_SZRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_SZRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SZRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SZRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SZRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SZRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SZRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_XHDLCZ" class="pl-item "
												clstag="payment|keycount|bank|c-xhdlcz"
												onclick="payBankcard.selectedQuickBank('XHDLCZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-xhdlcz">鑫汇村镇银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_XHDLCZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_XHDLCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_XHDLCZ" type="hidden" value="5千/1万//"
												autocomplete="off"> <input id="promptInfo_XHDLCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_XHDLCZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_QDCCB" class="pl-item "
												clstag="payment|keycount|bank|c-qdccb"
												onclick="payBankcard.selectedQuickBank('QDCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-qdccb">青岛银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_QDCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_QDCCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_QDCCB"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_QDCCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_QDCCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_QDCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_QDCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_QDCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_QDCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_QDCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_QDCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JYRCB" class="pl-item "
												clstag="payment|keycount|bank|c-jyrcb"
												onclick="payBankcard.selectedQuickBank('JYRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jyrcb">江阴农商银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_JYRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JYRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JYRCB" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_JYRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JYRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JYRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_XMIB" class="pl-item "
												clstag="payment|keycount|bank|c-xmib"
												onclick="payBankcard.selectedQuickBank('XMIB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-xmib">厦门国际银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_XMIB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_XMIB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_XMIB" type="hidden" value="10万/10万//"
												autocomplete="off"> <input id="promptInfo_XMIB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_XMIB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_XMIB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOQZ" class="pl-item "
												clstag="payment|keycount|bank|c-boqz"
												onclick="payBankcard.selectedQuickBank('BOQZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boqz">泉州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOQZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOQZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOQZ"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_BOQZ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOQZ"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOQZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOQZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOQZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOQZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOQZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOQZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOZZ" class="pl-item "
												clstag="payment|keycount|bank|c-bozz"
												onclick="payBankcard.selectedQuickBank('BOZZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bozz">枣庄银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOZZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOZZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOZZ" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOZZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOZZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOZZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_ZJKCCB" class="pl-item "
												clstag="payment|keycount|bank|c-zjkccb"
												onclick="payBankcard.selectedQuickBank('ZJKCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-zjkccb">张家口银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_ZJKCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ZJKCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_ZJKCCB" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_ZJKCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ZJKCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GRCB" class="pl-item "
												clstag="payment|keycount|bank|c-grcb"
												onclick="payBankcard.selectedQuickBank('GRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-grcb">广州农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_GRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_GRCB"
												type="hidden" value="1万/1万/1万/1万" autocomplete="off">
												<input id="promptInfo_GRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_GRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_GRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_GRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_GRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CZCB" class="pl-item "
												clstag="payment|keycount|bank|c-czcb"
												onclick="payBankcard.selectedQuickBank('CZCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-czcb">浙江稠州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CZCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CZCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CZCB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_CZCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CZCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_CZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CZCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WHRCB" class="pl-item "
												clstag="payment|keycount|bank|c-whrcb"
												onclick="payBankcard.selectedQuickBank('WHRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-whrcb">武汉农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_WHRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WHRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_WHRCB"
												type="hidden" value="5万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_WHRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_WHRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_WHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WHRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WHRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_DYLSCZ" class="pl-item "
												clstag="payment|keycount|bank|c-dylscz"
												onclick="payBankcard.selectedQuickBank('DYLSCZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-dylscz">东营莱商村镇银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_DYLSCZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_DYLSCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_DYLSCZ" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_DYLSCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_DYLSCZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GZNX" class="pl-item "
												clstag="payment|keycount|bank|c-gznx"
												onclick="payBankcard.selectedQuickBank('GZNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-gznx">贵州省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_GZNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GZNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_GZNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_GZNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_GZNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GZNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_QSB" class="pl-item "
												clstag="payment|keycount|bank|c-qsb"
												onclick="payBankcard.selectedQuickBank('QSB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-qsb">齐商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_QSB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_QSB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_QSB"
												type="hidden" value="5千/1万/5千/1万" autocomplete="off">
												<input id="promptInfo_QSB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_QSB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_QSB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_QSB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_QSB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_QSB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_QSB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_QSB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOHH" class="pl-item "
												clstag="payment|keycount|bank|c-bohh"
												onclick="payBankcard.selectedQuickBank('BOHH')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bohh">新疆汇和银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOHH"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOHH"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOHH" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_BOHH"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOHH" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOHH" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WFCCB" class="pl-item "
												clstag="payment|keycount|bank|c-wfccb"
												onclick="payBankcard.selectedQuickBank('WFCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-wfccb">潍坊银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_WFCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WFCCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_WFCCB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_WFCCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_WFCCB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_WFCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WFCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WFCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WFCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WFCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WFCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_ZJGRCB" class="pl-item "
												clstag="payment|keycount|bank|c-zjgrcb"
												onclick="payBankcard.selectedQuickBank('ZJGRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-zjgrcb">张家港农商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_ZJGRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ZJGRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_ZJGRCB"
												type="hidden" value="2万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_ZJGRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ZJGRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JZB" class="pl-item "
												clstag="payment|keycount|bank|c-jzb"
												onclick="payBankcard.selectedQuickBank('JZB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jzb">锦州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_JZB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JZB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_JZB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_JZB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_JZB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_JZB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JZB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JZB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_JZB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_JZB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JZB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOXIA" class="pl-item "
												clstag="payment|keycount|bank|c-boxia"
												onclick="payBankcard.selectedQuickBank('BOXIA')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boxia">西安银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOXIA" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOXIA"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOXIA"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_BOXIA" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOXIA"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOXIA" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOXIA" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOXIA" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOXIA" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOXIA" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOXIA" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_TJRCB" class="pl-item "
												clstag="payment|keycount|bank|c-tjrcb"
												onclick="payBankcard.selectedQuickBank('TJRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-tjrcb">天津农商银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_TJRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_TJRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_TJRCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_TJRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_TJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_TJRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_SHBANK" class="pl-item "
												clstag="payment|keycount|bank|c-shbank"
												onclick="payBankcard.selectedQuickBank('SHBANK')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-shbank">新韩银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_SHBANK" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SHBANK"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_SHBANK" type="hidden" value="1万/3万//"
												autocomplete="off"> <input id="promptInfo_SHBANK"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SHBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SHBANK" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JLNX" class="pl-item "
												clstag="payment|keycount|bank|c-jlnx"
												onclick="payBankcard.selectedQuickBank('JLNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jlnx">吉林省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_JLNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JLNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JLNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_JLNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JLNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JLNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LSB" class="pl-item "
												clstag="payment|keycount|bank|c-lsb"
												onclick="payBankcard.selectedQuickBank('LSB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lsb">临商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_LSB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LSB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_LSB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_LSB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_LSB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_LSB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LSB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LSB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_LSB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_LSB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LSB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_YKYH" class="pl-item "
												clstag="payment|keycount|bank|c-ykyh"
												onclick="payBankcard.selectedQuickBank('YKYH')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ykyh">营口沿海银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_YKYH"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_YKYH"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_YKYH" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_YKYH"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_YKYH" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_YKYH" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_XJNX" class="pl-item "
												clstag="payment|keycount|bank|c-xjnx"
												onclick="payBankcard.selectedQuickBank('XJNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-xjnx">新疆农村信用社联合社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_XJNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_XJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_XJNX" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_XJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_XJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_XJNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_TSCCB" class="pl-item "
												clstag="payment|keycount|bank|c-tsccb"
												onclick="payBankcard.selectedQuickBank('TSCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-tsccb">唐山银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_TSCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_TSCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_TSCCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_TSCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_TSCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_TSCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_NBCB" class="pl-item "
												clstag="payment|keycount|bank|c-nbcb"
												onclick="payBankcard.selectedQuickBank('NBCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-nbcb">宁波银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_NBCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_NBCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_NBCB" type="hidden" value="5千/5千//"
												autocomplete="off"> <input id="promptInfo_NBCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_NBCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_NBCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JJCCB" class="pl-item "
												clstag="payment|keycount|bank|c-jjccb"
												onclick="payBankcard.selectedQuickBank('JJCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jjccb">九江银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_JJCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JJCCB" type="hidden" value="5千/5万//"
												autocomplete="off"> <input id="promptInfo_JJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JJCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_DZB" class="pl-item "
												clstag="payment|keycount|bank|c-dzb"
												onclick="payBankcard.selectedQuickBank('DZB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-dzb">德州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_DZB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_DZB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_DZB"
												type="hidden" value="1.5万/2万/1.5万/2万" autocomplete="off">
												<input id="promptInfo_DZB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_DZB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_DZB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_DZB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_DZB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_DZB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_DZB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_DZB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_TAB" class="pl-item "
												clstag="payment|keycount|bank|c-tab"
												onclick="payBankcard.selectedQuickBank('TAB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-tab">泰安市商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_TAB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_TAB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_TAB"
												type="hidden" value="5万/5万/5千/2万" autocomplete="off">
												<input id="promptInfo_TAB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_TAB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_TAB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_TAB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_TAB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_TAB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_TAB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_TAB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JNRCB" class="pl-item "
												clstag="payment|keycount|bank|c-jnrcb"
												onclick="payBankcard.selectedQuickBank('JNRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jnrcb">江南农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_JNRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JNRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JNRCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_JNRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JNRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JNRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LWB" class="pl-item "
												clstag="payment|keycount|bank|c-lwb"
												onclick="payBankcard.selectedQuickBank('LWB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lwb">莱商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_LWB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LWB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_LWB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_LWB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_LWB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_LWB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LWB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LWB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_LWB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_LWB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LWB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_GXNX" class="pl-item "
												clstag="payment|keycount|bank|c-gxnx"
												onclick="payBankcard.selectedQuickBank('GXNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-gxnx">广西省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_GXNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_GXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_GXNX" type="hidden" value="1万/1万//"
												autocomplete="off"> <input id="promptInfo_GXNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_GXNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_GXNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_ZJTLCB" class="pl-item "
												clstag="payment|keycount|bank|c-zjtlcb"
												onclick="payBankcard.selectedQuickBank('ZJTLCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-zjtlcb">浙江泰隆银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_ZJTLCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ZJTLCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_ZJTLCB" type="hidden" value="2千/2千//"
												autocomplete="off"> <input id="promptInfo_ZJTLCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ZJTLCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BOBD" class="pl-item "
												clstag="payment|keycount|bank|c-bobd"
												onclick="payBankcard.selectedQuickBank('BOBD')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bobd">保定银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOBD"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOBD"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOBD" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_BOBD"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOBD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOBD" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SCNX" class="pl-item "
												clstag="payment|keycount|bank|c-scnx"
												onclick="payBankcard.selectedQuickBank('SCNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-scnx">四川省农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_SCNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SCNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_SCNX" type="hidden" value="1万/5万//"
												autocomplete="off"> <input id="promptInfo_SCNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SCNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SCNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOYK" class="pl-item "
												clstag="payment|keycount|bank|c-boyk"
												onclick="payBankcard.selectedQuickBank('BOYK')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boyk">营口银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOYK"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOYK"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOYK" type="hidden" value="1万/1万//"
												autocomplete="off"> <input id="promptInfo_BOYK"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOYK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOYK" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HKB" class="pl-item "
												clstag="payment|keycount|bank|c-hkb"
												onclick="payBankcard.selectedQuickBank('HKB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hkb">汉口银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_HKB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HKB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HKB" type="hidden" value="5千/1万//"
												autocomplete="off"> <input id="promptInfo_HKB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HKB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HKB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HKB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HKB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_HKB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_HKB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HKB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOSJ" class="pl-item "
												clstag="payment|keycount|bank|c-bosj"
												onclick="payBankcard.selectedQuickBank('BOSJ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bosj">盛京银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOSJ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOSJ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOSJ" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOSJ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOSJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOSJ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_LZCB" class="pl-item "
												clstag="payment|keycount|bank|c-lzcb"
												onclick="payBankcard.selectedQuickBank('LZCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-lzcb">兰州银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_LZCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_LZCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_LZCB" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_LZCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_LZCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_LZCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_CJCCB" class="pl-item "
												clstag="payment|keycount|bank|c-cjccb"
												onclick="payBankcard.selectedQuickBank('CJCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cjccb">江苏长江银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_CJCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CJCCB" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_CJCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CJCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CJCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_CZB" class="pl-item "
												clstag="payment|keycount|bank|c-czb"
												onclick="payBankcard.selectedQuickBank('CZB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-czb">浙商银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_CZB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CZB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_CZB"
												type="hidden" value="///" autocomplete="off"> <input
												id="promptInfo_CZB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_CZB"
												type="hidden" value="" autocomplete="off"> <input
												id="debitpromotionDesc_CZB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CZB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CZB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_CZB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_CZB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CZB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOJL" class="pl-item "
												clstag="payment|keycount|bank|c-bojl"
												onclick="payBankcard.selectedQuickBank('BOJL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bojl">吉林银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOJL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOJL"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOJL" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_BOJL"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOJL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOJL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_DYCCB" class="pl-item "
												clstag="payment|keycount|bank|c-dyccb"
												onclick="payBankcard.selectedQuickBank('DYCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-dyccb">东营银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_DYCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_DYCCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_DYCCB"
												type="hidden" value="1万/1万/1万/1万" autocomplete="off">
												<input id="promptInfo_DYCCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_DYCCB"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_DYCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_DYCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_DYCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_DYCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_DYCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_DYCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_YRRCB" class="pl-item "
												clstag="payment|keycount|bank|c-yrrcb"
												onclick="payBankcard.selectedQuickBank('YRRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-yrrcb">黄河农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_YRRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_YRRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_YRRCB"
												type="hidden" value="2万/2万/2万/2万" autocomplete="off">
												<input id="promptInfo_YRRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_YRRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_YRRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_YRRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_YRRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_YRRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_YRRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_YRRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HUBNX" class="pl-item "
												clstag="payment|keycount|bank|c-hubnx"
												onclick="payBankcard.selectedQuickBank('HUBNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hubnx">湖北省农村信用社联合社</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_HUBNX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HUBNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_HUBNX"
												type="hidden" value="5万/5万/2万/2万" autocomplete="off">
												<input id="promptInfo_HUBNX" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_HUBNX"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_HUBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HUBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HUBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HUBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HUBNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HUBNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_YTCB" class="pl-item "
												clstag="payment|keycount|bank|c-ytcb"
												onclick="payBankcard.selectedQuickBank('YTCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-ytcb">烟台银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_YTCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_YTCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_YTCB" type="hidden" value="1万/5万//"
												autocomplete="off"> <input id="promptInfo_YTCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_YTCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_YTCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WJRCB" class="pl-item "
												clstag="payment|keycount|bank|c-wjrcb"
												onclick="payBankcard.selectedQuickBank('WJRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-wjrcb">吴江农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_WJRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WJRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_WJRCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_WJRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WJRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WJRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_BOZJ" class="pl-item "
												clstag="payment|keycount|bank|c-bozj"
												onclick="payBankcard.selectedQuickBank('BOZJ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bozj">郑州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOZJ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOZJ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BOZJ"
												type="hidden" value="2万/2万/5千/2万" autocomplete="off">
												<input id="promptInfo_BOZJ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOZJ"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOZJ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOZJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOZJ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOZJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOZJ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOZJ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_CDRCB" class="pl-item "
												clstag="payment|keycount|bank|c-cdrcb"
												onclick="payBankcard.selectedQuickBank('CDRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cdrcb">成都农商银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_CDRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CDRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CDRCB" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_CDRCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_CDRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CDRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_SNCCB" class="pl-item "
												clstag="payment|keycount|bank|c-snccb"
												onclick="payBankcard.selectedQuickBank('SNCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-snccb">遂宁银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_SNCCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_SNCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_SNCCB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_SNCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_SNCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_SNCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_NMGNX" class="pl-item "
												clstag="payment|keycount|bank|c-nmgnx"
												onclick="payBankcard.selectedQuickBank('NMGNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-nmgnx">内蒙古农村信用社</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_NMGNX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_NMGNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_NMGNX" type="hidden" value="2万/10万//"
												autocomplete="off"> <input id="promptInfo_NMGNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_NMGNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_NMGNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOJN" class="pl-item "
												clstag="payment|keycount|bank|c-bojn"
												onclick="payBankcard.selectedQuickBank('BOJN')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bojn">济宁银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOJN"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOJN"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOJN" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_BOJN"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOJN" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOJN" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOPDS" class="pl-item "
												clstag="payment|keycount|bank|c-bopds"
												onclick="payBankcard.selectedQuickBank('BOPDS')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bopds">平顶山银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_BOPDS" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOPDS"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOPDS" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOPDS"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOPDS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOPDS" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOTZ" class="pl-item "
												clstag="payment|keycount|bank|c-botz"
												onclick="payBankcard.selectedQuickBank('BOTZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-botz">台州银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BOTZ" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0,'protocolTitle':'《台州银行银行卡快捷支付业务线上服务协议》','protocolURL':'http://help.jd.com/user/issue/224-2981.html'}"
												autocomplete="off"> <input id="quickCredit_BOTZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0,'protocolTitle':'《台州银行银行卡快捷支付业务线上服务协议》','protocolURL':'http://help.jd.com/user/issue/224-2981.html'}"
												autocomplete="off"> <input id="amountLimit_BOTZ"
												type="hidden" value="5万/5万/5千/2万" autocomplete="off">
												<input id="promptInfo_BOTZ" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BOTZ"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_BOTZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOTZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOTZ" type="hidden"
												value="《台州银行银行卡快捷支付业务线上服务协议》" autocomplete="off"> <input
												id="debitProtocolURL_BOTZ" type="hidden"
												value="http://help.jd.com/user/issue/224-2981.html"
												autocomplete="off"> <input
												id="creditProtocolTitle_BOTZ" type="hidden"
												value="《台州银行银行卡快捷支付业务线上服务协议》" autocomplete="off"> <input
												id="creditProtocolURL_BOTZ" type="hidden"
												value="http://help.jd.com/user/issue/224-2981.html"
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOQHD" class="pl-item "
												clstag="payment|keycount|bank|c-boqhd"
												onclick="payBankcard.selectedQuickBank('BOQHD')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-boqhd">秦皇岛银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_BOQHD" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOQHD"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOQHD" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_BOQHD"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOQHD" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOQHD" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_BOTL" class="pl-item "
												clstag="payment|keycount|bank|c-botl"
												onclick="payBankcard.selectedQuickBank('BOTL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-botl">铁岭银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOTL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOTL"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOTL" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_BOTL"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOTL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOTL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_BODY" class="pl-item "
												clstag="payment|keycount|bank|c-body"
												onclick="payBankcard.selectedQuickBank('BODY')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-body">德阳银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BODY"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BODY"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BODY" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BODY"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BODY" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BODY" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOFS" class="pl-item "
												clstag="payment|keycount|bank|c-bofs"
												onclick="payBankcard.selectedQuickBank('BOFS')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bofs">抚顺银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOFS"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOFS"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOFS" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_BOFS"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOFS" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOFS" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WXRCB" class="pl-item "
												clstag="payment|keycount|bank|c-wxrcb"
												onclick="payBankcard.selectedQuickBank('WXRCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-wxrcb">无锡农村商业银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_WXRCB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WXRCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_WXRCB"
												type="hidden" value="5万/5万/5万/5万" autocomplete="off">
												<input id="promptInfo_WXRCB" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_WXRCB"
												type="hidden" value="true" autocomplete="off"> <input
												id="debitpromotionDesc_WXRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WXRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WXRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WXRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WXRCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WXRCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="1" id="quick_CDB" class="pl-item "
												clstag="payment|keycount|bank|c-cdb"
												onclick="payBankcard.selectedQuickBank('CDB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-cdb">承德银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_CDB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_CDB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_CDB" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_CDB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_CDB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_CDB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_CDB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_CDB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_CDB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_CDB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_CDB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_JCCB" class="pl-item "
												clstag="payment|keycount|bank|c-jccb"
												onclick="payBankcard.selectedQuickBank('JCCB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-jccb">晋城银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_JCCB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_JCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_JCCB" type="hidden" value="5千/2万//"
												autocomplete="off"> <input id="promptInfo_JCCB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_JCCB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_JCCB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_BONX" class="pl-item "
												clstag="payment|keycount|bank|c-bonx"
												onclick="payBankcard.selectedQuickBank('BONX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bonx">宁夏银行</span>
												<em class="pl-i-info"> 储蓄卡&nbsp;&nbsp;信用卡 </em> <input
												id="quickDebit_BONX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BONX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'2','activityId':0}"
												autocomplete="off"> <input id="amountLimit_BONX"
												type="hidden" value="1万/1万/2万/2万" autocomplete="off">
												<input id="promptInfo_BONX" type="hidden" value=""
												autocomplete="off"> <input id="isVaildCVV2_BONX"
												type="hidden" value="false" autocomplete="off"> <input
												id="debitpromotionDesc_BONX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BONX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BONX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BONX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BONX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BONX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_HLJNX" class="pl-item "
												clstag="payment|keycount|bank|c-hljnx"
												onclick="payBankcard.selectedQuickBank('HLJNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-hljnx">黑龙江农信</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_HLJNX" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_HLJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_HLJNX" type="hidden" value="1万/5万//"
												autocomplete="off"> <input id="promptInfo_HLJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_HLJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_HLJNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="4" id="quick_QLB" class="pl-item "
												clstag="payment|keycount|bank|c-qlb"
												onclick="payBankcard.selectedQuickBank('QLB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-qlb">齐鲁银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_QLB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_QLB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_QLB" type="hidden" value="1万/2万//"
												autocomplete="off"> <input id="promptInfo_QLB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_QLB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_QLB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_QLB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_QLB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_QLB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_QLB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_QLB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_ZYB" class="pl-item "
												clstag="payment|keycount|bank|c-zyb"
												onclick="payBankcard.selectedQuickBank('ZYB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-zyb">中原银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_ZYB"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ZYB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_ZYB" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_ZYB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_ZYB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_ZYB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ZYB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ZYB" type="hidden" value=""
												autocomplete="off"> <input id="debitProtocolURL_ZYB"
												type="hidden" value="" autocomplete="off"> <input
												id="creditProtocolTitle_ZYB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ZYB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_YZCZ" class="pl-item "
												clstag="payment|keycount|bank|c-yzcz"
												onclick="payBankcard.selectedQuickBank('YZCZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-yzcz">银座村镇银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_YZCZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0,'protocolTitle':'《银行快捷支付业务线上服务协议》','protocolURL':'http://help.jd.com/user/issue/224-2980.html'}"
												autocomplete="off"> <input id="quickCredit_YZCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_YZCZ" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_YZCZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_YZCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_YZCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_YZCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_YZCZ" type="hidden"
												value="《银行快捷支付业务线上服务协议》" autocomplete="off"> <input
												id="debitProtocolURL_YZCZ" type="hidden"
												value="http://help.jd.com/user/issue/224-2980.html"
												autocomplete="off"> <input
												id="creditProtocolTitle_YZCZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_YZCZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_WEBANK" class="pl-item "
												clstag="payment|keycount|bank|c-webank"
												onclick="payBankcard.selectedQuickBank('WEBANK')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-webank">微众银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_WEBANK" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_WEBANK"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_WEBANK" type="hidden" value="5千/5千//"
												autocomplete="off"> <input id="promptInfo_WEBANK"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_WEBANK" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_WEBANK" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOHZ" class="pl-item "
												clstag="payment|keycount|bank|c-bohz"
												onclick="payBankcard.selectedQuickBank('BOHZ')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bohz">湖州银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOHZ"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOHZ"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOHZ" type="hidden" value="2万/5万//"
												autocomplete="off"> <input id="promptInfo_BOHZ"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOHZ" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOHZ" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="3" id="quick_BOKL" class="pl-item "
												clstag="payment|keycount|bank|c-bokl"
												onclick="payBankcard.selectedQuickBank('BOKL')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bokl">昆仑银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_BOKL"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOKL"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOKL" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_BOKL"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOKL" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOKL" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="2" id="quick_BOHRB" class="pl-item "
												clstag="payment|keycount|bank|c-bohrb"
												onclick="payBankcard.selectedQuickBank('BOHRB')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-bohrb">哈尔滨银行</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input
												id="quickDebit_BOHRB" type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_BOHRB"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_BOHRB" type="hidden" value="5万/5万//"
												autocomplete="off"> <input id="promptInfo_BOHRB"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_BOHRB" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_BOHRB" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li data-order="5" id="quick_ZJNX" class="pl-item "
												clstag="payment|keycount|bank|c-zjnx"
												onclick="payBankcard.selectedQuickBank('ZJNX')" title="">
												<!-- 优惠图标 --> <span class="bank-logo" id="bank-zjnx">浙江农信</span>
												<em class="pl-i-info"> 储蓄卡 </em> <input id="quickDebit_ZJNX"
												type="hidden"
												value="{'agencyCode':'131','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="quickCredit_ZJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="amountLimit_ZJNX" type="hidden" value="2万/2万//"
												autocomplete="off"> <input id="promptInfo_ZJNX"
												type="hidden" value="" autocomplete="off"> <input
												id="isVaildCVV2_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitpromotionDesc_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="cebitpromotionDesc_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolTitle_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="debitProtocolURL_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolTitle_ZJNX" type="hidden" value=""
												autocomplete="off"> <input
												id="creditProtocolURL_ZJNX" type="hidden" value=""
												autocomplete="off"> <i class="pl-i-selected"></i>
											</li>
											<li class="pl-more j_showBankMore" id="j_showQuickBankLi">
												<span>更多银行</span>
											</li>
										</ul>


									</div>

									<script>
                    //默认展示11个网银支付的银行，其他银行默认隐藏，点击 更多银行再展示
                    $(function(){
                        var n_ul = $("#quickPayCardDiv").find("ul");
                        var n_lis=n_ul.children();
                        if(n_lis.length>11){
                            for(var i=0;i<n_lis.length;i++){
                                if(i>=11){
                                    if(n_lis[i].id !="j_showQuickBankLi"){
                                        n_lis[i].className = n_lis[i].className + " hide";
                                    }
                                } else{
                                    if(n_lis[i].id !="j_showQuickBankLi"){
                                        n_lis[i].className =n_lis[i].className;
                                    }
                                }
                            }
                        } else{
                            $("#quickPayListDiv").find(".j_showBankMore").remove();
                        }

                    });
                </script>

									<!-- 支付银行列表 end -->

									<!-- 快捷支付 表单 信用卡请添加class type-credit -->
									<div class="bw-quick j_quickBankEdit" id="bw-quick-cardType"
										style="display: none;">

										<div class="auth-tips">请使用本人银行卡支付</div>
										<div class="ui-form">
											<div class="ui-form-line">
												<label class="ui-form-label">付款银行</label>

												<div class="ui-form-group">
													<div class="clearfix">
														<!-- 已选银行 -->
														<div class="bank-selected fl clearfix"
															id="bank-selected-quickpay">
															<span id="quickBankEdit-default" class="bank-logo"></span>
															<em class="mr10" id="amountLimit-single"></em> <em
																id="amountLimit-day" style="display: none;"></em> <span
																class="bank-pre fl ml5" id="firstCardPayPromotionDesc"
																style="display: none;"><b
																id="firstCardPayPromotionDesc_b"></b> </span> <input
																id="newCard-shouldAmount" autocomplete="off"
																type="hidden"> <input id="newCard-realAmount"
																autocomplete="off" type="hidden"> <input
																id="newCard-discountAmount" autocomplete="off"
																type="hidden">
														</div>
														<a class="fl bw-q-return ml10" href="javascript:;"
															onclick="payBankcard.quickToOther(this)"
															psa="pcCashier_xzqtyhk"> <i
															class="ui-icon ui-icon-return mr5"></i>选择其他银行
														</a>
														<!-- 已选银行 end -->
													</div>
													<div class="bw-bank-tips">
														<span class="font-red" id="quickBank_promptInfo"></span>
													</div>

												</div>
											</div>
											<div class="ui-form-line">
												<label class="ui-form-label">卡种</label>
												<div class="ui-form-group">
													<div class="bw-q-switch">
														<span id="debit-radio" class="mr20 ui-radio-wrap"
															psa="pcCashier_cxk"> <i class="ui-radio"
															id="radio-cardType"><em class=""></em></i> 储蓄卡
														</span> <span id="credit-radio" class="ui-radio-wrap"
															psa="pcCashier_xyk"> <i class="ui-radio"><em
																class="selected"></em></i> 信用卡
														</span> <span class='ml10' id="unEditor-cardType"></span>
													</div>
													<span class="clr"></span>
												</div>
											</div>
											<div class="ui-form-line">
												<label class="ui-form-label">银行卡号</label>
												<div class="ui-form-group" id="ui-form-group-cardNo">
													<input type="text" class="ui-input j_uiMagnifying"
														id="ui-input-cardNo" maxlength="23" autocomplete="off"
														placeholder="请输入本人银行卡号" /> <input id="input-cardNo-verify"
														autocomplete="off" type="hidden" value="false"> <span
														class='ml10' id="unEditor-cardNo"></span> <span
														class='font-red ml10' id='font-red-cardNo'></span>
												</div>
											</div>
											<div class="ui-form-line" id="quick-form-validity">
												<label class="ui-form-label">有效期</label>
												<div class="ui-form-group" id="ui-form-group-validity">
													<span id="ui-select-validity"> <select
														class="ui-select" name="" id="ui-select-month">
															<option value="">选择</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
													</select> 月&nbsp;/&nbsp; <select class="ui-select" name=""
														id="ui-select-year">
															<option value="">选择</option>
															<option value="2014">2014</option>
															<option value="2015">2015</option>
															<option value="2016">2016</option>
															<option value="2017">2017</option>
															<option value="2018">2018</option>
															<option value="2019">2019</option>
															<option value="2020">2020</option>
															<option value="2021">2021</option>
															<option value="2022">2022</option>
															<option value="2023">2023</option>
															<option value="2024">2024</option>
															<option value="2025">2025</option>
															<option value="2026">2026</option>
															<option value="2027">2027</option>
															<option value="2028">2028</option>
															<option value="2029">2029</option>
															<option value="2030">2030</option>
													</select> 年
													</span> <span class='ml10' id="unEditor-validity"></span> <span
														class="font-red ml10" id="font-red-validity"></span>
												</div>
											</div>
											<div class="ui-form-line" id="quick-form-cvv2">
												<label class="ui-form-label">卡验证码</label>
												<div class="ui-form-group" id="ui-form-group-cvv2">
													<input type="password" class="ui-input bw-q-input-auth"
														id="ui-input-cvv2" maxlength="3" placeholder="卡后3位数"
														autocomplete="off" /> <span class='ml10'
														id="unEditor-cvv2"></span> <span class="font-red ml10"
														id="font-red-cvv2"></span>
												</div>
											</div>
											<div class="ui-form-line">
												<label class="ui-form-label">姓名</label>
												<div class="ui-form-group" id="ui-form-group-holderName">
													<input type="text"
														class="ui-input bw-q-input-name j_name_list"
														id="ui-input-holderName" authed="false"
														userRealUserInfo="0" defaultValue="" maxlength="20"
														autocomplete="off" placeholder="请输入本人姓名" /> <span
														class='ml10' id="unEditor-holderName"></span> <span
														class="font-red ml10" id="font-red-holderName"></span>
												</div>
											</div>
											<div class="ui-form-line">
												<label class="ui-form-label"> 证件 </label>
												<div class="ui-form-group" id="ui-form-group-holderId">
													<select class="ui-select bw-q-input-credentials mr5"
														name="" id="holderIdType" style="display: none">
													</select> <input type="text" class="ui-input j_id_list"
														id="ui-input-holderId" defaultValue="" maxlength="18"
														autocomplete="off" placeholder="请输入本人证件号码" /> <span
														class='ml10' id="unEditor-holderIdType"></span> <span
														class='ml10' id="unEditor-holderId"></span> <i
														id="quickBankTips"></i> <span class="font-red ml10"
														id="font-red-holderId"></span>
												</div>
											</div>
											<div class="ui-form-line">
												<label class="ui-form-label">手机号</label>
												<div class="ui-form-group" id="ui-form-group-phone">
													<input type="text" class="ui-input bw-q-input-phone"
														id="ui-input-phone" maxlength="11" placeholder="银行存留号码"
														autocomplete="off" /> <span class='ml10'
														id="unEditor-phone"></span> <span class="font-red ml10"
														id="font-red-phone"></span>
												</div>
											</div>

											<input type="hidden" id="ui-input-unboundPhoneVerifyCode"
												class="ui-input bw-q-input-msg mr5" maxlength="6"
												autocomplete="off" /> <input type="hidden"
												id="unboundCardIsRandomCutOff" autocomplete="off" />
											<div class="ui-form-line">
												<label class="ui-form-label">&nbsp;</label>
												<div class="ui-form-group">
													<i class="ui-checkbox"> <em class="selected"></em>
													</i> <a class="font-black"
														href="http://help.jd.com/user/issue/224-1479.html"
														target="_blank" psa="pcCashier_jdkjzfxgxy">《京东快捷支付相关协议》</a>
													<a id="quick_protocol" class="font-black"
														href="http://help.jd.com/user/issue/224-1658.html"
														style="display: none" target="_blank">《招商银行信用卡快捷支付服务协议》</a>
												</div>
											</div>
										</div>
									</div>
									<!-- 快捷支付 表单 end -->
									<input id="quickpayToken" name="quickpayToken" type="hidden"
										value="" autocomplete="off"> <input
										id="payAgencyCode" name="payAgencyCode" type="hidden" value=""
										autocomplete="off"> <input
										id="marketingCacheInfoResVo" name="marketingCacheInfoResVo"
										type="hidden" value="" autocomplete="off">
								</div>
								<!-- 快捷支付 end -->

								<!-- 网银支付 -->
								<div class="bw-tab-content" data-widget="tab-content"
									id="normalPayCardDiv" style="display: none">
									<!-- 支付银行列表 -->
									<div class="payment-list j_eBankList" id="ebankPaymentListDiv">
										<ul class="pl-wrap clearfix">
											<li class="pl-item" clstag="payment|keycount|bank|c-icbc"
												onclick="payBankcard.selectedEBank('147','ICBC', '1')">
												<span class="bank-logo" id="bank-icbc">工商银行</span> <input
												type="hidden" id="success-icbc" value="工商银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_ICBC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_ICBC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-ccb"
												onclick="payBankcard.selectedEBank('147','CCB', '1')">
												<span class="bank-logo" id="bank-ccb">建设银行</span> <input
												type="hidden" id="success-ccb" value="建设银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-cmb"
												onclick="payBankcard.selectedEBank('147','CMB', '1')">
												<span class="bank-logo" id="bank-cmb">招商银行</span> <input
												type="hidden" id="success-cmb" value="招商银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CMB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CMB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-abc"
												onclick="payBankcard.selectedEBank('147','ABC', '1')">
												<span class="bank-logo" id="bank-abc">农业银行</span> <input
												type="hidden" id="success-abc" value="农业银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_ABC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_ABC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-bcom"
												onclick="payBankcard.selectedEBank('147','BCOM', '1')">
												<span class="bank-logo" id="bank-bcom">交通银行</span> <input
												type="hidden" id="success-bcom" value="交通银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_BCOM"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BCOM"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-gdb"
												onclick="payBankcard.selectedEBank('147','GDB', '1')">
												<span class="bank-logo" id="bank-gdb">广发银行</span> <input
												type="hidden" id="success-gdb" value="广发银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_GDB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_GDB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-boc"
												onclick="payBankcard.selectedEBank('147','BOC', '1')">
												<span class="bank-logo" id="bank-boc">中国银行</span> <input
												type="hidden" id="success-boc" value="中国银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_BOC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BOC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-cmbc"
												onclick="payBankcard.selectedEBank('147','CMBC', '1')">
												<span class="bank-logo" id="bank-cmbc">中国民生银行</span> <input
												type="hidden" id="success-cmbc" value="中国民生银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CMBC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CMBC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-hxb"
												onclick="payBankcard.selectedEBank('147','HXB', '1')">
												<span class="bank-logo" id="bank-hxb">华夏银行</span> <input
												type="hidden" id="success-hxb" value="华夏银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_HXB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_HXB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-cib"
												onclick="payBankcard.selectedEBank('147','CIB', '1')">
												<span class="bank-logo" id="bank-cib">兴业银行</span> <input
												type="hidden" id="success-cib" value="兴业银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CIB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CIB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-ceb"
												onclick="payBankcard.selectedEBank('147','CEB', '1')">
												<span class="bank-logo" id="bank-ceb">中国光大银行</span> <input
												type="hidden" id="success-ceb" value="中国光大银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CEB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CEB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-post"
												onclick="payBankcard.selectedEBank('147','POST', '1')">
												<span class="bank-logo" id="bank-post">邮政储蓄</span> <input
												type="hidden" id="success-post" value="邮政储蓄"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_POST"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_POST"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-citic"
												onclick="payBankcard.selectedEBank('147','CITIC', '1')">
												<span class="bank-logo" id="bank-citic">中信银行</span> <input
												type="hidden" id="success-citic" value="中信银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CITIC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CITIC"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-shb"
												onclick="payBankcard.selectedEBank('147','SHB', '1')">
												<span class="bank-logo" id="bank-shb">上海银行</span> <input
												type="hidden" id="success-shb" value="上海银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_SHB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_SHB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-spdb"
												onclick="payBankcard.selectedEBank('147','SPDB', '1')">
												<span class="bank-logo" id="bank-spdb">浦发银行</span> <input
												type="hidden" id="success-spdb" value="浦发银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_SPDB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_SPDB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-bob"
												onclick="payBankcard.selectedEBank('147','BOB', '1')">
												<span class="bank-logo" id="bank-bob">北京银行</span> <input
												type="hidden" id="success-bob" value="北京银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_BOB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BOB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-cbhb"
												onclick="payBankcard.selectedEBank('147','CBHB', '1')">
												<span class="bank-logo" id="bank-cbhb">渤海银行</span> <input
												type="hidden" id="success-cbhb" value="渤海银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_CBHB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CBHB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-pab"
												onclick="payBankcard.selectedEBank('147','PAB', '1')">
												<span class="bank-logo" id="bank-pab">平安银行</span> <input
												type="hidden" id="success-pab" value="平安银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_PAB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_PAB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-njcb"
												onclick="payBankcard.selectedEBank('147','NJCB', '1')">
												<span class="bank-logo" id="bank-njcb">南京银行</span> <input
												type="hidden" id="success-njcb" value="南京银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_NJCB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_NJCB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-hzb"
												onclick="payBankcard.selectedEBank('147','HZB', '1')">
												<span class="bank-logo" id="bank-hzb">杭州银行</span> <input
												type="hidden" id="success-hzb" value="杭州银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_HZB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_HZB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-srcb"
												onclick="payBankcard.selectedEBank('147','SRCB', '1')">
												<span class="bank-logo" id="bank-srcb">上海农商行</span> <input
												type="hidden" id="success-srcb" value="上海农商行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_SRCB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_SRCB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-bocd"
												onclick="payBankcard.selectedEBank('147','BOCD', '1')">
												<span class="bank-logo" id="bank-bocd">成都银行</span> <input
												type="hidden" id="success-bocd" value="成都银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_BOCD" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BOCD"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-cqrcb"
												onclick="payBankcard.selectedEBank('147','CQRCB', '1')">
												<span class="bank-logo" id="bank-cqrcb">重庆农村商业银行</span> <input
												type="hidden" id="success-cqrcb" value="重庆农村商业银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_CQRCB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CQRCB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-shxnx"
												onclick="payBankcard.selectedEBank('147','SHXNX', '1')">
												<span class="bank-logo" id="bank-shxnx">陕西省农村信用社联合社</span> <input
												type="hidden" id="success-shxnx" value="陕西省农村信用社联合社"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_SHXNX" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_SHXNX"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-boxm"
												onclick="payBankcard.selectedEBank('147','BOXM', '1')">
												<span class="bank-logo" id="bank-boxm">厦门银行</span> <input
												type="hidden" id="success-boxm" value="厦门银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_BOXM" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BOXM"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-bjrcb"
												onclick="payBankcard.selectedEBank('147','BJRCB', '1')">
												<span class="bank-logo" id="bank-bjrcb">北京农村商业银行</span> <input
												type="hidden" id="success-bjrcb" value="北京农村商业银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_BJRCB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_BJRCB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-egb"
												onclick="payBankcard.selectedEBank('147','EGB', '1')">
												<span class="bank-logo" id="bank-egb">恒丰银行</span> <input
												type="hidden" id="success-egb" value="恒丰银行"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_EGB" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_EGB"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-qdccb"
												onclick="payBankcard.selectedEBank('147','QDCCB', '1')">
												<span class="bank-logo" id="bank-qdccb">青岛银行</span> <input
												type="hidden" id="success-qdccb" value="青岛银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_QDCCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_QDCCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-czcb"
												onclick="payBankcard.selectedEBank('147','CZCB', '1')">
												<span class="bank-logo" id="bank-czcb">浙江稠州银行</span> <input
												type="hidden" id="success-czcb" value="浙江稠州银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_CZCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_CZCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-gznx"
												onclick="payBankcard.selectedEBank('147','GZNX', '1')">
												<span class="bank-logo" id="bank-gznx">贵州省农村信用社</span> <input
												type="hidden" id="success-gznx" value="贵州省农村信用社"
												autocomplete="off" /> <em class="pl-i-info"> 支持：储蓄卡 </em> <input
												id="normalDebit_GZNX" type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_GZNX"
												type="hidden" value="" autocomplete="off">
											</li>
											<li class="pl-item" clstag="payment|keycount|bank|c-nbcb"
												onclick="payBankcard.selectedEBank('147','NBCB', '1')">
												<span class="bank-logo" id="bank-nbcb">宁波银行</span> <input
												type="hidden" id="success-nbcb" value="宁波银行"
												autocomplete="off" /> <em class="pl-i-info">
													支持：储蓄卡&nbsp;&nbsp;信用卡 </em> <input id="normalDebit_NBCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'1','activityId':0}"
												autocomplete="off"> <input id="normalCredit_NBCB"
												type="hidden"
												value="{'agencyCode':'147','cardTypeCode':'2','activityId':0}"
												autocomplete="off">
											</li>
											<li class="pl-more j_showBankMore" id="j_showBankLi"
												psa="pcCashier_gdyh"><span>更多银行</span></li>
										</ul>


									</div>

									<script>
                    //默认展示7个网银支付的银行，其他银行默认隐藏，点击 更多银行再展示
                    $(function(){
                        var n_ul = $("#ebankPaymentListDiv").find("ul");
                        var n_lis=n_ul.children();
                        if(n_lis.length>11){
                        for(var i=0;i<n_lis.length;i++){
                            if(i>=11){
                                if(n_lis[i].id !="j_showBankLi"){
                                    n_lis[i].className =n_lis[i].className + " hide";
                                }
                            } else{
                                if(n_lis[i].id !="j_showBankLi"){
                                    n_lis[i].className =n_lis[i].className;
                                }
                            }
                        }
                        } else{
                            $("#ebankPaymentListDiv").find(".j_showBankMore").hide();
                        }
                    });
                </script>
									<!-- 支付银行列表 end -->

									<!-- 网银确认支付 -->
									<div class="bw-ebank j_eBankEdit" style="display: none;"
										id="normalPayCardConfirmDiv">
										<div class="ui-form">
											<!-- 网银支付 -->
											<div class="ui-form-line">
												<label class="ui-form-label">付款银行</label>
												<div class="ui-form-group">
													<div class="clearfix">
														<!-- 已选银行 -->
														<div class="bank-selected fl clearfix">
															<input type="hidden" name="seletedAgencyCode"
																id="seletedAgencyCode" autocomplete="off" /> <span
																class="bank-logo"></span>
														</div>
														<a class="fl ml10 bw-ebank-repeat" href="javascript:;"
															onclick="gradedPay('1')" id="onGradedPay"
															psa="pcCashier_sydczf"><i></i>使用多次支付</a> <a
															class="fl ml10 bw-return" href="javascript:;"
															onclick="exchangeOtherBankPay(2)"> <i
															class="ui-icon ui-icon-return mr5"></i> 选择其他银行
														</a>
														<!-- 已选银行 end -->
													</div>
													<div class="bw-bank-tips">
														<span class="font-red" id="ebank_promptInfo"></span>
													</div>
													<div class="bw-q-switch" id="ebank-cardtype">
														<span class="mr20 ui-radio-wrap" id="nordebit-radio">
															<i class="ui-radio "><em class=""></em></i> 储蓄卡
														</span> <span class="ui-radio-wrap" id="norcredit-radio">
															<i class="ui-radio "><em class=""></em></i> 信用卡
														</span>
													</div>
												</div>
												<div class="pay-limit">
													<span id="possibleLimitSpan">付款现金可能超限</span>&nbsp;<a
														id="allLimitInfoA" href="javascript:">查看全部限额</a>
													<div class="pay-limit-list">
														<table width="100%" border="1" cellspacing="0"
															cellpadding="0" id="limitAmountInfoTbl">
															<colgroup>
																<col width="30%" />
																<col width="30%" />
																<col width="40%" />
															</colgroup>
															<tr>
																<th>单笔限额(元)</th>
																<th>每日限额(元)</th>
																<th>需要满足的条件</th>
															</tr>
														</table>
													</div>
												</div>
											</div>
											<!-- 网银支付 end -->
											<!-- 多次支付 -->
											<div class="ui-form-line hide" id="gradedPayDiv">
												<label class="ui-form-label">本次支付金额</label>
												<div class="ui-form-group">
													<div>
														<input type="text" class="ui-input" style="width: 60px;"
															name="gradedPayInput" onblur="validateAmount()" /> <span>元，剩余需要支付
															￥</span> <span class="font-red" id="shouldEbankPay"></span> <span>元</span>
														<a href="javascript:;" onclick="gradedPay('0')"
															id="cancelGradedPay" psa="pcCashier_qxsydczf">取消使用多次支付</a>
													</div>
													<div>
														<span class="font-red" id="shouldPayError">本次支付金额不可大于剩余支付金额</span>
													</div>
												</div>
											</div>
											<!-- 多次支付 end -->
										</div>
									</div>
									<!-- 网银确认支付 end -->
								</div>
								<!-- 网银支付 end -->
							</div>
							<!-- bank-wrap 银行卡选择数据录入区域 end -->
						</div>
						<!-- 银行卡 区域 end -->
					</div>
					<input id="jd_prefs" autocomplete="off" type="hidden" value="">
				</div>
				<!-- paybox 银行卡 end -->




				<!-- pay-verify 支付验证提交 -->
				<div class="pay-verify" id="pay-verify-typeCredit">

					<div id="notSupportCombineCouponTipDiv" class="pl-s-title font-red"
						style="display: none">小金库、银行卡及部分白条优惠券不支持组合支付</div>
					<div class="pv-line" id="pv-line-password" style="display: none">
						<input type="password" placeholder="请输入京东支付密码" id="payPwd"
							name="payPwd" onkeydown="passwordKeyDown(event)"
							class="ui-input pv-input-password" autocomplete="new-password">
						<span class="font-red ml10" id="showErrMsgSpan"></span> <a
							href="http://safe.jd.com/user/paymentpassword/getBackPassword.action"
							class="ml10" target="_blank" psa="pcCashier_wjzfmm">忘记支付密码？</a>
					</div>



					<div class="pv-msg" id="pv-line-haveValidated"
						style="display: none">
						<i class="ui-icon ui-icon-success mr5"></i> <span
							class="pv-msg-success">您的支付密码已经校验通过，请放心支付！</span>
					</div>
					<div class="p-v-line" id="noOpenPwdDiv" style="display: none">
						<span class="font-red">您尚未开通支付密码点击，<a target="_blank"
							href="http://safe.jd.com/user/paymentpassword/safetyCenter.action">立即开通</a>&nbsp;即可消费
						</span>
					</div>

					<div class="pv-msg" id="userTipSpanDiv" style="display: none">
						<strong class="font-red" id="userTipSpan"></strong>
					</div>

					<div class="pv-msg" id="signPayMesDiv" style="display: none">
						<strong class="font-red" id="signPayMesSpan" style="display: none">当前支付环境安全，您可以输入支付密码直接付款。</strong>
					</div>

					<div class="pv-button" id="loadingDiv" style="display: none">
						<input class="ui-button ui-button-XL ui-button-XL-loading"
							type="submit" value="加载中">
					</div>

					<div class="pv-button" id="pv-button-submitPay">
						<input type="submit" value="立即支付" id="paySubmit"
							class="ui-button ui-button-XL"
							onclick="paymentCommon.payCommonPortal();"
							clstag="jr|keycount|cashier_jd|cashier_jd_ljzf"
							psa="pcCashier_ljzf"> <input type="hidden"
							autocomplete="off" name="remainShouldPayAmount"
							id="remainShouldPayAmount" value="148.00"> <span
							class="font-red ml10" id="submitPayError"></span> <a
							href='javascript:;' id="errorReBind" style="display: none"
							onclick='payBankcard.reBind()'>重新绑定</a><br /> <span
							class="pv-msg" id="remainShouldPayMsgDiv" style="display: none">
							<strong class="font-red" id="">您还差<span
								id="remainShouldPayAmountSpan">148.00</span>元，请选择其他支付组合方式。
						</strong>
						</span>
					</div>
				</div>

				<script type="text/javascript">
                                                                    // 全部银行卡 展开
                                    $('.j_bankArea').slideDown(300);
                                //2015-2-11 18:48:17  短信验证码弹框 该div不需要
                                 //   $("#pv-line-phoneCode").hide();
                                                        </script>

			</div>
			<!-- payment 支付方式选择 end -->
			<!-- payment-change 变更支付方式 -->

			<!-- payment-change 变更支付方式 end -->
		</div>
	</div>

	<!-- 网银支付弹窗 成功 -->
	<div id="wangyinPaySuccess" class="ui-modal wangyin-modal-success">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">登录网上银行支付</h3>
				<a class="um-h-close" onclick="javascript:window.location.reload()"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<!-- 网银支付完成 成功 -->
				<!-- 网银支付完成 成功 end -->
				<div class="wangyin-payed-success">
					<div class="mb20">请您在新打开的网上银行页面进行支付，支付完成前请不要关闭该窗口</div>
					<div class="wps-button mb20">
						<a class="ui-button ui-button-gray mr10"
							href="http://order.jd.com/center/itemPage.action?orderid=49457805343&PassKey=756A3AC482CE4C2B3B6AAA355640253D"
							clstag="jr|keycount|cashier_jd|cashier_jd_wyzftc_ywczf">已完成支付</a>
						&nbsp; <a class="ui-button ui-button-gray"
							href="http://help.jd.com/user/issue/list-173-224.html"
							target="_blank"
							clstag="jr|keycount|cashier_jd|cashier_jd_wyzftc_zfydwt">支付遇到问题</a>
					</div>

					<div class="wps-other">
						<div class="wps-o-left">
							<div class="wps-o-line mb10">
								<span id="options">建议您选择</span> <a class="wps-o-bank"
									onclick="toQuickPayForm()" id="quickBankPaySpan">中国工商银行快捷支付</a>
							</div>
							<div class="wps-o-line">
								<a
									href="https://cashier.jd.com/payment/pay.action?id=49457805343&total=148.00&companyid=600&OrderType=22&toType=10&key=33BDEFF270E5CA3ECBC3AABEE955B6E5AE33D55C8C5FA9C028ED486B716664B5&expires=&quick=&sign="
									clstag="jr|keycount|cashier_jd|cashier_jd_wyzftc_xzqtzf">选择其他支付方式</a>
							</div>
						</div>
						<div class="wps-o-right">
							<div class="wps-o-qrcode">
								<div class="wps-o-qrcode-img"></div>
								<div class="wps-o-qrcode-text">手机随时跟踪订单</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
	<!-- 网银支付弹窗 成功 end -->
	<!-- 虚拟支付结果页 -->
	<div id="virtualResultDiv"
		class="ui-modal ui-modal-error wangyin-modal">
		<script>
   		function rePay(){
   			location.reload() ;
   		}
   </script>
		<div class="ui-modal-inner">
			<div class="ui-modal-head">
				<h3 class="um-h-title">虚拟组合支付结果</h3>
			</div>
			<!-- content pay-info-list-->
			<div class="ui-modal-content">
				<div class="wangyin-payed">
					<ul class="pay-ilist" id="virtualPayResultUl">
					</ul>
					<div class="pay-count">
						剩余<span id="remainAmountSpan"></span>元未支付
					</div>
					<div class="pay-lbtn">
						<a href="javascript:void(0)" onclick="rePay()"
							class="ui-button ui-button-XL"
							clstag="jr|keycount|cashier_jd|cashier_jd_zhzftc_cxzfsy">重新支付剩余金额</a>如果未支付剩余款项，已支付金额将在24小时候原路退还
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 网银支付弹窗 失败 end -->

	<div id="verificationModal" class="ui-modal verification-modal">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">
					<div id="cardPaySum"></div>
				</h3>
				<a class="um-h-close" id="messageClose"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<div class="verification-content">
					<div class="vc-amount">
						<div>请输入短信验证码</div>
						<div class="vc-a-phone">
							<span id="m15_openBindPhone">（已发送至 ）</span>
							<!--<i class="ui-icon ui-icon-info ml5 j_uiTips" data-tips="<strong>手机号码有误？</strong><br />可按以下步骤依次确认解决问题：<br />1. 请确认该预留手机号是当前使用手机号<br />2. 若银行预留手机号已停用，请联系银行修改<br />3. 银行预留手机号码修改完毕后请<a href='javascript:;' onclick='payBankcard.reBind()'>重新绑定</a><br />4. 获取更多帮助，可以联系<a target='_blank' href='http://chat7.jd.com/jdchat/custom.action'>在线客服</a>"></i>-->
							<a class="ml5 j_uiTips"
								data-tips="<strong>手机号码有误？</strong><br />可按以下步骤依次确认解决问题：<br />1. 请确认该预留手机号是当前使用手机号<br />2. 若银行预留手机号已停用，请联系银行修改<br />3. 银行预留手机号码修改完毕后请<a href='javascript:;' onclick='payBankcard.reBind()'>重新绑定</a><br />4. 获取更多帮助，可以联系<a target='_blank' href='http://chat7.jd.com/jdchat/custom.action'>在线客服</a>">手机号码有误?</a>
						</div>
					</div>
					<div class="vc-number">
						<span class="vc-n-grid"> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span>
						</span> <input type="text" class="vc-n-input j_modalAuthInput"
							maxlength="6" id="phoneVer_modalAuthInput" />
						<div class="vc-n-block"></div>
						<div class="vc-n-error">
							<span id="messageError"></span>&nbsp;<a
								href="javascript:void(0);" id="clearMessage">清空</a>
						</div>
						<a onclick="paymentCommon.quickPayCommonPortal()"
							style="position: absolute; right: 18px; top: 20px;"
							href="javascript:;">确认</a>

					</div>
					<div class="vc-operations">
						<span class="vc-o-left"> <a
							class="ui-button ui-button-gray j_verificationCount"
							id="ui-button-gray-phoneVerifyCode" href="javascript:;"
							onclick="quickGetPhontVerifyCode();"></a>
						</span> <span class="vc-o-right"> <a class="vc-close j_modalClose"
							href="javascript:;" id="phoneJ_modalClose">关闭</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--白条优惠券-->
	<div id="baitiaoCouponModal" class="ui-modal baitiaoCoupo-modal"
		style="top: 174px; display: none;">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">选择白条优惠</h3>
				<a class="um-h-close"></a>
				<!--<a class="um-h-close" onclick="javascript:$('#baitiaoCouponModal').hide()"></a>-->
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<iframe id="baitiaoCouponIframe"
					dataId="de3bced65f9992eaedc664e592b45878" id="baitiaoCouponIframe"
					name="baitiaoCouponIframe" align="middle" frameborder="0"
					height="360" scrolling="no" width="523"></iframe>
			</div>
		</div>
	</div>

	<!--小金库优惠券弹框-->
	<div id="xjkCouponModal" class="ui-modal xjkCoupo-modal">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">选择小金库优惠</h3>
				<a class="um-h-close"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<div class="baitiaoCoupo-content xjkCoupo-content"
					data-widget="tabs">
					<div class="ui-tab">
						<div class="ui-tab-items">
							<ul class="clearfix">
								<li class="ui-tab-item curr" data-widget="tab-item"><a
									href="javascript:;">可用优惠&nbsp;</a></li>
								<li class="ui-tab-item" data-widget="tab-item"><a
									href="javascript:;">不可用优惠&nbsp;</a></li>
							</ul>
						</div>
					</div>
					<!-- 可用优惠券 -->
					<div class="xjkCoupo-tab-content" data-widget="tab-content">
						<div id="xjk_coupoList" class="baitiaoCoupo-list ">
							<ul class="bl-ul">
								<div class="baitiaoCoupo-none">
									<span class="bn-text">暂无可用优惠券</span>
								</div>
							</ul>
						</div>
					</div>
					<!-- 可用优惠券 end -->

					<!-- 不可用优惠券 -->
					<div class="xjkCoupo-tab-content hide" data-widget="tab-content">
						<div class="baitiaoCoupo-list">
							<ul class="bl-ul">
								<div class="baitiaoCoupo-none">
									<span class="bn-text">暂无不可用优惠券</span>
								</div>
							</ul>
						</div>
					</div>
					<!-- 不可用优惠券 end -->
					<div class="baitiaoCoupo-button">
						<a id="J_baitiaoCoupoSubmit" class="ui-button ui-button-XL"
							onclick="pitchCoupon()">确认</a>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- 小金库优惠券弹窗end -->



	<!-- 装修白条 -->
	<div id="decorateModal" class="ui-modal decorate-modal">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">装修白条-申请</h3>
				<a class="um-h-close"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<div class="decorate-content">
					<div class="dc-title">
						该商品支持<em>装修专项白条</em>，快快申请吧~
					</div>
					<!-- 支付中添加 vc-loading 错误时添加 vc-error -->
					<div class="dc-content">
						专项白条额度独立于普通京东白条，使用装修专项白条可让您享受最长24期分期付款特权。
						申请金额必须小于或等于订单金额，点击申请前请与商家确认。</div>
					<div class="dc-operations">
						<a id="applyDecorateBaitiaoA" target="_blank"
							class="ui-button ui-button-XL" href="javascript:;">立即申请</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 装修白条 -->

	<!-- 优化后新增的vm -->

	<!-- 快捷短信验证码 展示框-->
	<div id="common_verificationModal" class="ui-modal verification-modal">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">
					<div id="common_cardPaySum"></div>
				</h3>
				<a class="um-h-close" id="common_messageClose"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<div class="verification-content">
					<div class="vc-amount">
						<div>请输入短信验证码</div>
						<div class="vc-a-phone">
							<span id="common_m15_openBindPhone"
								class="common_m15_openBindPhone"></span> <a class="ml5 j_uiTips"
								data-tips="<strong>手机号码有误？</strong><br />可按以下步骤依次确认解决问题：<br />1. 请确认该预留手机号是当前使用手机号<br />2. 若银行预留手机号已停用，请联系银行修改<br />3. 银行预留手机号码修改完毕后请<a href='javascript:;' onclick='payBankcard.reBind()'>重新绑定</a><br />4. 获取更多帮助，可以联系<a target='_blank' href='http://chat7.jd.com/jdchat/custom.action'>在线客服</a>">手机号码有误?</a>
						</div>
					</div>
					<div class="vc-number">
						<span class="vc-n-grid"> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span>
						</span> <input type="text" class="vc-n-input j_modalAuthInput"
							maxlength="6" id="common_phoneVer_modalAuthInput_fk" />
						<div class="vc-n-block"></div>
						<div class="vc-n-error">
							<span id="common_messageError"></span>&nbsp;<a
								href="javascript:void(0);" id="common_clearMessage">清空</a>
						</div>
						<a onclick="paymentCommon.quickPayCommonPortal()"
							style="position: absolute; right: 18px; top: 20px;"
							href="javascript:;">确认</a>
					</div>
					<div class="vc-operations">
						<span class="vc-o-left"> <a
							class="ui-button ui-button-gray j_verificationCount"
							id="common_ui-button-gray-phoneVerifyCode" href="javascript:;"
							onclick="paymentCommon.uniformQuickSms()"></a>
						</span> <span class="vc-o-right"> <a class="vc-close j_modalClose"
							href="javascript:;" id="common_phoneJ_modalClose">关闭</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 风控拦截后短信验证码 展示框-->
	<div id="common_msgModal" class="ui-modal verification-modal">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">
					输入短信验证码<span id="common_m15_openBindPhone_fk">（已发送至 ）</span><i
						class="ui-icon ui-icon-info ml5 j_uiTips"
						data-tips="<strong>手机号码有误？</strong><br />可按以下步骤依次确认解决问题：<br />1. 请确认该预留手机号是当前使用手机号<br />2. 获取更多帮助，可以联系<a target='_blank' href='http://chat7.jd.com/jdchat/custom.action'>在线客服</a>"></i>
				</h3>
				<a class="um-h-close" id="common_messageClose_fk"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<div class="verification-content">
					<div class="vc-number">
						<span class="vc-n-grid"> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span> <span class="grid-item"></span> <span
							class="grid-item"></span>
						</span> <input type="text" class="vc-n-input" maxlength="6"
							id="common_risk_modalAuthInput_fk" />
						<div class="vc-n-block"></div>
						<div class="vc-n-error">
							<span id="common_messageError_fk"></span>&nbsp;<a
								href="javascript:common_fkAuthModal.clear();"
								id="common_clearMessage_fk">清空</a>
						</div>
					</div>
					<div class="vc-operations">
						<span class="vc-o-left"> <a
							class="ui-button ui-button-gray"
							id="common-ui-button-gray-phoneVerifyCode_fk"
							href="javascript:paymentCommon.riskSendMsg('2',$('#riskPhoneNum').val(),$('#riskPhoneToken').val());"></a>
						</span> <span class="vc-o-right"> <a class="vc-close j_modalClose"
							href="javascript:;" id="common_phoneJ_modalClose_fk">关闭</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 结算页过渡支付密码 -->
	<div id="activeTipsModal"
		class="ui-modal verification-modal direct-modal-active">
		<div class="ui-modal-inner">
			<!-- head -->
			<div class="ui-modal-head">
				<h3 class="um-h-title">活动结束提示</h3>
				<a class="um-h-close"></a>
			</div>
			<!-- content -->
			<div class="ui-modal-content">
				<p class="active-end" id="activeTipsInfo"></p>
				<div class="ui-modal-btn">
					<a class="ui-button ui-button-XL "
						onclick="window.location.reload()">选择其他支付方式</a>
				</div>
			</div>
		</div>
	</div>


	<input type="hidden" name="combineToken" id="combineToken" value="">

	<input type="hidden" name="combine2Token" id="combine2Token" value="">

	<input type="hidden" name="riskPhoneToken" id="riskPhoneToken" value="">

	<input type="hidden" name="riskPhoneNum" id="riskPhoneNum" value="">

	<input type="hidden" name="includeVirtual" id="includeVirtual" value="">

	<input type="hidden" name="cardPayMethtod" id="cardPayMethod" value="">
	<!-- 全球购vm -->

	<script>
    (function() {
        $("#payPwd").val("");
        $("#pv-input-cvv2").val("");
        $("#ui-input-boundPhoneVerifyCode").val("");

                var supportLargeLoad="0";
        if(supportLargeLoad==1){
            // 装修白条
            var applySpecialURL="";
            $("#applyDecorateBaitiaoA").attr('href', applySpecialURL);
            paymentUI.showModal('#decorateModal', function(){
                // 打开后回调
            });
        }
            })();

    payXJK.bindCheck();
</script>
	<div class="p-footer">
		<div class="pf-wrap w">
			<div class="pf-line">
				<span class="pf-l-copyright">Copyright &copy; 2004-2016
					晓米佳JD.com 版权所有</span>
			</div>
		</div>
	</div>



	<script>
$(function(){
	setCardSelectHide();
	//初始化白条
	initBaiTiao(globalVar.ajaxReload);
	initBalance();
	initGlobalPayOrderInfo();
	showTip.remainTip();
    payBankcard.setBankSelect();
    payBankcard.setToggleEdit();
    $("#bi-i-text-cardNo").cardNoSplitter();
    $("#ui-input-cardNo").cardNoSplitter();
   checkUsedCardVaild();

    //检查下当前选择的卡是否是签约卡，如果是，调一下支付密码展示框
    checkSignState();

	//控制主页面满减文案的展示
	showManJianHuodong();

    try{
		if(window.console&&window.console.log){
			console.log("【招聘-京东总部-北京】：高级java开发工程师！\n");
			console.log("加入京东金融，你的每一行代码，影响着上亿的京东用户！\n");
			console.log("请将简历发送至 %c anpei@jd.com（ 邮件标题请以“姓名-应聘XX职位-来自jd_cashier”命名）","color:red");
		}
	}catch(e){}

})
		
</script>

	<script type="text/javascript">
    (function () {
        var e=document.createElement('script');e.type='text/javascript';e.async=true;
        e.src=('https:'==document.location.protocol?'https://cscssl':'http://csc')+'.jd.com/wl.js';
        var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(e,s);
    })();
</script>

	<!-- Google Tag Manager -->
	<script type="text/javascript">


function getQueryParams(url) {
    var paramStr = url.substring(url.indexOf('?') + 1, url.length).split('&');
    var j;
    var paramObj = {};
    for (var i = 0; j = paramStr[i]; i++) {
        paramObj[j.substring(0, j.indexOf('=')).toLowerCase()] = j.substring(j.indexOf('=') + 1, j.length);
    }
    return paramObj;
}


function getSkus(suc_sku) {
    var skuStr = suc_sku.split(',');
	var j;
    var skus = {};
	for (var i = 0; j = skuStr[i]; i++) {
	    skus[j.substring(0, j.indexOf(':'))] = j.substring(j.indexOf(':') + 1, j.length);
	}
	return skus;
}

var google_tag_params = {
ecomm_prodid:[''],
ecomm_pagetype:['ordersuc'],
ecomm_pname:[''],
ecomm_pcat:[''],
ecomm_pvalues:[''],
ecomm_pbrand:['']
};
var url = location.href;
var params = getQueryParams(url);
var conversion_value =params['total'];
</script>
	<script type="text/javascript">
dataLayer = [{
'google_tag_params': window.google_tag_params,
'conversion_value': window.conversion_value
}];
</script>
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-T947SH"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T947SH');</script>
	<!-- End Google Tag Manager -->

	<!-- 搜索统计 -->
	<script type="text/javascript">
function getQueryString(name) {
var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
var r = window.location.search.substr(1).match(reg);
if (r != null) return unescape(r[2]);
return 0;
}
jQuery.getScript('https://sstat.jd.com/scslog?args=2^' + getQueryString('suc_orderid') + '^' + getQueryString('suc_sku'));
 </script>
	<!-- 搜索统计 -->


	<!-- 京东白条风控客户端指纹收集，必须放在最后面 -->
	<script language="javaScript">
        var orderId="AQ4HSLI5Y5JP43OMDHYE73EBMM";
    </script>
	<input type="hidden" name="deviceId" id="deviceId" value=""
		autocomplete="off">
	<input type="hidden" name="fingerprint" id="fingerprint" value=""
		autocomplete="off">
	<input type="hidden" name="jscContent" id="jscContent" value=""
		autocomplete="off">
	<script src="//payrisk.jd.com/js/tdpay.js"></script>
	<script language="javaScript">
        try{
            getJdEid(function(eid,fp,riskInfo){
                var orderId=$("#orderId").val();
                $("#deviceId").val(eid);
                $("#fingerprint").val(fp);
                if(riskInfo!=undefined&&riskInfo.jsContent!=undefined){
                    $("#jscContent").val(riskInfo.jsContent);
                }
            });
        }catch(e){

        }
    </script>




	<!-- <script>
		$('.j_pcWangyin').bind('mouseenter', function(){
                    $('.pc-w-promotion').css('display', 'none');
                    $('.pc-w-price').css('display', 'block');
                }).bind('mouseleave', function(){
                    $('.pc-w-promotion').css('display', 'block');
                    $('.pc-w-price').css('display', 'none');
                });
		
	</script> -->

	<form name="payWangyinJarForm" id="payWangyinJarForm"
		action="/payment/wangYinJiaAction.action" method="post"
		target="iframeLayer" style="display: none">
		<input type="hidden" name="payInfoStr"
			value="5288cacb32da4757eff7ce2e274cf5ce940352dd5245d9579a94694b144057f569b056fca276401584a890514dc85f4f3f843e5725fd5f1d1006eb6049b56c3e2e1fcfae4cbff38e46bfe2a6695a5b95969ea29efbc44fc03a886515e50354cb25afbd112b6d72628283d5874d6ed01590632c8ce757cdd8c69250600256b5f37fb767659b65413c867d584b3d418007bb4fc289b429ac7ed9dd17bc3374fbd55d91017705345b198b4fb1938a4188ab6690cdd2e99a832fe61a90e619b8980a7da57d1dff3e1f23a99e8ebfcaeb705b2c5f97a755d45dd3c73b3648f9050b115afb09b527b469ae214a48c05f0b9af146e581df72835bdb715b6c36e1a8872edd34d6143600ca9114afde44b2d4a11e03a8c9728de1be8cc2ef82c004fa9fe957c2f94e26c756d918044c16f14179f978e78ebba15228fb135d5c3fcdd2af3db684b5074f050fafdd792955157877e55b6f0e286e60ae5284569040ea6bbeab24c5ceb0d673c1f6dafaf20801ff499b2f66537faf233df4ef0c4d924575e788f427613794b37c2f99c4539b976c7155644449723f64c660eeb4d997b89f4fb44821857171579a339f4fe4d036a27dd4f498018509774a11b7110f8df367ba4ee70915000ab0cb8d9c9bcf2d94a0d7030c320bb7942cdc5c6f467d334c728ae504aafa2e8d81db0c6783022b6974bdf545c2035ad08b1e5598e857bc023dfc1d8f04bb53c4a285df7358902d4f38d2a706d9c59dd1cf031c52c94af1d4d7e9cc5b93396aee66f0d592232804e1bfcf6930cf7e30603f8b07940c8dd8e5506a41b8cf4380e51a60b0941722779c471985121af9d117f6560a2c40ae71db8f16867c95cbf7073eae3a43babdd88e2b1d1b51945ec525e90b73cc8b647117789ebf1f277362da550b2f31a101bd7604b91d0afc53d40b560771e32b74e9c9c857421b1dfec07aada246ceed4522ea5e50ce8b60ab0717df63aec233ccf597d5055a766656d987c5a8cd2bd4e041bc3fa63443a7bbc4d6385e081f41e5e7eb88e6534d6b1e54189dea98b5d9c86c6b2c0549">
	</form>
	<form name="J_scanPayForm" id="J_scanPayForm"
		action="https://tcashier.jdpay.com/scanPay.htm" method="post"
		target="iframeLayer" style="display: none">
		<input type="hidden" name="cipherOrderId"
			value="de3bced65f9992eaedc664e592b45878"> <input
			type="hidden" name="cipherInfo"
			value="66563a217c4d8616831220e21f3a0a23d6525834e3db5d7442001a7b2d0f626732e655144a599e20fef89c7c352eedd9">
	</form>

	<iframe id="iframeLayer" frameborder="0" name="iframeLayer"
		class="iframeLayer" allowTransparency="true"
		style="display: none; position: absolute; z-index: 999; width: 100%; height: 100%; top: 0px; left: 0px; right: 0; bottom: 0;"
		src=""></iframe>

	<!-- 生成全局命名空间 window.WYPLUS -->
	<script src="/misc/js/wyplus-ctrl.js?v=1"></script>


	<!--  <script>
       $(function(){
                  var currentURL=window.location.href;
           if(currentURL.indexOf("&from=direct")>0){
               baiTiao.checked();
               otherPay.checked();
               xiaoJinKu.checked();
               payBankcard.showAllBankList();
           }
              })
    </script> -->

</body>
</html>
