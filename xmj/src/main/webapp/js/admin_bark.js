$("#leftSide").accordion({
	fit:true,
});

var urlJson={"编辑新闻":"edit.jsp","编辑用户":"user_edit.jsp","添加用户":"addUser.jsp","添加新闻":"addNews.jsp","编辑主题":"topic_edit.jsp","添加主题":"topic_add.jsp"};

$(".Menutree").tree({
	onClick: function(node){
		var nt = node.text;
		openOp(nt)
	}
});


$("#contents").tabs({
	fit:true,
});

function openOp(nt){
	if($('#contents').tabs('exists',nt)){
		$('#contents').tabs('select',nt);
	}else{
		
		if(urlJson[nt]){
			$('#contents').tabs('add',{
				title:nt,
				//加载整个页面的内容
				href:"easyui_page/"+urlJson[nt],
				closable:true,
			});
		}else{
			$('#contents').tabs('add',{
				title:nt,
				content:"<h1 class='main_h1'>"+nt+"</h1>",
				closable:true,
			});
		}
		
	}
}

function openDN(nid){
	
	$("#detailNews").dialog({
		title:'新闻详情',
		width:600,
		height:300,
		left:10,
		resizable:true,
		maximizable:true,
		//加载整个页面的内容
		href:"news/getNews?type=Byread&id="+nid,
		modal: true,
		 
	});
}

function openMN(nid){
	$("<div></div>").dialog({
		id:'modifyNews',
		title:'修改新闻',
		width:600,
		height:300,
		left:10,
		resizable:true,
		maximizable:true,
		//加载不了页面的 onload方法里面的东西 ，用异步的时候要考虑同步取数据的问题
		href:"news/getNews?type=ById&id="+nid,
	    onClose: function () {  
	        $(this).dialog('destroy');//销毁  
	    }  
	});
}


