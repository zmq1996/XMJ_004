var price = 0
var num = 0

$(function() {
           /* var str = '<div class=" item-last item-item item-selected " id="product_'+'1000'+'">'
			+'<div class="item-form">'
			+'	<div class="cell p-checkbox">'
			+'		<div class="cart-checkbox">'
			+'			<input p-type="11151047032_11" manFanZeng="0" type="checkbox" name="checkItem" '
			+'			value="11151047032_11_4025315760" checked="checked" class="jdcheckbox" data-bind="cbid" >'
			+'				<label for="" class="checked">勾选商品</label> <span class="line-circle"></span>'
			+'		</div>'
			+'	</div>'
			+'	<div class="cell p-goods">'
			+'		<div class="goods-item">'
			+'			<div class="p-img">'
			+'				<a href="//item.jd.com/'+'1000'+'.html" target="_blank" class="J_zyyhq_'+'1000'+'">'
			+'					<img alt="'+'书兰 卫衣男 2017春季新款韩版修身潮拼接连帽卡通绣花套头男士外套 绿色 M'+'"'
			+'					src="'+'//img10.360buyimg.com/cms/s80x80_jfs/t4078/132/1596283745/189841/7018bff5/588077fdN1ffd20ca.jpg'+'"></a>'
			+'			</div>'
			+'			<div class="item-msg">'
			+'				<div class="p-name">'
			+'					<a clstag="clickcart|keycount|xincart|cart_sku_name" href="//item.jd.com/'+'1000'+'.html" target="_blank">'
			+'						'+'书兰 卫衣男 2017春季新款韩版修身潮拼接连帽卡通绣花套头男士外套 绿色 M '+'</a>'
			+'				</div>'
			+'				<div class="p-extend"><span class="promise" _giftcard="giftcard_'+'1000'+'"> </span>'
			+'					<span class="promise" _yanbao="yanbao_'+'1000'+'_4025315760"><i class="jd-service-icon"></i></span>'
			+'				</div>'
			+'			</div>'
			+'		</div>'
			+'	</div>'
			+'	<div class="cell p-props p-props-new">'
			+'		<div class="props-txt" title="'+'绿色'+'">颜色：'+' 绿色'+'</div>'
			+'		<div class="props-txt" title="'+'M'+'">尺码：'+'M'+'</div>'
			+'	</div>'
			+'	<div class="cell p-price">'
			+'		<strong>¥148.00</strong> <a class="sales-promotion" href="#none" data-tips="更多促销"> 更多促销<b></b></a>'
			+'		<div id="sales-promotion_'+'1000'+'" class="promotion-tips">'
			+'			<div class="promotion-tit"> 促销信息<b></b> </div>'
			+'			<div class="promotion-cont">'
			+'				<ul>'
			+'					<li><input type="radio" multiPromotion="0" name="radioPromotion_'+'1000'+'"'
			+'						value="636237_4025315760_11151047032_11_4025315760" title="满2件总价9.0折，满3件总价8.5折，满4件总价8.0折"'
			+'						checked="checked">满2件总价9.0折，满3件总价8.5折，满4件总价8.0折</li>'
			+'					<li><input type="radio" multiPromotion="0" name="radioPromotion_11151047032"'
			+'						value="636237_-300_11151047032_11_4025315760" title="不使用活动优惠">不使用活动优惠</li>'
			+'				</ul>'
			+'				<div class="op-btns ac mt20">'
			+'					<a href="#none" class="btn-1 select-promotion" >确定</a>'
			+'					<a href="#none" class="btn-9 ml10 del cancel-promotion">取消</a>'
			+'				</div>'
			+'			</div>'
			+'		</div>'
			+'	</div>'
			+'	<div class="cell p-quantity">'
			+'		<div class="quantity-form" promoid="4025315760">'
			+'			<a href="javascript:void(0);" class="decrement disabled" id="decrement_636237_'+'1000'+'_1_11_4025315760">-</a>'
			+'			<input autocomplete="off" type="text" class="itxt" value="2"'
			+'				id="changeQuantity_636237_11151047032_1_11_0_4025315760" minnum="1" /> '
			+'				<a href="javascript:void(0);" class="increment" id="increment_636237_'+'1000'+'_1_11_0_4025315760">+</a>'
			+'		</div>'
			+'		<div class="ac ftx-03 quantity-txt" _stock="stock_'+'1000'+'"></div>'
			+'	</div>'
			+'	<div class="cell p-sum"> <strong>¥'+'148.00'+'</strong> </div>'
			+'	<div class="cell p-ops">'
			+'		<a id="remove_636237_11151047032_11_4025315760" data-name="'+'书兰 卫衣男 2017春季新款韩版修身潮拼接连...'+'"'
			+'			data-more="removed_148.00_1" class="cart-remove" href="javascript:void(0);">删除</a> '
			+'			<a href="javascript:void(0);" class="cart-follow" id="follow_636237_11151047032_11_4025315760">移到我的关注</a>'
			+'	</div>'
			+'</div>'
			+'<div class="item-extra mb10">'
			+'	<div class="unmarket-items" _unmarket="unmarket_1=='+'1000'+'" data="1315;1342;9732;11151047032;1487389195855"></div>'
			+'</div>'
			+'<div class="item-line"></div>'
			+'</div>'
			+'<input type="hidden" id="select-skus_promo_4025315760"'
			+'	value="11151047032" />'*/
			
	loadGouwuche()
     });

function loadGouwuche(){
	var entirety = ""
		var start = ""
		var str1= ""
		var end = ""
		$.post("user/getTrolley?page=1&rows=5",null,function(data){
			var len = data.rows.length
			if(len > 0){
				for(var n = 0; n<len;n++){
					/*alert(data.rows[n].p_name +" "
							+ data.rows[n].s_num +" "
							+ data.rows[n].properties+" "
							+ data.rows[n].s_date)*/
					start = '<div class=" item-last item-item item-selected " id="divP_'+data.rows[n].p_id+'">'
					+'<div class="item-form">'
					+'	<div class="cell p-checkbox">'
					+'		<div class="cart-checkbox">'
					+'			<input p-type="11151047032_11" manFanZeng="0" type="checkbox" name="checkItem" '
					+'			value="'+data.rows[n].p_id+'" checked="checked" class="jdcheckbox" data-bind="cbid" >'
					+'				<label for="" class="checked">勾选商品</label> <span class="line-circle"></span>'
					+'		</div>'
					+'	</div>'
					+'	<div class="cell p-goods">'
					+'		<div class="goods-item">'
					+'			<div class="p-img">'
					+'				<a href="//item.jd.com/'+data.rows[n].p_id+'.html" target="_blank" class="J_zyyhq_'+data.rows[n].p_id+'">'
					+'					<img alt="'+data.rows[n].p_name+'"'
					
					end = '	<div class="cell p-ops">'
					+'		<a class="cart-remove" href="javascript:void(0);" onclick="deleteProduct(this)" >删除</a> '
					+'		<a href="javascript:void(0);" class="cart-follow" id="follow_636237_11151047032_11_4025315760">移到我的关注</a>'
					+'   	<input type="hidden" value="'+data.rows[n].p_id+'" /></div>'
					+'</div>'
					+'<div class="item-extra mb10">'
					+'	<div class="unmarket-items" _unmarket="unmarket_1=='+data.rows[n].p_id+'" data="1315;1342;9732;11151047032;1487389195855"></div>'
					+'</div>'
					+'<div class="item-line"></div>'
					+'</div>'
					+'<input type="hidden" id="select-skus_promo_4025315760"'
					+'	value="'+data.rows[n].p_id+'" />'
					
					var string = data.rows[n].properties.split(",")
					var len2 = string.length
					for(var i = 0;i < len2;i++){
						var array = string[i].split(":")
						var len3 = array.length
						for(var j = 0;j < len3;j++){
							if(array[j]=='路径'){
								str1 = 'src="'+array[j+1]+'"></a>'
								+'			</div>'
								+'			<div class="item-msg">'
								+'				<div class="p-name">'
								+'					<a clstag="clickcart|keycount|xincart|cart_sku_name" href="//item.jd.com/'+data.rows[n].p_id+'.html" target="_blank">'
								+'						'+data.rows[n].p_name+'</a>'
								+'				</div>'
								+'				<div class="p-extend"><span class="promise" _giftcard="giftcard_'+data.rows[n].p_id+'"> </span>'
								+'					<span class="promise" _yanbao="yanbao_'+data.rows[n].p_id+'_4025315760"><i class="jd-service-icon"></i></span>'
								+'				</div>'
								+'			</div>'
								+'		</div>'
								+'	</div>'
								+'	<div class="cell p-props p-props-new">'
								//alert(str1)	
							}else{
								if(array[j]=='价格'){
									price += data.rows[n].s_num * array[j+1]
									num += data.rows[n].s_num
									str1 +=	'	</div>'
										+'	<div class="cell p-price">'
										+'		<strong>¥'+array[j+1]+'</strong> <a class="sales-promotion" href="#none" data-tips="更多促销"> 更多促销<b></b></a>'
										+'		<div id="sales-promotion_'+data.rows[n].p_id+'" class="promotion-tips">'
										+'			<div class="promotion-tit"> 促销信息<b></b> </div>'
										+'			<div class="promotion-cont">'
										+'				<ul>'
										+'					<li><input type="radio" multiPromotion="0" name="radioPromotion_'+data.rows[n].p_id+'"'
										+'						value="636237_4025315760_11151047032_11_4025315760" title="满2件总价9.0折，满3件总价8.5折，满4件总价8.0折"'
										+'						checked="checked">满2件总价9.0折，满3件总价8.5折，满4件总价8.0折</li>'
										+'					<li><input type="radio" multiPromotion="0" name="radioPromotion_11151047032"'
										+'						value="'+data.rows[n].p_id+'" title="不使用活动优惠">不使用活动优惠</li>'
										+'				</ul>'
										+'				<div class="op-btns ac mt20">'
										+'					<a href="#none" class="btn-1 select-promotion" >确定</a>'
										+'					<a href="#none" class="btn-9 ml10 del cancel-promotion">取消</a>'
										+'				</div>'
										+'			</div>'
										+'		</div>'
										+'	</div>'
										+'	<div class="cell p-quantity">'
										+'		<div class="quantity-form" promoid="4025315760">'
										+'			<a href="javascript:void(0);" class="decrement disabled" onclick="shearS_num(this)" >-</a>'
										+'			<input autocomplete="off" type="text" class="itxt" value="'+data.rows[n].s_num+'" minnum="1" /> '
										+'			<a href="javascript:void(0);" class="increment" onclick="addS_num(this)" >+</a>'
										+' 			<input type="hidden" value="'+data.rows[n].p_id+'" />'
										+'		</div>'
										+'		<div class="ac ftx-03 quantity-txt" _stock="stock_'+data.rows[n].p_id+'"></div>'
										+'	</div>'
										+'	<div class="cell p-sum"> <strong>¥'+array[j+1]+'</strong> </div>';
									//alert(str1)	
								}else if(j%2 == 0){
									str1 +=	'<div class="props-txt" title="'+array[j+1]+'">'+array[j]+'：'+array[j+1]+'</div>';
								}
							}
							//alert(array[j])
						}
					}
					$('#product_promo_4025315760').append( start + str1 + end)
				}
			}
			$('.number').text(num)
			$('#totalPrice').text('¥'+ price)
		},"json")
		
}

function addS_num(obj){
	alert($(obj).next().val())
	$.post("user/addS_num?p_id="+$(obj).next().val(),null,function(data){
		if(data){
			$(obj).prev().val(parseInt($(obj).prev().val())+1)
			$('.number').text(parseInt(num)+1)
		}
	},"json")
}

function shearS_num(obj){
	alert($(obj).next().next().next().val())
	$.post("user/updateS_num?p_id="+$(obj).next().next().next().val(),null,function(data){
		if(data == 0){
			$('#product_promo_4025315760').html("")
			loadGouwuche()
		}else if(data >= 0){
			$(obj).next().val(parseInt($(obj).next().val())-1)
		}
		$('.number').text(parseInt(num)-1)
	},"json")
}

function deleteProduct(obj){
	alert($(obj).next().next().val())
	$.post("user/deleteProduct?p_id="+$(obj).next().next().val(),null,function(data){
		if(data){
			$('#product_promo_4025315760').html("")
			loadGouwuche()
		}
	},"json")
}