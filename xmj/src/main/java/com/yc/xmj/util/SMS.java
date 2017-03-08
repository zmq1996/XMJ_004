package com.yc.xmj.util;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class SMS {
	int num = 0;
	static final String SMS_URL = "http://gw.api.taobao.com/router/rest";
	static final String SMS_APPKEY = "23647603";
	static final String SMS_SECRET = "29e61d48280a4f6b956c7d0a825ba5e0";
	
	public int sendSMS(String phone){
		num = random4();
		System.out.println(num+" ===============sendSMS");
		TaobaoClient client = new DefaultTaobaoClient(SMS_URL, SMS_APPKEY, SMS_SECRET);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("123456");
		req.setSmsType("normal");
		req.setSmsFreeSignName("晓米佳");
		req.setSmsParamString("{\"code\":\""+ num +"\",\"name\":\""+ phone +"\"}");
		req.setRecNum(phone);
		req.setSmsTemplateCode("SMS_48520003");
		AlibabaAliqinFcSmsNumSendResponse rsp = null;
		try {
			rsp = client.execute(req);
			System.out.println(rsp.getBody());
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		return 0;
	}
	
	public int random4(){
		return (int)(Math.random()*(9999-1000+1))+1000; //产生1000-9999的随机数
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public SMS() {
		// TODO Auto-generated constructor stub
	}
	
	
}
