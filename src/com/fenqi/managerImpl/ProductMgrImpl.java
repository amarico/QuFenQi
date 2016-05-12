package com.fenqi.managerImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import com.fenqi.action.UploadAction;
import com.fenqi.dao.ProductDao;
import com.fenqi.manager.ProductMgr;
import com.fenqi.po.Characters;
import com.fenqi.po.Judge;
import com.fenqi.po.Order;
import com.fenqi.po.PerPrice;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.ShopCart;
import com.fenqi.po.TypeAll;
import com.fenqi.po.TypeDetail;
import com.opensymphony.xwork2.ActionContext;

public class ProductMgrImpl implements ProductMgr{
	private ProductDao productDao;
	private TypeAll typeAll=new TypeAll();
	private TypeDetail typeDetail=new TypeDetail();

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<TypeAll> productMainShow() {
		List result=this.productDao.select();		
		return result;
	}

	@Override
	public List<ProductInfo> productDetailShow(int pdid,String sellAndPrice,int brandOne,float minPrice,float maxPrice) {
		String condition;
		String price;
		String brandCondition;
		if(sellAndPrice.equals("sell"))
			condition=" order by sellVolume desc ";
		else if(sellAndPrice.equals("price"))
			condition=" order by barginPrice asc ";
		else
			condition="";
		if(brandOne==-1)
			brandCondition="";
		else{
			String br=this.productDao.selectOneBrand(brandOne);
			brandCondition="and brand="+"'"+br+"'";
		}
		if(minPrice==0&&maxPrice==0)
			price="";
		else if(minPrice!=0&&maxPrice==0)
			price=" and barginPrice>"+minPrice;
		else if(minPrice==0&&maxPrice!=0)
			price=" and barginPrice<"+maxPrice;
		else
			price=" and barginPrice>"+minPrice+" and barginPrice<"+maxPrice;			
		List resultDetail=this.productDao.selectDetail(pdid,condition,brandCondition,price);
		return resultDetail;
	}

	@Override
	public List<ProductInfo> getBrand(int id) {
		List brand=this.productDao.selectBrand(id);

		return brand;
	}

	//商品检索
	@Override
	public List<ProductInfo> select(String keyword) {
		String temp = "";
		String[] key1 = keyword.split("%");
		keyword = "";
		for(int x=0; x<key1.length;x++){
			temp += key1[x];
		}
		String[] key2 = temp.split(" ");
		for(int x=0; x<key2.length;x++){
			if(!(key2[x].equals(""))){
				keyword += (key2[x] + "%");
			}
		}
		keyword="%"+keyword;
		List search=this.productDao.search(keyword);
		return search;
	}

	//获取单个商品到详情界面
	@Override
	public ProductInfo getProduct(String identify) {
		int id=Integer.parseInt(identify);
		ProductInfo product1=this.productDao.selectProduct(id);
		return product1;

	}

	//获取价钱利率
	@Override
	public float getPer() {
		PerPrice perprice=this.productDao.perPrice();
		float per=perprice.getPercentPrice();
		return per;
	}

	//加入购物车
	public void addShop(String username, Order order, Characters character) {
		ShopCart shopCart = new ShopCart();
		shopCart.setUserName(username);
		shopCart.setProductName(order.getShop());
		shopCart.setPrice(order.getPrice());
		shopCart.setFirstPay(order.getFirstPay());
		shopCart.setMonthTime(order.getMonthTime());
		shopCart.setMonthPay(order.getMonthPay());
		shopCart.setColor(character.getColor());
		shopCart.setType(character.getType());
		this.productDao.addShop(shopCart);

	}

	//获取用户评价
	@Override
	public List<Judge> getJudge(String id) {
		int id1=Integer.parseInt(id);
		List<Judge> judge=this.productDao.getJudge(id1);
		return judge;
	}

	public void buildOrder(Order order){
		float price;
		float firstPay;
		int monthTime;
		float allMoney;
		float monthPay;
		//提交日期
		order.setSubmitDate(new Date());
		//订单id
		Random r = new Random();
		order.setOrderId(r.nextInt()+"");
		//数量，默认为1
		order.setCount(1);
		//总费用
		price = order.getPrice();
		allMoney = (float) (price * 0.01 + price);
		order.setAllMoney(allMoney);
		//月付
		firstPay = order.getFirstPay();
		monthTime = order.getMonthTime();
		monthPay = (allMoney - firstPay)/monthTime;
		order.setMonthPay(monthPay);
		//是否支付，初始化为未支付
		order.setIsPay(0);
		this.productDao.buildOrder(order);
	}

	//管理员查询商品
	public List allProduct(){
		List all = this.productDao.allProduct();
		return all;
	}
	public List queryProduct(String productName){
		List productList = this.productDao.queryProduct(productName);
		return productList;
	}
	public void addProduct(String typeAllName,String typeDetailName1,Characters characters,ProductInfo productInfo){
		switch(UploadAction.DIR.length){
		case 5:
			characters.setPictureOne(UploadAction.DIR[0]);
			characters.setPictureTwo(UploadAction.DIR[1]);
			characters.setPictureThree(UploadAction.DIR[2]);
			characters.setPictureFour(UploadAction.DIR[3]);
			characters.setPictureIntroOne(UploadAction.DIR[4]);
			break;
		case 6:
			characters.setPictureOne(UploadAction.DIR[0]);
			characters.setPictureTwo(UploadAction.DIR[1]);
			characters.setPictureThree(UploadAction.DIR[2]);
			characters.setPictureFour(UploadAction.DIR[3]);
			characters.setPictureIntroOne(UploadAction.DIR[4]);
			characters.setPictureIntroTwo(UploadAction.DIR[5]);
			break;
		case 7:
			characters.setPictureOne(UploadAction.DIR[0]);
			characters.setPictureTwo(UploadAction.DIR[1]);
			characters.setPictureThree(UploadAction.DIR[2]);
			characters.setPictureFour(UploadAction.DIR[3]);
			characters.setPictureIntroOne(UploadAction.DIR[4]);
			characters.setPictureIntroTwo(UploadAction.DIR[5]);
			characters.setPictureIntroThree(UploadAction.DIR[6]);
			break;
		case 8:
			characters.setPictureOne(UploadAction.DIR[0]);
			characters.setPictureTwo(UploadAction.DIR[1]);
			characters.setPictureThree(UploadAction.DIR[2]);
			characters.setPictureFour(UploadAction.DIR[3]);
			characters.setPictureIntroOne(UploadAction.DIR[4]);
			characters.setPictureIntroTwo(UploadAction.DIR[5]);
			characters.setPictureIntroThree(UploadAction.DIR[6]);
			characters.setPictureIntroFour(UploadAction.DIR[7]);
			break;
		case 9:
			characters.setPictureOne(UploadAction.DIR[0]);
			characters.setPictureTwo(UploadAction.DIR[1]);
			characters.setPictureThree(UploadAction.DIR[2]);
			characters.setPictureFour(UploadAction.DIR[3]);
			characters.setPictureIntroOne(UploadAction.DIR[4]);
			characters.setPictureIntroTwo(UploadAction.DIR[5]);
			characters.setPictureIntroThree(UploadAction.DIR[6]);
			characters.setPictureIntroFour(UploadAction.DIR[7]);
			characters.setPictureIntroFive(UploadAction.DIR[8]);
			break;			
		}
		typeAll.setTypeAllName(typeAllName);
		typeDetail.setTypeDetailName(typeDetailName1);
		this.productDao.addProduct(typeAll,typeDetail,characters, productInfo);
	}
	public void deleteProduct(int detailId){
		this.productDao.deleteProduct(detailId);
	}
	public Characters getCharacterInfo(int detailId){
		Characters cha = this.productDao.getCharacterInfo(detailId);
		return cha;
	}
	public ProductInfo getProductInformation(int detailId){
		ProductInfo product = this.productDao.getProductInformation(detailId);
		return product;
	}
	public void modifyProduct(ProductInfo productInfo,Characters character){
		this.productDao.modifyProduct(productInfo,character);
	}
	@Override
	public List reportTable(String proorcity) {
		if(proorcity.equals("province"))
			return this.productDao.reportPro();
		else
			return this.productDao.reportCity();
	}
	
	@Override
	public List reportAllCost() {
		Date date=new Date();
		int year=date.getYear()+1900;
		String y=String.valueOf(year);
		String y1=String.valueOf(year+1);
		String x1=y+"-01-01";
		String x2=y1+"-01-01";
		return this.productDao.reportAllYear(x1,x2);
	}
	
	@Override
	public List reportJiduCost(int jidu) {
		Date date=new Date();
		int year=date.getYear()+1900;
		int yue;
		String y=String.valueOf(year);
		if(jidu==1)
			yue=1;
		else if(jidu==2)
			yue=4;
		else if(jidu==3)
			yue=7;
		else
			yue=10;
		String y1=String.valueOf(yue);
		String y2=String.valueOf(yue+2);
		String x1=y+"-"+y1+"-01";
		String x2=y+"-"+y2+"-31";
		return this.productDao.reportJiduYear(x1,x2);
	}

}
