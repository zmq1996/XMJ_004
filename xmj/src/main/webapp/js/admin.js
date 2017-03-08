function userDetail(){
		$('#welcome').css("display","none");
		$('#userList').datagrid({    
				    url:'manage/userList',    
				    fitColumns:true,
					singleSelect:true,
					pageList:[5,10,15,20,25,30],
					pagination:true,
				    columns:[[    
				        {field:'u_id',title:'ID',width:50,align:'center'},    
				        {field:'u_name',title:'姓名',width:100,align:'center'},    
				        {field:'u_password',title:'密码',width:100,align:'center'}, 
				        {field:'u_sex',title:'性别',width:50,align:'center'}, 
				        {field:'idcard',title:'身份证号码',width:100,align:'center'}, 
				        {field:'u_phone',title:'电话号码',width:100,align:'center'}, 
				        {field:'email',title:'电子邮箱',width:100,align:'center'}, 
				        {field:'u_root',title:'买/卖家',width:100,align:'center'}, 
				        {field:'realNameAuthentication',title:'实名认证',width:90,align:'center'}, 
				        {field:'payAuthentication',title:'支付认证',width:90,align:'center'}, 
				        {	
				        	field:'operator',
				        	title:'操作',
				        	width:160,
				        	align:'center',
				        	formatter: function(value,row,index){
				        		var oprStr='<a class="modifyBtn" href="javaScript:void(0)" onClick="openUpdate('+index+')">修改</a>&nbsp;'+
				        		'<a class="deleteBtn" href="javaScript:void(0)" onClick="Delete('+index+')">删除</a>'+
				        		'<script>$(".deleteBtn").linkbutton({iconCls: "icon-man"});'+
				        		'$(".modifyBtn").linkbutton({iconCls:"icon-edit"});</script>';
								return oprStr;
							}
				        },   
				    ]]    
				});  
}

$("#modifyDiv").dialog({
	title:"用户修改",
	closable:false
});
$("#modifyForm").form({
	 url:"manage/userModify",    
	 success:function(data){  
		 if(data.trim()=="true"){
			 $("#modifyDiv").dialog("close");
			 $('#userList').datagrid("reload");//刷新修改数据
		 }else{
			 $.messager.show({
					title:'修改信息',
					msg:'修改失败!!!',
					showType:'show',
					style:{
						right:'',
						top:document.body.scrollTop+document.documentElement.scrollTop,
						bottom:''
					}
				});

		 }
		
	 }    

});
$("#modifyDiv").dialog("close");
$(".closeBtn").linkbutton({
	iconCls: "icon-cancel",
	onClick:function(){
		$("#modifyDiv").dialog("close");
	}
});
$(".updateBtn").linkbutton({
	iconCls: "icon-ok",
	onClick:function(){
		$("#modifyForm").submit();
	}	
});

function openUpdate(index){
	 $("#modifyDiv").dialog("open");
	 var row= $("#userList").datagrid("getRows")[index];
	 $("#uid").val(row.u_id);
	 $("#uname").val(row.u_name);
	 $("#upassword").val(row.u_password);
	 $("#usex").val(row.u_sex);
	 $("#uidcard").val(row.idcard);
	 $("#uphone").val(row.u_phone);
	 $("#uemail").val(row.email);
	 $("#uroot").val(row.u_root);
	 $("#ureal").val(row.realNameAuthentication);
	 $("#upay").val(row.payAuthentication);
}
function Delete(index){
	$.messager.confirm('确认','您确认想要删除该用户吗？',function(r){ 
		 var row= $("#userList").datagrid("getRows")[index];
		 alert(row.u_id );
	    if (r){ 
	    	$.get("manage/userDelete", { u_id:row.u_id },
	    			function(data){
	    		 		if(data.trim()=="true"){
				    		$.messager.show({
				    			title:'删除',
				    			msg:'删除成功',
				    			showType:'show',
				    			style:{
				    				right:'',
				    				top:document.body.scrollTop+document.documentElement.scrollTop,
				    				bottom:''
				    			}
				    		});
	    		 		}else{
	    		 			$.messager.show({
				    			title:'删除',
				    			msg:'删除失败',
				    			showType:'show',
				    			style:{
				    				right:'',
				    				top:document.body.scrollTop+document.documentElement.scrollTop,
				    				bottom:''
				    			}
				    		});
	    		 		}
	    		});
	    	 $('#userList').datagrid("reload");//刷新修改数据
	    }    
	});  
}

