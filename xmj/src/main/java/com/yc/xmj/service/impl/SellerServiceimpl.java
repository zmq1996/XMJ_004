/*package com.yc.xmj.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.yc.xmj.entity.Shop;
import com.yc.xmj.entity.User;
import com.yc.xmj.mapper.SellerMapper;
import com.yc.xmj.service.SellerService;

@Service("sellerService")
public class SellerServiceimpl implements SellerService {

	@Autowired
	SellerMapper sellerMapper;
	
	@Transactional
	public int createShop(User user) {
		int OrinNameLength=12;
		Random rd = new Random();
		//生存随机数范围 0~num-1 
		String sname = RandomStringUtils.random(OrinNameLength,true,true);
		Shop shop = new Shop();
		shop.setSuid(user.getU_id());
		shop.setSstatus(1);
		shop.setSname(sname);
		shop.setSbirthday(new Date());
		LogManager.getLogger().debug("创建新店"+shop);
	
		//1.插入一个新店
		sellerMapper.insertShop(shop);
		//2.修改用户的权限
		sellerMapper.becomeSeller(user);
		
		return 1 ;
	}

	@Override
	public boolean uploadFile(HttpServletRequest request, MultipartFile multifile, Shop shop) {
		String path = request.getServletContext().getRealPath("")+"/upload/"+multifile.getOriginalFilename();
		String workpath="D:\\gitWork\\xmj\\xmj\\src\\main\\webapp\\upload\\"+multifile.getOriginalFilename();
		LogManager.getLogger().debug("服务器上传文件地址为："+path);
		
		//这种只能移动一次，但文件流到服务器下面时候，就没有东西流到工作目录下面了...
		FileOutputStream fout =null;
		InputStream in = null;
		if(!multifile.isEmpty()){
			try {
				in = multifile.getInputStream();
				multifile.transferTo(new File(path));
				File file = new File(workpath);
				if(!file.exists()){
					file.createNewFile();
					fout  = new FileOutputStream(file);
					byte[] bs = new byte[1024];
					for(;in.read(bs)!=-1;){
						fout.write(bs);
					}
					fout.flush();
				}
				
			} catch (IllegalStateException | IOException e) {
				return false;
			}finally{
				try {
					if(fout!=null){
						fout.close();
					}
					if(in!=null){
						in.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		return true;
	}

	@Override
	public Shop modifyShop(Shop shop) {
		if(sellerMapper.updateShop(shop)>0){
			return sellerMapper.selectShopBySid(shop);
		}
		return null ;
	}

	@Override
	public Shop checkShop(User user) {
		Shop shop = sellerMapper.selectShopByUid(user);
		return shop;
	}
}
*/