$(function() {
		if($("#u_name").text() != ""){
			$("#u_name").parent().css("display","block")
			$("#ttbar-login").css("display","none")
		} 
		
		loadShdetail()
		
	});

function loadShdetail(){
	var start ='<div class="smt"><h4 class="fl">最新加入的商品</h4></div>'
		+'<div class="smc">'
		+'<ul id="mcart-sigle">'
	var str1 = ""	
	var price = 0
	var num = 0
	var end =''
	
	$.post("index/user/getTrolley?page=1&rows=5",null,function(data){
		var len = data.rows.length
		if(len > 0){
			for(var n = 0; n<len;n++){
				//alert( data.rows[n].properties.replace(",", ""))
				/*alert(data.rows[i].p_name +" "
						+ data.rows[i].s_num +" "
						+ data.rows[i].properties+" "
						+ data.rows[i].s_date)*/
				var string = data.rows[n].properties.split(",")
				var len2 = string.length
				for(var i = 0;i < len2;i++){
					var array = string[i].split(":")
					var len3 = array.length
					for(var j = 0;j < len3;j++){
						if(array[j]=='价格'){
							price += data.rows[n].s_num * array[j+1]
							num += data.rows[n].s_num
							str1 +='<span  class="p-price"><strong>￥'+array[j+1]+'</strong><b>×'+data.rows[n].s_num+'</b></span> <br>'
							+'<input type="hidden" value="'+data.rows[n].p_id+'" />'
							+'<a class="delete" '
							+'href="javascript:void(0)" onclick="deleteSelf(this)">删除</a>'
							+'</div>'
							+'</li>'
							//alert(str1)	
						}
						if(array[j]=='路径'){
							str1 += '<li id="liP'+data.rows[n].u_id+' ">'
							+'<div class="p-img f'+ n+1 +'">'
							+'<a href="//item.jd.com/'+data.rows[n].u_id+'.html" target="_blank">'
							+'<img src="'+array[j+1]+'"'
							+'	alt="" height="50" width="50"></a>'
							+'</div>'
							+'<div class="p-name f'+ n+1 +'">'
							+'<span></span><a href="'+'//item.jd.com/'+data.rows[n].u_id+'.html"'
							+'	title="'+data.rows[n].p_name+'"'
							+'	target="_blank">'+data.rows[n].p_name+'</a>'
							+'</div>'
							+'<div class="p-detail f'+ n+1 +' ">'
						}
						//alert(array[j])
					}
						
				}
			}
		}
		end ='</ul>'
			+'<ul id="mcart-gift"></ul>'
			+'<ul id="mcart-mz">'
			+'</ul>'
			+'</div>'
			+'<div class="smb ar">'
			+'<div class="p-total">共<b>'+num+'</b>件商品 共计<strong>￥ '+price+'</strong>'
			+'</div>'
			+'<a href="/xmj/page/gouwuche.jsp" title="去购物车" id="btn-payforgoods">去购物车</a>'
			+'</div>'
			+'</div>'
		$('#settleup-content').html(start + str1 +end)
	},"json")
}

function deleteSelf(obj){
	console.info($(obj).prev().prev().prev().find("b").text())
	$.post("index/user/updateS_num?p_id="+$(obj).prev().val(),null,function(data){
		alert(data)
		if(data == 0){
			loadShdetail()
		}else if(data >= 0){
			$(obj).prev().prev().prev().find("b").text('×'+data)
		}
	},"json")
}