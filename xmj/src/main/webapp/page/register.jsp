<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache,must-revalidate" />
<title>个人注册</title>
<link type="text/css" rel="stylesheet" href="../css/register.css" />

<link type="text/css" rel="stylesheet" href="../css/footer.css"	source="widget" />

<script type="text/javascript" src="../easyui/jquery.min.js"></script>

<script type="text/javascript" src="../js/register.js"></script> 

</head>
<body>
	<div id="form-header" class="header">
		<div class="logo-con w clearfix">
			<a href="../index.jsp" class="logo"> </a>
			<div class="logo-title">欢迎注册</div>
			<div class="have-account">
				已有账号？ <a href="login.jsp">请登录</a>
			</div>
		</div>

	</div>
	<div class="container w">
		<div class="main clearfix" id="form-main">
			<div class="reg-form fl">
				<form id="register-form" method="post" onsubmit="return formSubmit()" >
					<input type="hidden" name="new" value="new_person_reg" /> <input
						type="hidden" id="localmisc" name="localmisc" value="" /> <input
						type="hidden" name="regType" id="regType" value="person" /> <input
						type="hidden" name="uuid" id="uuid"
						value="61be1008-0607-43da-9945-a996e2659566" /> <input
						type="hidden" name="verifymc" id="verifymc" value="" /> <input
						type="hidden" name="emailMg" id="emailMg" /> <input type="hidden"
						name="authcodeMg" id="authcodeMg" /> <input type="hidden"
						name="state" id="state" value="" /> <input type="hidden"
						name="tgId" id="tgId" value="" /> <input type="hidden" name="eid"
						id="eid" value="" /> <input type="hidden" name="fp"
						id="sessionId" value="" /> <input type="hidden" id="jcloud"
						name="jcloud" value="" /> <input type="hidden" id="ucJcloud"
						name="ucJcloud" value="" /> <input type="hidden" id="regPage"
						name="regPage" value="regPage1487330377752" /> <input
						type="hidden" name="kHmwzjppNt" value="ZOTnD" /> <input
						type="hidden" value="-1" id="hnschool" class="hide" /> <input
						type="hidden" id="schoolid" name="schoolid" class="hide" />
					<!--chrome autocomplete off bug hack-->
					<input style="display: none" name="hack" /> <input type="password"
						style="display: none" name="hack1" />

					<div class="form-item form-item-account" id="form-item-account">
						<label>用 户 名</label> <input type="text" id="form-account"
							name="regName" class="field" autocomplete="off" maxlength="20"
							placeholder="您的账户名和登录名" onkeyup="form_accountCheck()" onfocus="form_accountPrompt()"
							default='<i class="i-def"></i>支持中文、字母、数字、“-”“_”的组合，4-20个字符' /> <i
							class="i-status"></i>
					</div>
					<div class="input-tip">
						<span></span>
					</div>
					<div class="form-item">
						<label>设 置 密 码</label> <input style="display: none"
							type="password" name="pwd" class="fakeinput" /> <input
							type="password" name="pwd" id="form-pwd" class="field"
							maxlength="20" placeholder="建议至少使用两种字符组合" onkeyup="form_pwdCheck()" onfocus="form_pwdPrompt()"
							default="<i class=i-def></i>建议使用字母、数字和符号两种及以上的组合，6-20个字符" /> <i
							class="i-status"></i>
					</div>
					<div class="input-tip">
						<span></span>
					</div>
					<div class="form-item">
						<label>确 认 密 码</label> <input style="display: none"
							type="password" name="pwdRepeat" class="fakeinput" /> <input
							type="password" name="pwdRepeat" id="form-equalTopwd"
							class="field" placeholder="请再次输入密码" maxlength="20" onkeyup="reform_pwdCheck()" onfocus="reform_pwdPrompt()"
							default='<i class="i-def"></i>请再次输入密码' /> <i class="i-status"></i>
					</div>
					<div class="input-tip">
						<span></span>
					</div>
					<div class="item-email-wrap">
						<div class="form-item">
							<label>邮 箱 验 证</label> <input type="text" name="email"
								id="form-email" class="field ignore" autocomplete="off"
								placeholder="建议使用常用邮箱" id="email-input"
								default='<i class="i-def"></i>完成验证后，你可以用该邮箱登录和找回密码' /> <i
								class="i-status"></i>
						</div>
						<div class="input-tip">
							<span></span>
						</div>
						<div class="orPhone">
							<a href="javascript:;">手机验证</a>
						</div>
					</div>
					<div class="item-phone-wrap">
						<div class="form-item form-item-phone">
							<label class="select-country" id="select-country"
								country_id="0086">中国 0086<a href="javascript:void(0) "
								tabindex="-1" class="arrow"></a></label> <input type="text"
								id="form-phone" name="phone" class="field"
								onfocus="form_phonePrompt()" onkeyup="form_phoneCheck()"
								placeholder="建议使用常用手机" autocomplete="off" maxlength="11"
								default='<i class="i-def"></i>完成验证后，你可以用该手机登录和找回密码' /> <i
								class="i-status"></i>
						</div>
						<!--<div class="input-tip">
							<span></span>
						</div>
						 <div class="orEmail">
							<a href="javascript:;" tabindex="-1">邮箱验证</a>
						</div> -->
					</div>
					<%-- <div class="form-item form-item-authcode">
						<label>验 证 码</label> <input type="text" autocomplete="off"
							name="authCode" id="authCode" maxlength="6"
							class="field form-authcode" placeholder="请输入验证码"
							default='<i class="i-def"></i>看不清？点击图片更换验证码' /> <img
							class="img-code" title="换一换" id="imgAuthCode"
							onclick="this.src= document.location.protocol +'//authcode.jd.com/verify/image?a=0&amp;acid=61be1008-0607-43da-9945-a996e2659566&amp;uid=61be1008-0607-43da-9945-a996e2659566&amp;srcid=reg&amp;is=b2d930aafbe7e3ae9e0f1d199d4f05af&amp;yys='+new Date().getTime()"
							ver_colorofnoisepoint="#888888" />
					</div>
					<div class="input-tip">
						<span></span>
					</div> --%>
					<div class="form-item form-item-phonecode">
						<label>手机验证码</label> <input type="text" name="mobileCode" id="mobileCode"
							maxlength="4" id="phoneCode" class="field phonecode"
							onfocus="mobileCodePrompt()" onkeyup="mobileCodeCheck()"
							placeholder="请输入手机验证码" autocomplete="off" />
						<button id="getPhoneCode" class="btn-phonecode" type="button" onclick="getSMS()">获取验证码</button>
						<i class="i-status"></i>
					</div>
					<div class="input-tip">
						<span></span>
					</div>
					<div class="form-agreen">
						<div>
							<input type="checkbox" name="agreen"  onchange="form_agreen()"/>阅读并同意<a
								href="javascript:;" id="protocol">《用户注册协议》</a> <a
								href="javascript:;" class="blue" id="privacyProtocolTrigger">《隐私政策》</a>
						</div>
						<div class="input-tip">
							<span></span>
						</div>
					</div>
					<div>
						<button type="submit" class="btn-register">立即注册</button>
					</div>

				</form>
			</div>
			<div id="form-company" class="reg-other">
				<!--                  <div class="company-reg">
                    <a href="../reg/company" target="_blank" clstag="pageclick|keycount|201612011|3">
                        <i class="i-company"></i>
                        <span>企业用户注册</span>
                    </a>
                </div>
                                        <div class="inter-cust">
                    <a href="//reg.joybuy.com/reg/person.html" target="_blank" clstag="pageclick|keycount|201612011|4">
                        <i class="i-global"></i>
                        <span>INTERNATIONAL<br/>CUSTOMERS</span>
                    </a>
                </div>
                        <div class="phone-fast-reg"></div> -->
			</div>
		</div>
		<div id="protocoldiv" style="display: none">
			<div class="protocol-con">
				<h4>用户注册协议</h4>
			</div>
			<div class="protocol-button">
				<button>同意并继续</button>
			</div>
		</div>
		<div id="privacyProtocol" style="display: none">
			<div class="protocol-con">

				<p class="MsoNormal" align="center"
					style="text-align: centerline-height:150%">
					<b> <span style="line-height: 150%;">隐私政策</span>
					</b> <span style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;"> </span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">京东（以下或称“我们”）注重保护用户个人信息及个人隐私。本隐私政策解释了用户（“您”）个人信息收集（以下或称“信息”）和使用的有关情况，本隐私政策适用于京东向您提供的所有相关服务（包括但不限于电子商务、网络资讯、网络社交、互联网金融服务等，以下称“京东服务”或“服务”）。<b
						style="mso-bidi-font-weight: normal">如果您不同意本隐私政策的任何内容，您应立即停止使用京东服务。当您使用京东提供的任一服务时，即表示您已同意我们按照本隐私政策来合法使用和保护您的个人信息。</b><span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">一、您个人信息的收集</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">我们收集信息是为了向您提供更好以及更个性化的服务，并努力提高您的用户体验。我们收集信息的种类如下：<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">1</span></b><b><span
						style="line-height: 150%;">、您向我们提供的信息</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">当您注册京东账户及您在使用相关京东服务时填写、提交及<span>/</span>或其他任何方式提供的信息，包括您的姓名、性别、出生年月日、身份证号码、护照姓、护照名、护照号码、电话号码、电子邮箱、收货地址、京东钱包或网银在线账号、银行卡信息及相关附加信息（如您地址中的所在的省份和城市、邮政编码等）。<b
						style="mso-bidi-font-weight: normal">您可以选择不提供某一或某些信息，但是这样可能使您无法使用京东的许多特色服务。</b>请您理解，我们使用您提供的信息是为了回应您的要求，为您在京东购物或享受服务提供便利，完善京东网站以及与您进行信息沟通。另外，我们可能会将您所提供的信息与您的京东账户关联，用以识别您的身份。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">2</span></b><b><span
						style="line-height: 150%;">、我们在您使用服务过程中获得的信息<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">为了提高服务质量和用户体验，我们会留存您使用服务以及使用方式的相关信息，这类信息包括：<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">（<span>1</span>）您的浏览器和计算机上的信息。
					</span></b><span style="line-height: 150%;">在您访问京东网站或使用京东服务时，京东系统自动接收并记录的您的浏览器和计算机上的信息（包括但不限于您的<span>IP</span>地址、浏览器的类型、使用的语言、访问日期和时间、软硬件特征信息及您需求的网页记录等数据）。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">（<span>2</span>）您的位置信息。
					</span></b><span style="line-height: 150%;">当您下载或使用京东、其关联方及合作伙伴开发的应用程序（例如京东<span>APP</span>），或访问移动网页使用京东服务时，京东可能会读取您的位置（大多数移动设备将允许您关闭定位服务，具体建议您联系您的移动设备的服务商或生产商）。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">（<span>3</span>）您的设备信息。
					</span></b><span style="line-height: 150%;">京东可能会读取您访问京东或使用京东服务时所使用的终端设备的信息，包括但不限于设备型号、设备识别码、操作系统、分辨率、电信运营商等。<span
						lang=" EN-US"> </span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">（<span>4</span>）您的行为或交易信息。
					</span></b><span style="line-height: 150%;">京东可能会记录您访问京东或使用京东服务时所进行的操作以及您在京东网站上进行交易的相关信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">除上述信息外，我们还可能为了提供服务及改进服务质量的合理需要而获得的您的其他信息，包括您与我们的客服团队联系时您提供的相关信息，您参与问卷调查时向我们发送的问卷答复信息，以及您与京东的关联方、京东合作伙伴之间互动时我们获得的相关信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">同时，为提高您使用京东提供的服务的安全性，更准确地预防钓鱼网站欺诈和木马病毒，我们可能会通过了解一些您的网络使用习惯、您常用的软件信息等手段来判断您账户的风险，并可能会记录一些我们认为有风险的链接（“<span>URL</span>”）。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">3</span></b><b><span
						style="line-height: 150%;">、来自第三方的信息</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">指在您注册京东账户和使用服务过程中，您授权的京东可向京东的关联方、合作伙伴所收集的相关信息，以及您授权的京东的关联方、合作伙伴可向京东分享相关的信息。这些信息包括但不限于您的身份信息、行为信息、交易信息、设备信息等，京东会将此类信息汇总，用于帮助京东向您提供更好以及更加个性化的服务或更好的预防互联网欺诈。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">您了解并同意，以下信息不适用本隐私政策：<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>1</span>）您在使用京东提供的搜索服务时输入的关键字信息；<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>2</span>）信用评价、违反法律法规规定或违反京东平台规则行为及京东已对您采取的措施；<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>3</span>）应法律法规要求需公示的企业名称等相关工商注册信息以及自然人经营者的信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>4</span>）其他您与京东或京东的关联方所签署的协议（包括在线签署的电子协议，例如《京东用户注册协议》）以及京东平台规则中明确约定或提示您不适用本隐私政策的与您有关的信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;"></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">二、我们对您个人信息的管理和使用<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">为向您提供服务、提升我们的服务质量以及优化您的服务体验，我们会在符合法律规定或根据您授权的情况下使用您的个人信息，并主要用于下列用途：<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">1</span><span
						style="line-height: 150%;">、向您提供您使用的各项服务，并维护、改进这些服务。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">2</span><span
						style="line-height: 150%;">、向您推荐您可能感兴趣的内容，包括但不限于向您发出产品和服务信息，或通过系统向您展示个性化的第三方推广信息，或在征得您同意的情况下与京东的合作伙伴共享信息以便他们向您发送有关其产品和服务的信息。如您不希望接收上述信息，可通过相应的退订功能进行退订。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">3</span><span
						style="line-height: 150%;">、我们可能使用您的个人信息以验证身份、预防、发现、调查欺诈、危害安全、非法或违反与我们或其关联方协议、政策或规则的行为，以保护您、其他京东用户，或我们或其关联方的合法权益。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">4</span><span
						style="line-height: 150%;">、我们可能会将来自某项服务的个人信息与来自其他服务所获得的信息结合起来，用于为了给您提供更加个性化的服务使用，例如为让您通过购物拥有更广泛的社交圈而使用、共享或披露您的信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">5</span><span
						style="line-height: 150%;">、我们会对我们的服务使用情况进行统计，并可能会与公众或第三方分享这些统计信息，以展示我们的产品或服务的整体使用趋势。但这些统计信息不包含您的任何身份识别信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">6</span><span
						style="line-height: 150%;">、让您参与有关我们产品及服务的调查。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">7</span><span
						style="line-height: 150%;">、经您同意或授权的其他用途。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">三、您个人信息的分享<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">您的个人信息是我们为您提供服务的重要部分，我们会遵循法律规定对您的信息承担保密义务<b
						style="mso-bidi-font-weight: normal">。除以下情形外，我们不会将您的个人信息披露给第三方</b>：<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">1</span><span
						style="line-height: 150%;">、征得您的同意或授权。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">2</span><span
						style="line-height: 150%;">、根据法律法规的规定或行政或司法机构的要求。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">3</span><span
						style="line-height: 150%;">、出于实现“我们对您个人信息的管理和使用”部分所述目的，或为履行我们在《京东用户注册协议》或本隐私政策中的义务和行使我们的权利，向京东的关联方、合作伙伴或代表京东履行某项职能的第三方（例如代表我们发出推送通知的通讯服务商、处理银行卡的支付机构等）分享您的个人信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">4</span><span
						style="line-height: 150%;">、如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能产生的权利纠纷。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">5</span><span
						style="line-height: 150%;">、只有共享您的信息，才能提供您需要的服务，或处理您与他人的纠纷或争议。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">6</span><span
						style="line-height: 150%;">、您出现违反中国有关法律、法规规定或者违反您与京东签署的相关协议（包括在线签署的电子协议）或违反相关京东平台规则时需要向第三方披露的情形。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">7</span><span
						style="line-height: 150%;">、为维护京东及其关联方或其他京东用户的合法权益。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">随着我们业务的发展，我们及我们的关联方有可能进行合并、收购、资产转让或类似的交易，您的个人信息有可能作为此类交易的一部分而被转移。我们将在转移前通知您。<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;"></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">四、您个人信息的安全</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">京东严格保护您的个人信息安全。我们使用各种制度、安全技术和程序等措施来保护您的个人信息不被未经授权的访问、篡改、披露或破坏。如果您对我们的个人信息保护有任何疑问，请联系我们的客服。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">在通过京东网站与第三方进行网上商品或服务的交易时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或者邮政地址等。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是你的账户及密码发生泄露，请您立即联络我们的客服，以便我们采取相应措施。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">五、访问和更新您的个人信息</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">您可以查阅或更新您提交给京东的个人信息。一般情况下，您可随时浏览、修改自己提交的信息，<b
						style="mso-bidi-font-weight: normal">但出于安全性和身份识别的考虑，您可能无法修改注册京东用户或某种特定服务时提供的初始注册信息或其他验证信息。</b>如某种特定服务要求您无法修改您所提供的初始信息，我们会在您注册或准备使用该种服务时给予您相应的提示。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">六、<span>Cookie
						</span>及网络<span> Beacon</span>的使用
					</span></b><span style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">1</span><span
						style="line-height: 150%;">、<span>Cookie</span>的使用<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">Cookie</span><span
						style="line-height: 150%;">是由网页服务器存放在您的访问设备上的文本文件。指定给您的<span>Cookie
					</span>是唯一的，它只能被将<span>Cookie</span>发布给您的域中的<span>Web</span>服务器读取。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">京东使用<span> Cookie </span>来帮助您实现您的联机体验的个性化，使您在京东及其关联方获得更轻松的访问体验。例如，<span>Cookie
					</span>会帮助您在后续访问京东网站时调用您的信息，简化记录您填写个人信息（例如一键登录等）的流程；为您提供安全购物的偏好设置；帮助您优化对广告的选择与互动；保护您的数据安全等。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">您有权接受或拒绝<span>
							Cookie</span>。大多数浏览器会自动接受<span>Cookie</span>，但您通常可根据自己的需要来修改浏览器的设置以拒绝<span>
							Cookie</span>。如果选择拒绝 <span>Cookie</span>，那么您可能无法完全体验所访问的京东网站或某些服务的全部功能。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;">2</span><span
						style="line-height: 150%;">、网络<span>Beacon</span>的使用<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">京东网页上常会包含一些电子图象（称为<span>"</span>单像素<span>"
							GIF </span>文件或<span> "</span>网络<span> beacon"</span>），它们可以帮助网站计算浏览网页的用户或访问某些<span>cookie</span>。京东使用网络<span>beacon</span>的方式有：<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>1</span>）京东通过在京东网站上使用网络<span>beacon</span>，计算用户访问数量，并通过访问<span>
							cookie </span>辨认注册用户。 <span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">（<span>2</span>）京东通过得到的<span>cookie</span>信息，可以在京东网站提供个性化服务。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b><span style="line-height: 150%;">七、未成年人的个人信息保护</span></b><span
						style="line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">京东非常重视对未成年人个人信息的保护。若您是<span>18</span>周岁以下的未成年人，在使用京东服务前，应事先取得您家长或法定监护人的书面同意。京东根据国家相关法律法规的规定保护未成年人的个人信息。<span></span></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<b style="mso-bidi-font-weight: normal"><span
						style="line-height: 150%;">八、通知和修订<span></span></span></b>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="font-size: 12.0pt; line-height: 150%;"></span>
				</p>

				<p class="MsoNormal" style="line-height: 150%">
					<span style="line-height: 150%;">为给你提供更好的服务，京东的业务将不时变化，本隐私政策也将随之调整。京东会通过在京东网站、移动端上发出更新版本并提醒您相关内容的更新，也请您访问京东以便及时了解最新的隐私政策。如果您对于本隐私政策或在使用京东服务时对于您的个人信息或隐私情况有任何问题，请联系京东客服并作充分描述，京东将尽力解决。</span>
				</p>
			</div>
			<div class="protocol-button">
				<button>同意并继续</button>
			</div>
		</div>
	</div>
	<div id="form-footer" class="footer w">
		<div class="links">
			<a rel="nofollow" target="_blank"
				href="//www.jd.com/intro/about.aspx"> 关于我们</a>| <a rel="nofollow"
				target="_blank" href="//www.jd.com/contact/">联系我们</a>| <a
				rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘</a>| <a
				rel="nofollow" target="_blank"
				href="//www.jd.com/contact/joinin.aspx">商家入驻</a>| <a rel="nofollow"
				target="_blank" href="//www.jd.com/intro/service.aspx">广告服务</a>|
			<!--  <a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>| -->
			<a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>| <a
				target="_blank" href="//media.jd.com">销售联盟</a>|
			<!--  <a href="//club.jd.com/" target="_blank">京东社区</a>|
        <a href="//gongyi.jd.com" target="_blank">京东公益</a>| -->
			<a target="_blank" href="//en.jd.com/"
				clstag="pageclick|keycount|20150112ABD|9">English Site</a>
		</div>
		<div class="copyright">
			Copyright&copy;2004-2016&nbsp;&nbsp;晓米佳XMJ.com&nbsp;版权所有</div>
	</div>


	<!-- <script type="text/javascript">
    var localmisc = $("#localmisc");
    if(1==localmisc.val()){
        seajs.use('../misc2016/js/localRegister', function (reg) {
            reg.init();
        })
    }else{
        seajs.use('//misc.360buyimg.com/user/reg/1.0.0/js/register.1130', function (reg) {
            reg.init();
        })
    }
</script>-->
	<!-- <a target="_blank"
		href="//surveys.jd.com/index.php?r=survey/index/sid/447941/lang/zh-Hans"
		class="feedback"
		style="margin-top: -85px; position: fixed; right: 0px; bottom: 50%;"></a> -->
</body>
</html>


