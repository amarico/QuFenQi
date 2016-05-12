package com.fenqi.daoImpl;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fenqi.dao.CustomerDao;
import com.fenqi.po.Customer;
import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.User;

public class CustomerDaoImpl implements CustomerDao{

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/*
	 * 用户登录
	 */
	public Customer check(Customer customer) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from Customer customer1 where customer1.userName=? and customer1.password=?";  //表为实体表
		Query q =session.createQuery(hql);
		q.setParameter(0, customer.getUserName());
		q.setParameter(1, DigestUtils.md5Hex(customer.getPassword()));
		Object obj=q.uniqueResult();
		Customer res=(Customer)obj;
		return res;
	}
	
	//管理员登录
	@Override
	public User checkAdmin(User user) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql="from User u1 where u1.userName=? and u1.password=?";  //表为实体表
		Query q =session.createQuery(hql);
		q.setParameter(0, user.getUserName());
		q.setParameter(1, DigestUtils.md5Hex(user.getPassword()));
		Object obj=q.uniqueResult();
		User res=(User)obj;
		return res;
	}
	/*
	 * 用户注册
	 */
	public void register(Customer customer){
		Session session=this.sessionFactory.getCurrentSession();
		customer.setPassword(DigestUtils.md5Hex(customer.getPassword()));
		session.save(customer);
	}


	//获取用户信息
	@Override
	public Customer getCustomer(String name) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Customer customer2 where customer2.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, name);
		Object obj = q.uniqueResult();
		Customer customer = (Customer)obj;
		return customer;
	}

	@Override
	public boolean modifyPassword(String username,String passwordOld,String password) {
		Session session=this.sessionFactory.getCurrentSession();
		Customer cu=getCustomer(username);
		if(cu.getPassword().equals(DigestUtils.md5Hex(passwordOld))){
			cu.setPassword(DigestUtils.md5Hex(password));
			session.flush();
			return true;
		}
		else
			return false;
	}
	
	@Override
	public boolean adminModifyPassword(String username,String passwordOld,String password) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from User u2 where u2.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, username);
		Object obj = q.uniqueResult();
		User user = (User)obj;
		if(user.getPassword().equals(DigestUtils.md5Hex(passwordOld))){
			user.setPassword(DigestUtils.md5Hex(password));
			session.flush();
			return true;
		}
		else
			return false;
	}

	//修改邮箱
	@Override
	public void modifyEmail(String username,String email) {
		Session session=this.sessionFactory.getCurrentSession();
		Customer cu1=getCustomer(username);
		cu1.setE_mail(email);
		session.flush();
	}

	@Override
	public void modifyAddress(String username, String province, String city,
			String address) {
		Session session=this.sessionFactory.getCurrentSession();
		Customer cu2=getCustomer(username);
		cu2.setProvince(province);
		cu2.setCity(city);
		cu2.setAddress(address);
		session.flush();
	}

	//查询订单
	@Override
	public List<Order> getOrderList(String name) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Order o where o.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, name);
		List orderList=q.list();
		return orderList;
	}

	//查询订单
	@Override
	public List<RecordOfPay> getMoneyList(String name) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from RecordOfPay r where r.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, name);
		List orderList=q.list();
		return orderList;
	}

	@Override
	public List<ShopCart> getShop(String name) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from ShopCart r where r.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, name);
		List shopList=q.list();
		return shopList;
	}

	/**********************************管理员对用户进行增、删、改、查操作*****************************/
	public Customer addCustomer(Customer customer){
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Customer customer1 where customer1.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, customer.getUserName());
		Object obj = q.uniqueResult();
		Customer res = (Customer)obj;
		if(res==null){
			customer.setPassword(DigestUtils.md5Hex(customer.getPassword()));
			session.save(customer);
			return res;
		}
		else
			return res;
	}
	public void deleteCustomer(String userName){
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Customer customer1 where customer1.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, userName);
		Object obj = q.uniqueResult();
		Customer res = (Customer)obj;
		session.delete(res);
	}
	//单个查询
	public List<Customer> queryCustomer(String userName){
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Customer cs where cs.userName=?";
		Query q = session.createQuery(hql);
		q.setParameter(0, userName);
		List<Customer> res = q.list();
		return res;
	}
	//查询所有
	public List<Customer> allCustomer(){
		Session session=this.sessionFactory.getCurrentSession();
		String hql = "from Customer";
		Query q = session.createQuery(hql);
		List<Customer> res = q.list();
		return res;
	}
	public void modifyCustomer(Customer customer){
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "update Customer  set password=?, name=?, e_mail=?, province=?,city=?,address=?, " +
				"creditLine=?, lastTime=?, money=? where userName=? " ;
		Query q = session.createQuery(hql);
		q.setParameter(0, DigestUtils.md5Hex(customer.getPassword()));
		q.setParameter(1, customer.getName());
		q.setParameter(2, customer.getE_mail());
		q.setParameter(3, customer.getProvince());
		q.setParameter(4, customer.getCity());
		q.setParameter(5, customer.getAddress());
		q.setParameter(6, customer.getCreditLine());
		q.setParameter(7, customer.getLastTime());
		q.setParameter(8, customer.getMoney());	
		q.setParameter(9, customer.getUserName());
		q.executeUpdate();
	}
}
