
var provinces;
var url="city.xml"
window.onload=function(){
		loadXML(url,readeShen);	
		//让select自动选择
		var detail = $("#getAddress").val();
		var details = detail.split(" ");
		console.info(details[0] + "  " + details[1]+"  "+details[2] +"  "+details[3]);
		
		var shen=document.getElementById("J_ContactProvince");
		shen.options
		
		$("select[name='province']").val(details[0])
		showCity();
		$("select[name='city']").val(details[1])
		showArea();
		$("select[name='area']").val(details[2])
		$("input[name='address']").val(details[3])
}

function readeShen(doc,url){
	 provinces = doc.getElementsByTagName("province");
		
		var shen=document.getElementById("J_ContactProvince");
		var city=document.getElementById("J_ContactCity");
		var area=document.getElementById("J_ContactTown");
		
		var len1=provinces.length;
		shen.options.length=0;
		
		for(var i=0;i<len1;i++){
			var option=new Option(provinces[i].getAttribute("name"),provinces[i].getAttribute("name"));
			shen.add(option);
			
		}		

}

function showCity(){
	var shen = document.getElementById("J_ContactProvince");
	var city = document.getElementById("J_ContactCity");
	var city_childs=provinces[shen.selectedIndex].childNodes;
	var len2=city_childs.length;
	city.options.length=0;
	for(var i=0;i<len2;i++){
		if(city_childs[i].nodeType==1){
			option = new Option(city_childs[i].getAttribute("name"),city_childs[i].getAttribute("name"));
			city.add(option);
		}
	}
	showArea();
}

function showArea(){
	var shen=document.getElementById("J_ContactProvince");
	var city=document.getElementById("J_ContactCity");
	var area=document.getElementById("J_ContactTown");
	var city_childs=provinces[shen.selectedIndex].childNodes;
	area.options.length=0;
	var j=0;
	var len2=city_childs.length;
	for(var i=0;i<len2;i++){
		if(city_childs[i].nodeType==1){
			if(city.options[city.selectedIndex].value==city_childs[i].getAttribute("name")){
				var area_childs = city_childs[i].childNodes;
				var len3=area_childs.length;
				for(var n=0;n<len3;n++){
					if(area_childs[n].nodeType==1){
						option = new Option(area_childs[n].getAttribute("name"),area_childs[n].getAttribute("name"));	
						area.add(option);
					}
				}
			}
		}
	}
	
}


function loadXML(url, handler){
    if(window.ActiveXObject){
        //IE
        var xmldoc = new ActiveXObject ("Microsoft.XMLDOM");
        xmldoc.onreadystatechange = function(){
            if(xmldoc.readyState == 4) handler(xmldoc, url);
        }
        xmldoc.load(url);
    }else{
       try //Firefox, Mozilla, Opera, etc.
       {
            xmldoc=document.implementation.createDocument("","",null);
            xmldoc.async=false;
            xmldoc.onload = function(){
                handler(xmldoc, url);
            }
            xmldoc.load(url);
       }
       catch(e)
      {
          try //Google Chrome(因为chrome不支持xmldoc.load()方法，所以要另外写)
          {
              var xmlhttp = new window.XMLHttpRequest();
              xmlhttp.open("GET",url,false);
              xmlhttp.send(null);
              xmldoc = xmlhttp.responseXML.documentElement;
              handler(xmldoc, url);
          }
          catch(e)
         {
             error=e.message;
          }
       }
    }
}

function showpic(obj){
	var uriStr = window.URL.createObjectURL(obj.files[0]);
	$("#file-img").attr("src",uriStr);
	var filePath =$(obj).val()
	var fileName = filePath.substr(filePath.lastIndexOf("\\")+1)
	//alert(fileName);
	$("input[name='sflag']").val(fileName);
}


$("#shopInfo").form({
	url:"seller/modifyShopInfo",
    success:function(data){
  	  //这种异步获得都是字符串
  	  if(data == 1){
  		  alert("修改成功！");
  		  
  	  }else if(data==0){
  		  alert("修改失败");
  	  }else{
  		alert("修改出错")
  	  }
    },
    //服务器端关于修改错误的异常应该传过来
    error:function(e){
        alert("错误！！");
    }
});


