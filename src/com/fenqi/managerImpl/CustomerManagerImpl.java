package com.fenqi.managerImpl;


import java.util.List;

import com.fenqi.dao.CustomerDao;
import com.fenqi.manager.CustomerMgr;
import com.fenqi.po.Customer;
import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.User;

public class CustomerManagerImpl implements CustomerMgr {

	private CustomerDao customerDao;

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	@Override
	/*
	 * 用户登录
	 */
	public String check(Customer customer) {
		// TODO Auto-generated method stub
		Customer result=this.customerDao.check(customer);
		if(result==null)
			return null;
		else{

			return result.getUserName();
		}	
	}
	
	/*
	 * 管理员登录
	 */
	public User checkAdmin(User user) {
		// TODO Auto-generated method stub
		User result=this.customerDao.checkAdmin(user);
		if(result==null)
			return null;
		else{

			return result;
		}	
	}

	public boolean register(Customer customer){
		Customer customer1=this.customerDao.getCustomer(customer.getUserName());
		if(customer1==null){
			customer.setCreditLine(5000);
			customer.setMoney(10000);
			this.customerDao.register(customer);
			return true;
		}else
			return false;
	}
	@Override
	public Customer getCustomer(String username) {
		Customer customer = this.customerDao.getCustomer(username);
		return customer;
	}

	@Override
	public boolean modifyPassword(String username,String passwordOld,String password) {
		return this.customerDao.modifyPassword(username,passwordOld,password);
	}
	@Override
	public boolean adminModifyPassword(String username,String passwordOld,String password) {
		return this.customerDao.adminModifyPassword(username,passwordOld,password);
	}

	@Override
	public void modifyEmail(String username,String email) {
		this.customerDao.modifyEmail(username,email);

	}
	@Override
	public void modifyAddress(String username, String province, String city,
			String address) {
		this.customerDao.modifyAddress(username,province,city,address);

	}

	//查看订单
	@Override
	public List<Order> getOrder(String name) {
		List order=this.customerDao.getOrderList(name);
		return order;
	}

	//查看账单
	@Override
	public List<RecordOfPay> getMoney(String name) {
		List money=this.customerDao.getMoneyList(name);
		return money;
	}

	public int checkSafe(String userName){

		String password = userName;
		int check = 1;
		if(password.length()<=6){
			if((password.matches("[0-9]*")==true)||(password.matches("^[a-zA-z]*")==true)){
				check = 1;
			}
			else{
				check = 2;
			}
		}
		else if(password.length()>6){
			if((password.matches("[0-9]*")==true)||(password.matches("^[a-zA-z]*")==true)){
				check = 3;
			}
			else{
				check = 4;
			}
		}
		return check;
	}

	@Override
	public List<ShopCart> getShop(String name) {
		List shopCart=this.customerDao.getShop(name);
		return shopCart;
	}

	/**********************************管理员对用户进行增、删、改、查操作*****************************/
	public boolean addCustomer(Customer customer){
		Customer result = this.customerDao.addCustomer(customer);
		if(result==null){
			return true;
		}
		else{
			return false;
		}

	}
	public void deleteCustomer(String userName){
		this.customerDao.deleteCustomer(userName);
	}
	public List<Customer> queryCustomer(String userName){
		List<Customer> customer = this.customerDao.queryCustomer(userName);
		return customer;
	}
	public List<Customer> allCustomer(){
		List<Customer> customerList = this.customerDao.allCustomer();
		return customerList;
	}
	public void modifyCustomer(Customer customer){
		this.customerDao.modifyCustomer(customer);
	}

}
