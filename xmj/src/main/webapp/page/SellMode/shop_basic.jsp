<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <base href="/xmj/">
    <title>基本设置-晓米佳店铺</title>
    <link rel="stylesheet" type="text/css" href="css/SellMode/tbsp.css">
    <link rel="stylesheet" type="text/css" href="css/SellMode/template.css">
    <link rel="stylesheet" href="css/SellMode/flow.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/SellMode/manage.css" type="text/css" media="screen">
    <link rel="stylesheet" type="text/css" href="css/SellMode/eshop_openbusiness.css">
    <link id="yui__dyn_0" type="text/css" charset="utf-8" rel="stylesheet" href="css/SellMode/tbra.css">
    <link href="css/SellMode/base-min.css" rel="stylesheet" charset="utf-8">
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>

<body class="W950 manage ke-webkit">
    <div id="page">
        <ul class="m-tab">
            <li class="selected">
                <a href="https://ishop.taobao.com/setup/shopBasic.htm">
                    <span>晓米佳店铺</span>
                </a>
            </li>
           
            <li style="float:right;">
                <div>
                    <a style="color: rgb(51, 102, 204); font-size: 12px; margin-right: 10px;background-image: none" target="_blank" href="https://bbs.taobao.com/catalog/thread/16329010-267336326.htm">重要：开店必知！快速成交！</a>
                </div>
            </li>
        </ul>
        <div class="shop-information">
            <form enctype="multipart/form-data" id="shopInfo" method="post" >
            <input name="s_id" value="${shop.s_id }" type="hidden"/>
            <input name="su_id" value="${shop.su_id }" type="hidden"/>
             <input name="sstatus" value="${shop.sstatus }" type="hidden"/>
                <ul class="form-info">
                    <li class="ml">
                        <span class="info-tip img-erro info-muted"><i></i>您填写的信息将在店铺前台展示给买家，请认真填写！</span>
                    </li>
                    <li class="form-label">基础信息</li>
                    <li class="ml">
                        <label class="item-name" for="sh-name"><em>*</em>店铺名称：</label>
                        <div class="sh-name">
                            <input type="text" class="text1" id="sh-name" name="s_name" value="${shop.s_name}">
                        </div>
                    </li>
                    <li class="ml3">
                        <span class="item-name">店铺标志：</span>
                        <div class="shop-photo">
                            <img src="${shop.sflag eq null ? 'image/SellMode/T1k1l9XmxtXXXXXXXX-80-80.jpg' : shop.sflag}" alt="店铺标志" class="shop-pic" id="file-img">
                            <p class="upload-con">
                                <span class="info-tip img-erro"><i></i>文件格式GIF、JPG、JPEG、PNG文件大小80K以内，建议尺寸80PX*80PX</span>
                            </p>
                            
                        </div>
                    </li>
                    <li class="ml">
                        <label class="item-name" for="sh-intro">店铺主营：</label>
                        <div class="sh-category" style="width: 500px;">
                            <textarea class="text1" id="sh-intro" name="majorBusiness" style="width: 350px;height: 36px;">${shop.majorBusiness }</textarea>
                            <span class="info-tip img-erro"><i></i>店铺主营会加入到店铺索引中！</span>
                            <a href="https://bangpai.taobao.com/group/thread/400769-279065571.htm" target="_blank">详细说明</a>
                        </div>
                    </li>
                    <li class="ml">
                        <label class="item-name">
                            	经营地址：
                        </label>
                        <div class="registered-addresss">
                            <div id="J_ContactAddresss" data-isuserselfdefine="">
                                <select name="province" class="J_AddressCN" id="J_ContactProvince" onChange="showCity()">
                                    <option value="">请选择省/直辖市</option>
                                </select>
                                <select name="city" class="J_AddressCN" id="J_ContactCity" onChange="showArea()">
                                    <option value="">请选择市</option>
                                </select>
                                <select name="area" class="J_AddressCN" id="J_ContactTown" >
                                    <option value="">请选择街道</option>
                                </select>
                            </div>
                        </div>
                    </li>
                    <li class="ml">
                        <label class="item-name"></label>
                        <div id="J_ContactAddresss" data-isuserselfdefine="">
                            <input type="text" class="text4" name="address">
                        </div>
                    </li>
                  
                    <li class="ml">
                        <label class="item-name"><em>*</em>店铺介绍：</label>
                        <textarea  name="introduce" id="sh-edit" style="width:520px;margin-left:128px;margin-top:10px; height:100px;">${shop.introduce }
                        </textarea>
                        
                    </li>
                    <li class="ml2">
                        <button type="submit" class="form-save">保存</button>
                        <span style="color:red"></span>
                    </li>
                </ul>
                 <div class="upload" style="top: 196px; left: 133px;">
			          <a href="https://ishop.taobao.com/setup/shop_basic.htm#" class="upload-btn" data-spm-anchor-id="0.0.0.0">
			              <em>上传图标</em>
			              <input type="file" name="file" class="simulate_upload"  style="left: 18px; top: 2px;" onchange="showpic(this)">
			          	  <input type="hidden" name="sflag"/>
			          </a>
			      </div>
           </form>
        </div>
    </div>
     <input type="hidden" id="getAddress" value="${shop.address }">
</body>
<script src="ueditor/ueditor.config.js"></script>
<script src="ueditor/ueditor.all.min.js"></script>
<script type="text/javascript">
      	UE.getEditor("sh-edit");
</script>
<script type="text/javascript" src="js/SellMode/modifyInfo.js"></script>
</html>
