<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>晓米佳</title>
  <base href="/xmj/">
  <meta name="description" content="专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
  <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
  <link type="text/css" rel="stylesheet" href="css/index.css"
	source="widget" />
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

<body class="index">
	<div id="shortcut">
		<div class="w">
			<ul class="fl">
				<li class="dorpdown" id="ttbar-mycity"></li>
			</ul>

			<ul class="fr">
				<li class="fore1" id="ttbar-login" >
					<a target="_blank" href="/xmj/page/login.jsp" class="link-login">你好，请登录</a>
					&nbsp;&nbsp;<a href="/xmj/page/register.jsp" class="link-regist style-red">免费注册</a>
				</li>
				<li class="fore2 dorpdown" clstag="h|keycount|2016|01d">
					<div class="dt cw-icon" style="display: none">
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
								<div class="item"><a href="/xmj/page/order.jsp" 
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
        <li class="fore10 mobile" id="J_mobile" clstag="h|keycount|2016|01i" style="display: none;">
        	<div class="dt mobile_txt" >手机晓米佳</div>
        		<!-- <div class="mobile_static">
                    <div class="mobile_static_qrcode"></div>
                </div> -->
        	<div id='J_mobile_pop' class='mod_loading mobile_pop'>
            </div>
        </li>
      </ul>
    </div>
  </div>

  <div id="header">
    <div class="w">
      <div id="logo" class="logo" clstag="h|keycount|2016|02a">
        <h1 class="logo_tit"><a href="/xmj/index.jsp" class="logo_tit_lk">晓米佳</a></h1>
        <h2 class="logo_subtit">晓米佳,多快好省</h2>
        <div class="logo_extend"></div>
      </div>
      <div id="search">
        <div class="search-m">
          <div class="search_logo">
            <a href="//www.jd.com" class="search_logo_lk" clstag="h|keycount|2016|02b">晓米佳，多快好省</a>
          </div>
          <ul id="shelper" style="display: none"></ul>

          <div class="form">
            <input clstag="h|keycount|2016|03a" type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" />
            <button clstag="h|keycount|2016|03c" onclick="search('key');return false;" class="button"><i class="iconfont">&#xe603;</i></button>
          </div>
        </div>
      </div>
		<div id="settleup" class="dorpdown">
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
		</div>

		<div id="hotwords" ></div>
        <div id="navitems">
		<ul id="navitems-group1">
			<li clstag="h|keycount|2016|05a" class="fore1" >
				<a target="_blank" href="//miaosha.jd.com/">秒杀</a>
			</li>
			<li clstag="h|keycount|2016|05b" class="fore2" >
				<a target="_blank" href="https://a.jd.com/">优惠券</a>
			</li>
			<li clstag="h|keycount|2016|05c" class="fore3" >
				<a target="_blank" href="//red.jd.com/">闪购</a>
			</li>
			<li clstag="h|keycount|2016|05d" class="fore4" >
				<a target="_blank" href="//paimai.jd.com/">拍卖</a>
			</li>
		</ul>
		<div class="spacer"></div>
		<ul id="navitems-group2">
			<li clstag="h|keycount|2016|05e" class="fore1" >
				<a target="_blank" href="https://channel.jd.com/fashion.html">服装城</a>
			</li>
			<li clstag="h|keycount|2016|05f" class="fore2" >
				<a target="_blank" href="//chaoshi.jd.com/">晓米佳超市</a>
			</li>
			<li clstag="h|keycount|2016|05g" class="fore3" >
				<a target="_blank" href="//fresh.jd.com/">生鲜</a>
			</li>
			<li clstag="h|keycount|2016|05h" class="fore4" >
				<a target="_blank" href="//www.jd.hk/">全球购</a>
			</li>
		</ul>
		<div class="spacer"></div>
		<ul id="navitems-group3">
			<li clstag="h|keycount|2016|05i" class="fore1" >
				<a target="_blank" href="//jr.jd.com/">晓米佳金融</a>
			</li>
		</ul>
    </div>
<!--index_ok-->


      <div id="treasure" clstag="h|keycount|2016|07a"></div>
    </div>
  </div>
	<div class="fs">
		<div class="grid_c1 fs_inner">
			<div class="fs_col1">
				<div class="J_cate cate">
					<ul class="JS_navCtn cate_menu">
						<li class="cate_menu_item" data-index="1"
							clstag="h|keycount|2016|0601a"><a target="_blank"
							class="cate_menu_lk" href="//jiadian.jd.com">家用电器</a></li>
						<li class="cate_menu_item" data-index="2"
							clstag="h|keycount|2016|0602a"><a target="_blank"
							class="cate_menu_lk" href="//shouji.jd.com/">手机</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//wt.jd.com">运营商</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//shuma.jd.com/">数码</a></li>
						<li class="cate_menu_item" data-index="3"
							clstag="h|keycount|2016|0603a"><a target="_blank"
							class="cate_menu_lk" href="//diannao.jd.com/">电脑办公</a></li>
						<li class="cate_menu_item" data-index="4"
							clstag="h|keycount|2016|0604a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/home.html">家居</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/furniture.html">家具</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/decoration.html">家装</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/kitchenware.html">厨具</a></li>
						<li class="cate_menu_item" data-index="5"
							clstag="h|keycount|2016|0605a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/1315-1342.html">男装</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/1315-1343.html">女装</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/children.html">童装</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/1315-1345.html">内衣</a></li>
						<li class="cate_menu_item" data-index="6"
							clstag="h|keycount|2016|0606a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/beauty.html">个护化妆</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/1620-1625.html">清洁用品</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/pet.html">宠物</a></li>
						<li class="cate_menu_item" data-index="7"
							clstag="h|keycount|2016|0607a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/shoes.html">鞋靴</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/bag.html">箱包</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/jewellery.html">珠宝</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/1672-2615.html">奢侈品</a></li>
						<li class="cate_menu_item" data-index="8"
							clstag="h|keycount|2016|0608a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/yundongcheng.html">运动</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/outdoor.html">户外</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/watch.html">钟表</a></li>
						<li class="cate_menu_item" data-index="9"
							clstag="h|keycount|2016|0609a"><a target="_blank"
							class="cate_menu_lk" href="http://car.jd.com/">汽车</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//che.jd.com/">汽车用品</a></li>
						<li class="cate_menu_item" data-index="10"
							clstag="h|keycount|2016|0610a"><a target="_blank"
							class="cate_menu_lk" href="//baby.jd.com">母婴</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//toy.jd.com/">玩具乐器</a></li>
						<li class="cate_menu_item" data-index="11"
							clstag="h|keycount|2016|0611a"><a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/food.html">食品</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//channel.jd.com/wine.html">酒类</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//fresh.jd.com">生鲜</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//china.jd.com">特产</a></li>
						<li class="cate_menu_item" data-index="12"
							clstag="h|keycount|2016|0612a"><a target="_blank"
							class="cate_menu_lk" href="//health.jd.com">医药保健</a></li>
						<li class="cate_menu_item" data-index="13"
							clstag="h|keycount|2016|0613a"><a target="_blank"
							class="cate_menu_lk" href="//book.jd.com/">图书</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//mvd.jd.com/">音像</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//e.jd.com/ebook.html">电子书</a></li>
						<li class="cate_menu_item" data-index="14"
							clstag="h|keycount|2016|0614a"><a target="_blank"
							class="cate_menu_lk" href="//jipiao.jd.com/">机票</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//hotel.jd.com/">酒店</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//trip.jd.com/">旅游</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//ish.jd.com/">生活</a></li>
						<li class="cate_menu_item" data-index="15"
							clstag="h|keycount|2016|0615a"><a target="_blank"
							class="cate_menu_lk" href="//licai.jd.com/">理财</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//z.jd.com/">众筹</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//baitiao.jd.com">白条</a><span
							class="cate_menu_line">/</span> <a target="_blank"
							class="cate_menu_lk" href="//bao.jd.com/">保险</a></li>
					</ul>
					<div class="JS_popCtn cate_pop mod_loading" style="display: none;"></div>
				</div>
			</div>
			<!--index_ok-->
			<div class="fs_col2">
				<div class="J_slider slider">
					<div class="J_slider_main slider_main">
						<img alt="" src="image/fengmian.jpg">
					</div>
					<div class="J_slider_extend slider_extend clearfix">
						<a href="//sale.jd.com/act/4N8a0fkM3ZdV5.html "
							class="slider_bi_lk" target="_blank"> <img title="" alt=""
							src="image/fengmian002.jpg">
						</a> <a href="//sale.jd.com/act/4N8a0fkM3ZdV5.html "
							class="slider_bi_lk" target="_blank"> <img alt=""
							src="image/fengmian003.jpg">
						</a>
					</div>
				</div>
			</div>

			<div class="fs_col3">
				<div class="J_user user mod_loading"></div>

				<div class="news J_news">
					<div class="mod_tab news_tab J_news_tab">
						<div class="mod_tab_head J_tab_head clearfix">
							<a href="javascript:;"
								class="mod_tab_head_item news_first mod_tab_head_item_on"
								clstag="h|keycount|2016|10a">促销</a> <a href="javascript:;"
								class="mod_tab_head_item news_last" clstag="h|keycount|2016|10b">公告</a>
							<div class="news_tab_active J_news_tab_active"></div>
							<a href="//www.jd.com/moreSubject.aspx" target="_blank"
								class="news_more" clstag="h|keycount|2016|10c">更多</a>
						</div>
						<div class="mod_tab_content J_tab_content"
							clstag="h|keycount|2016|10d">
							<div class="mod_tab_content_item mod_tab_content_item_on">
								<ul class="news_list">

									<li class="news_item"><a
										href="//sale.jd.com/act/m2UDe4KZwJA.html" target="_blank"
										class="news_link">年末囤书 满300减100</a></li>
									<li class="news_item"><a
										href="//sale.jd.com/act/JX6dbWzkTfS0rHU8.html" target="_blank"
										class="news_link">注册即送200元大礼包</a></li>
									<li class="news_item"><a
										href="//sale.jd.com/act/dvxDXlJOmT.html" target="_blank"
										class="news_link">松鼠年货满199减100</a></li>
									<li class="news_item"><a href="//trip.jd.com/"
										target="_blank" class="news_link">每日享折扣 京东品质游</a></li>
								</ul>
							</div>
							<div class="mod_tab_content_item">
								<ul class="news_list">

									<li class="news_item"><a
										href="//www.jd.com/news.aspx?id=31856" target="_blank"
										class="news_link">京东生鲜丰富华北“菜篮子”</a></li>
									<li class="news_item"><a
										href="//www.jd.com/news.aspx?id=31780" target="_blank"
										class="news_link">南半球三国车厘子原产地直达</a></li>
									<li class="news_item"><a
										href="//www.jd.com/news.aspx?id=31581" target="_blank"
										class="news_link">京东售后退换无忧服务上线</a></li>
									<li class="news_item"><a
										href="//www.jd.com/news.aspx?id=31158" target="_blank"
										class="news_link">京东帮服务店突破1700家</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--index_ok-->




				<div id="J_service" class="service">
					<div class="service_entry">
						<ul class="J_tab_head service_list">
						</ul>
					</div>

					<div class="J_tab_content service_pop">
						<div class="mod_tab_content_item service_pop_item mod_loading"></div>
						<div class="mod_tab_content_item service_pop_item mod_loading"></div>
						<div class="mod_tab_content_item service_pop_item mod_loading"></div>
						<div class="mod_tab_content_item service_pop_item mod_loading"></div>
						<a class="J_service_pop_close service_pop_close iconfont"
							href="javascript:;">&#xe600;</a>
					</div>
				</div>
				<!--index_ok-->
			</div>
		</div>
		<div id="J_fs_act" class="fs_act"> </div>
	</div>
	<div class="J_f J_sk need_ani sk" id="seckill" data-tpl="seckill_tpl" data-custom="true" data-inlazyqueue="true">
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
	
 	<script type="text/javascript" src="easyui/jquery.min.js"></script>
    
	<script type="text/javascript"  src="js/index.js"></script>

</body>
</html><!--index_ok-->