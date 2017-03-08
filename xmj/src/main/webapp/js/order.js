$(function() {
	loadOrders()
});
	
function loadOrders(){
	var start = ""
	var str = ""
	var end = ""
		/*start =  '<tbody id="tb-'+data.rows[n].o_id +'">'
		+'<tr class="sep-row">'
		+'<td colspan="5"></td>'
		+'</tr>'
		+'<tr class="tr-th">'
		+'<td colspan="5"><span class="gap"></span> <span'
		+'	class="dealtime" title="'+data.rows[n].o_date +'">'+data.rows[n].o_date 
		+'		</span> <input type="hidden" id="datasubmit-'+data.rows[n].o_id +'"'
		+'	value="'+data.rows[n].o_date +'" /> <span class="number">订单号：<a'
		+'		name="orderIdLinks" id="idUrl49457805343" target="_blank"'
		+'		href="//details.jd.com/normal/item.action?orderid=49457805343&PassKey=CD61AB446A98C8E71D45F3CFE049094E"'
		+'		>'+data.rows[n].o_id +'</a>'
		+'</span>'
		+'	<div class="tr-operate">'
		+'		<span class="order-shop"> <a href="#none"'
		+'			target="_blank" class="shop-txt venderName636237" ></a> <a'
		+'			class="btn-im venderChat636237" href="#none"'
		+'			target="_blank" title="联系卖家" ></a>'
		+'		</span> <span class="tel"> <i'
		+'			class="tel-icon venderTel636237"></i>'
		+'		</span> <a href="#none"'
		+'			class="order-del" _orderid="49457805343"'
		+'			_passkey="ACE8E999AE432BAF938CCD1212943F30"></a>'
		+'	</div></td>'
		+'</tr>'
		+'<tr class="tr-bd" id="track'+data.rows[n].o_id +'" oty="22,4,70">'
		alert(data.rows[n].p_name +" "
		+ data.rows[n].s_num +" "
		+ data.rows[n].properties+" "
		+ data.rows[n].s_date)
	str = '<td>'
		+'	<div class="goods-item p-'+data.rows[n].p_id +'">'
		+'		<div class="p-img">'
		+'			<a href=""  target="_blank"> '
		+'			<img class="err-product" src="//misc.360buyimg.com/lib/img/e/blank.gif" title=""'
		+'				data-lazy-img="" width="60" height="60" /></a>'
		+'		</div>'
	end = '		<div class="p-msg">'
		+'			<div class="p-name">'
		+'				<a href="" class="a-link" target="_blank" title="'+data.rows[n].p_name +'">'+data.rows[n].p_name +'</a>'
		+'			</div>'
		+'			<div class="p-extra">'
		+'				<ul class="o-info">'
		+'					<li><span class="o-similar J-o-similar"'
		+'						data-sku="11151047032"><i></i><em>相似商品</em></span></li>'
		+'				</ul>'
		+'			</div>'
		+'		</div>'
		+'	</div>'
		+'	<div class="goods-number">x'+data.rows[n].s_num +'</div>'
		+'	<div class="goods-repair"></div>'
		+'	<div class="clr"></div>'
		+'</td>'
		+'<td rowspan="1">'
		+'	<div class="consignee tooltip">'
		+'		<span class="txt">'+data.rows[n].addr_name +'</span><b></b>'
		+'		<div class="prompt-01 prompt-02">'
		+'			<div class="pc">'
		+'				<strong>'+data.rows[n].addr_name +'</strong>'
		+'				<p>'+data.rows[n].introduce +'</p>'
		+'				<p>'+data.rows[n].addr_phone +'</p>'
		+'			</div>'
		+'			<div class="p-arrow p-arrow-left"></div>'
		+'		</div>'
		+'	</div>'
		+'</td>'
		+'<td rowspan="1">'
		+'	<div class="amount">'
		+'		<span>总额 &yen;148.00</span> <br> <span class="ftx-13">在线支付</span>'
		+'	</div>'
		+'</td>'
		+'<td rowspan="1">'
		+'	<div class="status">'
		+'		<span class="order-status"> 已取消 </span> <br>'
		+'		 <a href="//details.jd.com/normal/item.action?orderid=49457805343&PassKey=CD61AB446A98C8E71D45F3CFE049094E"'
		+'			target="_blank">订单详情</a>'
		+'	</div>'
		+'</td>'
		+'<td rowspan="1" id="operate49457805343">'
		+'	<div class="operate">'
		+' 		<div id="pay-button-49457805343" _baina="0"></div>'
		+'		<a href="//cart.jd.com/reBuyForOrderCenter.action?wids=11151047032&nums=1&rid=1487938182188"'
		+'			class="btn-again" target="_blank"'
		+'			clstag="click|keycount|orderlist|buy"><b></b> 立即购买 </a><br>'
		+'	</div>'
		+'</td>'
		+'</tr>'
		+'</tbody>'
		
		$("#orderTable").append(str)*/
		
		$.post("user/getOrders?page=1&rows=2",null,function(data){
			
			var cPage = '<span class="text">共'+data.total+'条记录</span> '   
			+' <span class="text">共'+data.totalPage+'页</span>  '
			+'<span class="prev-disabled">上一页<b></b></span>'
			+'<a class="current">'+data.currPage+'</a>'
			+'<span class="next-disabled" >下一页<b></b></span>'
			$("#changePage").html(cPage)
			
			var len = data.rows.length
			if(len > 0){
				for(var n = 0; n<len;n++){
					start =  '<tbody id="tb-'+data.rows[n].o_id +'">'
					+'<tr class="sep-row">'
					+'<td colspan="5"></td>'
					+'</tr>'
					+'<tr class="tr-th">'
					+'<td colspan="5"><span class="gap"></span> <span'
					+'	class="dealtime" title="'+data.rows[n].o_date +'">'+data.rows[n].o_date 
					+'		</span> <input type="hidden" id="datasubmit-'+data.rows[n].o_id +'"'
					+'	value="'+data.rows[n].o_date +'" /> <span class="number">订单号：<a'
					+'		name="orderIdLinks" id="idUrl49457805343" target="_blank"'
					+'		href="//details.jd.com/normal/item.action?orderid=49457805343&PassKey=CD61AB446A98C8E71D45F3CFE049094E"'
					+'		>'+data.rows[n].o_id +'</a>'
					+'</span>'
					+'	<div class="tr-operate">'
					+'		<span class="order-shop"> <a href="#none"'
					+'			target="_blank" class="shop-txt venderName636237" ></a> <a'
					+'			class="btn-im venderChat636237" href="#none"'
					+'			target="_blank" title="联系卖家" ></a>'
					+'		</span> <span class="tel"> <i'
					+'			class="tel-icon venderTel636237"></i>'
					+'		</span> <a href="#none"'
					+'			class="order-del" _orderid="49457805343"'
					+'			_passkey="ACE8E999AE432BAF938CCD1212943F30"></a>'
					+'	</div></td>'
					+'</tr>'
					+'<tr class="tr-bd" id="track'+data.rows[n].o_id +'" oty="22,4,70">'
					
					end =  '</td>'
						+'<td rowspan="1">'
						+'<div class="status">'
						+'<span class="order-status ftx-04">'
						+'等待付款 </span> <br>'
						+' <div class="tooltip" _orderid="50595543501" _ordertype="0" _orderstatus="1" _ordership="70">'
						+'    <i class="auto-icon"></i> 跟踪'
						+'    <i class="circle-icon"></i>'
						+'   <div class="prompt-01" style="display: none; top: -67px;">'
						+'        <div class="pc">'
						+'            <div class="p-tit"> 普通快递 </div>'
						+'           <div class="logistics-cont" id="tracker50595543501">'
						+'<ul><li class="first"><i class="node-icon"></i>'
						+'<a href="javascript:void(0);"'
						+'	target="_blank">您提交了订单，请等待系统确认</a>'
						+'<div class="ftx-13">2017-02-28 20:03:32</div></li></ul>'
						+'</div>'
						+'</div>'
						+'<div class="p-arrow p-arrow-left" style="top: 52px;"></div>'
						+'</div>'
						+'</div>'
						+'<a href="javascript:void(0);"'
						+'	target="_blank">订单详情</a>'
						+'</div>'
						/*
						+'	<div class="status">'
						+'		<span class="order-status">已取消  '+data.rows[n].obuy_status +' </span> <br>'
						+'		 <a href="//details.jd.com/normal/item.action?orderid=49457805343&PassKey=CD61AB446A98C8E71D45F3CFE049094E"'
						+'			target="_blank">订单详情</a>'
						+'	</div>'*/
						+'</td>'
						+'<td rowspan="1" id="operate49457805343">'
						+'<div class="operate">'
						+'<div class="count-time count-time-red" style="display: block;">'
						+'<i class="time-icon"></i>剩余0时54分</div>'
						+' <a href="javascript:void(0);" class="btn-pay"' 
						+'	target="_blank">付款</a><br>'
						+' <a class="a-link order-cancel" href="javascript:void(0);" >取消订单</a><br>'
						+'</div>'
						/*
	                	+'	<div class="operate">'
						+' 		<div id="pay-button-49457805343" _baina="0"></div>'
						+'		<a href="//cart.jd.com/reBuyForOrderCenter.action?wids=11151047032&nums=1&rid=1487938182188"'
						+'			class="btn-again" target="_blank"'
						+'			clstag="click|keycount|orderlist|buy"><b></b> 立即购买 </a><br>'
						+'	</div>'*/
						+'</td>'
						+'</tr>'
						+'</tbody>'
					
					var string = data.rows[n].properties.split(",")
					var len2 = string.length
					for(var i = 0;i < len2;i++){
						var array = string[i].split(":")
						var len3 = array.length
						for(var j = 0;j < len3;j++){
							if(array[j]=='路径'){
								str = '<td>'
									+'	<div class="goods-item p-'+data.rows[n].p_id +'">'
									+'		<div class="p-img">'
									+'			<a href=""  target="_blank"> '
									+'			<img class="err-product" src="'+array[j+1]+'" title="'+data.rows[n].p_name+'"'
									+'				data-lazy-img="" width="60" height="60" /></a>'
									+'		</div>'
								    
							}else{
								if(array[j]=='价格'){
									price = data.rows[n].odd_num * array[j+1]
									
									str += '    	<div class="p-msg">'
									+'			<div class="p-name">'
									+'				<a href="" class="a-link" target="_blank" title="'+data.rows[n].p_name +'">'+data.rows[n].p_name +'</a>'
									+'			</div>'
									+'			<div class="p-extra">'
									+'				<ul class="o-info">'
									+'					<li><span class="o-similar J-o-similar"'
									+'						data-sku="11151047032"><i></i><em>相似商品</em></span></li>'
									+'				</ul>'
									+'			</div>'
									+'		</div>'
									+'	</div>'
									+'	<div class="goods-number">x'+data.rows[n].odd_num +'</div>'
									+'	<div class="goods-repair"></div>'
									+'	<div class="clr"></div>'
									+'</td>'
									+'<td rowspan="1">'
									+'	<div class="consignee tooltip">'
									+'		<span class="txt">'+data.rows[n].addr_name +'</span><b></b>'
									+'		<div class="prompt-01 prompt-02">'
									+'			<div class="pc">'
									+'				<strong>'+data.rows[n].addr_name +'</strong>'
									+'				<p>'+data.rows[n].introduce +'</p>'
									+'				<p>'+data.rows[n].addr_phone +'</p>'
									+'			</div>'
									+'			<div class="p-arrow p-arrow-left"></div>'
									+'		</div>'
									+'	</div>'
									+'</td>'
									+'<td rowspan="1">'
									+'	<div class="amount">'
									+'		<span>总额 &yen;'+data.rows[n].odd_num * array[j+1]+'</span> <br> <span class="ftx-13">在线支付</span>'
									+'	</div>'
								}
							}
							//alert(array[j])
						}
					}
					$("#orderTable").append( start + str + end)
				}
			}
			
		},"json")
		
}

function stateSelect(obj){
	$(obj).parent().parent().find("a.curr").attr("class"," ")
	$(obj).attr("class","curr")
	$('.state-txt').html($(obj).text()+'<span class="blank"></span>')
}

function timeSelect(obj){
	$(obj).parent().parent().find("a.curr").attr("class"," ")
	$(obj).attr("class","curr")
	$('.time-txt').html($(obj).text()+'<span class="blank"></span>')
}

function timeSpread(){
	$('.time-list').css("display","block")
}

function timeFurl(){
	$('.time-list').css("display","none")
}


function orderStateSpread(){
	$('.state-list').css("display","block")
}

function orderStateFurl(){
	$('.state-list').css("display","none")
}

function showAddress(obj){
	$('#order01').find("h3").text($(obj).text())
	$('#order02').css("display","none")
	$('#guessing-liked').css("display","block")

}