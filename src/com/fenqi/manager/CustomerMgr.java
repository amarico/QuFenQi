package com.fenqi.manager;

import java.util.List;

import com.fenqi.po.Customer;
import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.User;



public interface CustomerMgr {
	public String check(Customer customer);
	public User checkAdmin(User user);
	public boolean register(Customer customer);
	public Customer getCustomer(String username);
	public List<Order> getOrder(String name);
	public List<RecordOfPay> getMoney(String name);
	public List<ShopCart> getShop(String name);
	public boolean modifyPassword(String username,String passwordOld,String password);
	public boolean adminModifyPassword(String username,String passwordOld,String password);
	public void modifyEmail(String username,String email);
	public void modifyAddress(String username,String province,String city,String address);
	public int checkSafe(String userName);
	/**********管理员对用户进行增、删、改、查操作************/
	public boolean addCustomer(Customer customer);
	public void deleteCustomer(String userName);
	public List<Customer> queryCustomer(String userName);
	public List<Customer> allCustomer();
	public void modifyCustomer(Customer customer);
}
