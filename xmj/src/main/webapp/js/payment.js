var num =0 
var price = 0

$(function() {
	loadAddress()
	
	loadGouwuche()
	
})

function loadGouwuche(){
		var str= ""
		$.post("user/getTrolley?page=1&rows=5",null,function(data){
			var len = data.rows.length
			if(len > 0){
				for(var n = 0; n<len;n++){
					/*alert(data.rows[n].p_name +" "
							+ data.rows[n].s_num +" "
							+ data.rows[n].properties+" "
							+ data.rows[n].s_date)*/
					var string = data.rows[n].properties.split(",")
					var len2 = string.length
					for(var i = 0;i < len2;i++){
						var array = string[i].split(":")
						var len3 = array.length
						for(var j = 0;j < len3;j++){
							if(array[j]=='路径'){
								str = '<div class="goods-item goods-item-extra" goods-id="'+data.rows[n].p_id+'" sx-type="0">'
								+'<div class="p-img">'
								+'<a target="_blank" href="http://item.jd.com/'+data.rows[n].p_id+'.html">'
								+'<img src="'+array[j+1]+'" alt=""></a>'
								+'</div>'
								+'<div class="goods-msg">'
								+'<div class="goods-msg-gel">'
								+'<div class="p-name">'
								+'	<a href="http://item.jd.com/'+data.rows[n].p_id+'.html" target="_blank"> '+data.rows[n].p_name+' </a>'
								+'</div>'
								
								//alert(str1)	
							}else{
								if(array[j]=='价格'){
									price += data.rows[n].s_num * array[j+1]
									num += data.rows[n].s_num
								
									str +='<div class="p-price">'
										+'	<strong class="jd-price"> ￥'+array[j+1]+' </strong>'
										+'	<span class="p-num"> x'+data.rows[n].s_num+' </span> <span id="pre-state" class="p-state" skuid="11151047032">有货</span>'
										+'</div>'
										+'</div>'
										+'</div>'
										+'<div>'
										+'<i class="p-icon p-icon-w sevenicon"></i><span class="ftx-04 withouthk seven">7天无理由退货</span>'
										+'</div>'
										+'<div class="clr"></div>'
										+'</div>'
									
									//alert(str1)	
								} 
							}
							//alert(array[j])
						}
					}
					$('#gouwuche').append( str)
				}
			}
			$('#warePriceId').text('￥'+ price)
			$('#wareNumId').text(num)
			$('#sumPayPriceId').text('￥'+ price)
		},"json")
		
}

function submit_Order(){
	$.post("user/getShdetailBean",null,function(data){
		if(data){
			location.href = '/xmj/page/zhifu.jsp'
		}
	},"json")
}

function loadAddress(){
	var str= ""
	$.post("user/getAddress",null,function(data){
		alert(data.addr_name + " "+ data.introduce+ " "+ data.addr_phone+ " "+ data.email)
		str = '<li class="ui-switchable-panel ui-switchable-panel-selected" '
		+'style="display: list-item;" id="consignee_index_'+data.u_id+'" selected="selected">'
		+'<div class="consignee-item item-selected" consigneeid="'+data.u_id+'" '
		+'provinceid="18" cityid="1501" id="consignee_index_div_'+data.u_id+'" consigneetype="0" >'
		+'<span limit="8" title="'+data.addr_name+'">'+data.addr_name+'</span><b></b>'
		+'</div>'
		+'<div class="addr-detail">'
		+'<span class="addr-name" limit="6" title="'+data.addr_name+'">'+data.addr_name+' </span> '
		+'<span class="addr-info" limit="45" title="'+data.introduce+'">'
		+''+data.introduce+'</span> '
		+'<span class="addr-tel">'+ data.addr_phone+'</span> <span class="addr-default">默认地址</span>'
		+'</div>'
		+'<div class="op-btns" consigneeid="'+data.u_id+'">'
		+'<span></span> <a href="#none" class="ftx-05 edit-consignee" fid="137969880"  >编辑</a> '
		+'<a href="#none" class="ftx-05 del-consignee hide" fid="137969880" >删除</a>'
		+'</div>'
		+'</li>'
		
		$("#consignee1").find("ul").append(str)
	},"json")
}