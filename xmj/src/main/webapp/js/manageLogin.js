$('#loginsubmit').linkbutton({    
    onClick:function(){
    	$("#formlogin").submit();
    }
}); 
$('#formlogin').form({    
    url:'manage/login',   
    success:function(data){  
	    	   if(data==0){
	    		   location.replace("jsp/admin2.jsp");
	    	   }else if(data==1){
	    		   location.replace("jsp/admin.jsp");  
	    	   }else if(data==2){
	    		   $.messager.show({
		    			title:'登录失败',
		    			msg:'登录失败，编号与密码不匹配！！！',
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
 