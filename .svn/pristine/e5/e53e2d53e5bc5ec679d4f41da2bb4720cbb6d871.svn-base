package com.fenqi.daoImpl;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fenqi.action.ProductAction;
import com.fenqi.action.UploadAction;
import com.fenqi.dao.ProductDao;
import com.fenqi.po.Characters;
import com.fenqi.po.Judge;
import com.fenqi.po.Order;
import com.fenqi.po.PerPrice;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.TypeAll;
import com.fenqi.po.TypeDetail;

public class ProductDaoImpl implements ProductDao{

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<TypeAll> select() {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from TypeAll";
		Query q =session.createQuery(hql);
		List res=q.list();
		session.close();
		return res;
	}
	@Override
	public String selectOneBrand(int id) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from ProductInfo where id=?";
		Query q =session.createQuery(hql);
		q.setParameter(0, id);
		ProductInfo res=(ProductInfo)q.uniqueResult();
		return res.getBrand();
	}
	@Override
	public List<ProductInfo> selectDetail(int pdid,String condition,String brandOne,String price) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from ProductInfo where pdid=?"+brandOne+price+condition;
		Query q =session.createQuery(hql);
		q.setParameter(0, pdid);
		List resDetail=q.list();       
		return resDetail;
	}


	@Override
	public List<ProductInfo> selectBrand(int id) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="select brand, MIN(id) from ProductInfo where pdId=? group by brand";
		Query q =session.createQuery(hql);
		q.setParameter(0, id);
		List brandList=q.list();
		return brandList;
	}

	@Override
	public List<ProductInfo> search(String keyword) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from ProductInfo where productName like ?";
		Query q =session.createQuery(hql);
		q.setParameter(0, keyword);
		List searchRes=q.list();       
		return searchRes;
	}
	@Override
	public ProductInfo selectProduct(int id) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from ProductInfo where id=?";
		Query q =session.createQuery(hql);
		q.setParameter(0, id);
		Object res=q.uniqueResult();
		ProductInfo product=(ProductInfo) res;
		return product;
	}
	@Override
	public PerPrice perPrice() {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from PerPrice where id=?";
		Query q =session.createQuery(hql);
		q.setInteger(0, 1);
		Object res=q.uniqueResult();
		PerPrice per=(PerPrice) res;
		return per;
	}

	//加入购物车
	@Override
	public void addShop(ShopCart shopCart) {
		Session session=this.sessionFactory.getCurrentSession();
		session.save(shopCart);

	}

	//获取评价
	@Override
	public List<Judge> getJudge(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Judge where pid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, id);
		List res = q.list();
		return res;
	}

	@Override
	public void buildOrder(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(order);
	}

	//管理员管理商品
	public List allProduct(){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from ProductInfo";
		Query q = session.createQuery(hql);
		List allList = q.list();
		return allList;
	}
	public List queryProduct(String productName){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from ProductInfo where productName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, productName);
		List res = q.list();
		return res;
	}
	public void addProduct(TypeAll typeall,TypeDetail typeDetail,Characters characters,ProductInfo productInfo){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from TypeAll where typeAllName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, typeall.getTypeAllName());
		Object obj = q.uniqueResult();
		TypeAll type = (TypeAll)obj;
		if(type==null)
			session.save(typeall);
		String hql1 = "from TypeAll where typeAllName=?";
		Query q1 = session.createQuery(hql1);
		q1.setParameter(0, typeall.getTypeAllName());
		Object obj1 = q1.uniqueResult();
		TypeAll type1 = (TypeAll)obj1;
		int id=type1.getPid();

		String hql2 = "from TypeDetail where pid=? and typeDetailName=?";
		Query q2 = session.createQuery(hql2);
		q2.setParameter(0, id);
		q2.setParameter(1, typeDetail.getTypeDetailName());
		Object obj2 = q2.uniqueResult();
		TypeDetail type2 = (TypeDetail)obj2;
		if(type2==null){
			typeDetail.setPid(id);
			session.save(typeDetail);
		}
		String hql3 = "from TypeDetail where pid=? and typeDetailName=?";
		Query q3 = session.createQuery(hql3);
		q3.setParameter(0, id);
		q3.setParameter(1, typeDetail.getTypeDetailName());
		Object obj3 = q3.uniqueResult();
		TypeDetail type3 = (TypeDetail)obj3;
		int detailid=type3.getPdid();

		String hql4 = "from ProductInfo where pdid=? and productName=?";
		Query q4 = session.createQuery(hql4);
		q4.setParameter(0, detailid);
		q4.setParameter(1, productInfo.getProductName());
		Object obj4 = q4.uniqueResult();
		ProductInfo type4 = (ProductInfo)obj4;
		if(type4==null){
			productInfo.setPdid(detailid);
			session.save(productInfo);
		}
		String hql5 = "from ProductInfo where pdid=? and productName=?";
		Query q5 = session.createQuery(hql5);
		q5.setParameter(0, detailid);
		q5.setParameter(1, productInfo.getProductName());
		Object obj5 = q5.uniqueResult();
		ProductInfo type5 = (ProductInfo)obj5;
		int pid=type5.getId();

		String hql6 = "from Characters where id=? and color=? and type=?";
		Query q6 = session.createQuery(hql6);
		q6.setParameter(0, pid);
		q6.setParameter(1, characters.getColor());
		q6.setParameter(2, characters.getType());
		Object obj6 = q6.uniqueResult();
		Characters type6 = (Characters)obj6;
		if(type6==null){
			characters.setId(pid);
			session.save(characters);
		}
	}
	public void deleteProduct(int detailId){
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println(detailId);
		String hql = "from Characters where detailId=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, detailId);
		Object obj = q.uniqueResult();
		Characters ch = (Characters)obj;
		session.delete(ch);
	}

	public Characters getCharacterInfo(int detailId){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Characters where detailId=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, detailId);
		Object obj = q.uniqueResult();
		Characters cha = (Characters)obj;
		return cha;
	}
	public ProductInfo getProductInformation(int detailId){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "from Characters where detailId=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, detailId);
		Object obj = q.uniqueResult();
		Characters cha = (Characters)obj;

		String hql1 = "from ProductInfo where id=?";
		Query q1 = session.createQuery(hql1);
		q1.setParameter(0, cha.getId());
		Object obj1 = q1.uniqueResult();
		ProductInfo product = (ProductInfo)obj1;
		return product;
	}
	public void modifyProduct(ProductInfo product,Characters character){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "update ProductInfo set originalPrice=?,barginPrice=?,productName=?," +
				"monthNum=?,brand=?,isboutique=?,cu=? where productName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, product.getOriginalPrice());
		q.setParameter(1, product.getBarginPrice());
		q.setParameter(2, product.getProductName());
		q.setParameter(3, product.getMonthNum());
		q.setParameter(4, product.getBrand());
		q.setParameter(5, product.getIsboutique());
		q.setParameter(6, product.getCu());
		q.setParameter(7, product.getProductName());
		q.executeUpdate();

		String hql1 = "update Characters set color=?,type=? where detailId=? ";
		Query q1 = session.createQuery(hql1);
		q1.setParameter(0, character.getColor());
		q1.setParameter(1, character.getType());
		q1.setParameter(2, ProductAction.CHADETAILID);
		q1.executeUpdate();
	}
	
	//报表
	@Override
	public List reportPro() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "select count(*) as num,province from Customer group by province";
		Query q = session.createQuery(hql);
		List res = q.list();
		return res;
	}
	
	@Override
	public List reportCity() {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "select count(*) as num,province,city from Customer group by city";
		Query q = session.createQuery(hql);
		List res = q.list();
		return res;
	}
	
	@Override
	public List reportAllYear(String year1,String year2) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "select sum(price),sum(allMoney),sum(hasPaid),sum(needPay),sum(earn) from RecordOfPay where date between '"+year1+"' and '"+year2+"'";
		Query q = session.createQuery(hql);
		List res = q.list();
		return res;
	}
	
	@Override
	public List reportJiduYear(String year, String yue) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "select sum(price),sum(allMoney),sum(hasPaid),sum(needPay),sum(earn) from RecordOfPay where date between '"+year+"' and '"+yue+"'";
		Query q = session.createQuery(hql);
		List res = q.list();
		return res;
	}

}
