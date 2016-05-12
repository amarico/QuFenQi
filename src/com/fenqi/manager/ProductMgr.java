package com.fenqi.manager;

import java.util.List;

import com.fenqi.po.Characters;
import com.fenqi.po.Judge;
import com.fenqi.po.Order;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.TypeAll;
import com.fenqi.po.TypeDetail;

public interface ProductMgr {
	public List<TypeAll> productMainShow();	
	public List<ProductInfo> productDetailShow(int pdid,String sellAndPrice,int brandOne,float minPrice,float maxPrice);
	public List<ProductInfo> getBrand(int id); 
	public List<ProductInfo> select(String keyword);
	public ProductInfo getProduct(String identify);   //获取单个产品对象但product界面
	public float getPer();
	public void buildOrder(Order order);   //商品链接
	public void addShop(String username,Order order,Characters character);
	public List<Judge> getJudge(String id);
	
	public List allProduct();
	public List queryProduct(String productName);
	public void addProduct(String typeAllName,String typeDetailName1,Characters characters,ProductInfo productInfo);
	public void deleteProduct(int detailId);
	public Characters getCharacterInfo(int detailId);
	public ProductInfo getProductInformation(int detailId);
	public void modifyProduct(ProductInfo productInfo,Characters character);
	public List reportTable(String proorcity);
	public List reportAllCost();
	public List reportJiduCost(int jidu);
	}
