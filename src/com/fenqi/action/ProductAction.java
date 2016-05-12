package com.fenqi.action;

import java.util.List;
import java.util.Map;

import com.fenqi.manager.CustomerMgr;
import com.fenqi.manager.ProductMgr;
import com.fenqi.po.Characters;
import com.fenqi.po.Customer;
import com.fenqi.po.Judge;
import com.fenqi.po.Order;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.TypeAll;
import com.fenqi.po.TypeDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport{
	private ProductMgr productMgrImpl;
	private CustomerMgr customerManager;
	private List<TypeAll> mainShow;
	private static List<TypeAll> mainShowCopy;
	private List<ProductInfo> detailList;
	private List<ProductInfo> brandList;
	private List<Judge> judge;
	private Customer customer;
	private int detailKey;   //小的分类的关键字
	private static int detailKetCopy;
	private String sellAndPrice;
	private int brandOne;
	private float minPrice;
	private float maxPrice;
	private String keyWord;   //搜索的关键字
	private String identify;  //某一产品的关键字
	private static String identifyCopy1;
	private String identifyCopy;
	private ProductInfo productInfo;
	private float per;
	private Order order;
	public static Order order1;
	private Characters character;
	private static Characters ch;
	private List allList;
	private String typeAllName;
	private String typeDetailName;
	private int chaId;
	public static int CHADETAILID;
	private String proOrCity;
	private List list;
	private int jidu;
	private List jiduList;
	
	
	
	public List getJiduList() {
		return jiduList;
	}

	public void setJiduList(List jiduList) {
		this.jiduList = jiduList;
	}

	public int getJidu() {
		return jidu;
	}

	public void setJidu(int jidu) {
		this.jidu = jidu;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public String getProOrCity() {
		return proOrCity;
	}

	public void setProOrCity(String proOrCity) {
		this.proOrCity = proOrCity;
	}

	public int getChaId() {
		return chaId;
	}

	public void setChaId(int chaId) {
		this.chaId = chaId;
	}


	public String getTypeAllName() {
		return typeAllName;
	}

	public void setTypeAllName(String typeAllName) {
		this.typeAllName = typeAllName;
	}

	public String getTypeDetailName() {
		return typeDetailName;
	}

	public void setTypeDetailName(String typeDetailName) {
		this.typeDetailName = typeDetailName;
	}

	public String getIdentifyCopy() {
		return identifyCopy;
	}

	public void setIdentifyCopy(String identifyCopy) {
		this.identifyCopy = identifyCopy;
	}

	public List getAllList() {
		return allList;
	}

	public void setAllList(List allList) {
		this.allList = allList;
	}

	public int getDetailKey() {
		return detailKey;
	}

	public void setDetailKey(int detailKey) {
		this.detailKey = detailKey;
	}

	public String getSellAndPrice() {
		return sellAndPrice;
	}

	public void setSellAndPrice(String sellAndPrice) {
		this.sellAndPrice = sellAndPrice;
	}

	public int getBrandOne() {
		return brandOne;
	}

	public void setBrandOne(int brandOne) {
		this.brandOne = brandOne;
	}

	public float getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(float minPrice) {
		this.minPrice = minPrice;
	}

	public float getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(float maxPrice) {
		this.maxPrice = maxPrice;
	}

	public List<ProductInfo> getBrandList() {
		return brandList;
	}

	public void setBrandList(List<ProductInfo> brandList) {
		this.brandList = brandList;
	}

	public List<Judge> getJudge() {
		return judge;
	}

	public void setJudge(List<Judge> judge) {
		this.judge = judge;
	}

	public void setProductMgrImpl(ProductMgr productMgrImpl) {
		this.productMgrImpl = productMgrImpl;
	}

	public void setCustomerManager(CustomerMgr customerManager) {
		this.customerManager = customerManager;
	}

	public List<TypeAll> getMainShow() {
		return mainShow;
	}

	public void setMainShow(List<TypeAll> mainShow) {
		this.mainShow = mainShow;
	}


	public List<ProductInfo> getDetailList() {
		return detailList;
	}

	public void setDetailList(List<ProductInfo> detailList) {
		this.detailList = detailList;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}


	public String getIdentify() {
		return identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	public ProductInfo getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(ProductInfo productInfo) {
		this.productInfo = productInfo;
	}


	public float getPer() {
		return per;
	}

	public void setPer(float per) {
		this.per = per;
	}


	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Characters getCharacter() {
		return character;
	}

	public void setCharacter(Characters character) {
		this.character = character;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	//分期链接
	public String buildOrder() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String user=(String) session.get("user");
		if(user==null){
			return INPUT;
		}else{
		order.setMonthPay((order.getPrice()-order.getFirstPay())/order.getMonthTime());
		session.put("orderall", order);
		customer=this.customerManager.getCustomer(user);
		return SUCCESS;
		}
	}

	//主页面上的显示商品
	@Override
	public String execute() throws Exception {
		mainShow=this.productMgrImpl.productMainShow();
		mainShowCopy=mainShow;
		return SUCCESS;

	}

	//某一类商品的显示List
	public String showDetail() throws Exception{
		detailList=this.productMgrImpl.productDetailShow(detailKey,sellAndPrice,brandOne,minPrice,maxPrice);
		brandList=this.productMgrImpl.getBrand(detailKey);
		mainShow=mainShowCopy;
		detailKetCopy=detailKey;
		return SUCCESS;
	}
	//获取某一种商品的信息
	public String product() throws Exception{
		identifyCopy1=identify;
		per=this.productMgrImpl.getPer();
		productInfo=this.productMgrImpl.getProduct(identify);
		judge=this.productMgrImpl.getJudge(identify);
		mainShow=mainShowCopy;
		detailKey=detailKetCopy;
		return SUCCESS;		
	}

	//商品检索模块
	public String search() throws Exception {
		detailList=this.productMgrImpl.select(keyWord);
		return SUCCESS;
	}


	//点击详情页面的分期付款
	public String fenQi() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String user=(String) session.get("user");
		if(user==null)
		{
			return INPUT;
		}
		else{
		String characters="颜色："+character.getColor()+"、"+"类型："+character.getType();
		order.setContent(characters);
		order1=order;
		session.put("orderall", order1);
		customer=this.customerManager.getCustomer(user);		
		return SUCCESS;		
		}
	}

	//点击详情页面的加入购物车
	public String shop() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String user1=(String) session.get("user");
		if(user1==null)
		{
			return INPUT;
		}
		else{
		this.productMgrImpl.addShop(user1,order,character);
		identifyCopy=identifyCopy1;
		return SUCCESS;	
		}
	}

	//管理员查询商品
	public String allProduct() throws Exception{
		if(productInfo.getProductName().trim().equals("")){
			allList = this.productMgrImpl.allProduct();
			return SUCCESS;
		}
		else{
			allList = this.productMgrImpl.queryProduct(productInfo.getProductName().trim());
			return SUCCESS;
		}
	}
	public String addProduct() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		session.put("all", typeAllName);
		session.put("detail", typeDetailName);
		session.put("chacter", character);
		session.put("pro", productInfo);
		session.put("all", typeAllName);
		return SUCCESS;
	}
	public String deleteProduct() throws Exception{
		this.productMgrImpl.deleteProduct(chaId);
		return SUCCESS;
	}
	public String getProductInformation() throws Exception{
		productInfo = this.productMgrImpl.getProductInformation(chaId);
		character = this.productMgrImpl.getCharacterInfo(chaId);
		CHADETAILID = chaId;
		return SUCCESS;
	}
	public String modifyProduct() throws Exception{
		this.productMgrImpl.modifyProduct(productInfo,character);
		return SUCCESS;
	}
	
	//省市报表
	public String reportTable() throws Exception{
		if(proOrCity.equals("province")){
		list=this.productMgrImpl.reportTable(proOrCity);
		return SUCCESS;}
		else{
			list=this.productMgrImpl.reportTable(proOrCity);
			return INPUT;
		}
	}
	
	//消费报表
	public String reportCost() throws Exception{
		if(jidu==0){
			jiduList=this.productMgrImpl.reportAllCost();
			return SUCCESS;
		}
		else{
			jiduList=this.productMgrImpl.reportJiduCost(jidu);
			return SUCCESS;
		}
			
	}

}
