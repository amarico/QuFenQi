package com.fenqi.dao;

import java.util.List;

import com.fenqi.po.Characters;
import com.fenqi.po.Judge;
import com.fenqi.po.Order;
import com.fenqi.po.PerPrice;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.TypeAll;
import com.fenqi.po.TypeDetail;


public interface ProductDao {
	public List<TypeAll> select();
	public List<ProductInfo> selectDetail(int pdid,String condition,String brandOne,String price);
	public List<ProductInfo> selectBrand(int id); 
	public List<ProductInfo> search(String keyword);
	public ProductInfo selectProduct(int id);
	public String selectOneBrand(int id);
	public PerPrice perPrice();
	public void buildOrder(Order order);
	public void addShop(ShopCart shopCart);
	public List<Judge> getJudge(int id);
	
	public List allProduct();
	public List queryProduct(String productName);
	public void addProduct(TypeAll typeall,TypeDetail typeDetail,Characters characters,ProductInfo productInfo);
	public void deleteProduct(int detailId);
	public Characters getCharacterInfo(int detailId);
	public ProductInfo getProductInformation(int detailId);
	public void modifyProduct(ProductInfo product,Characters character);
	public List reportPro();
	public List reportCity();
	
	public List reportAllYear(String year1,String year2);
	public List reportJiduYear(String x1,String x2);

}
