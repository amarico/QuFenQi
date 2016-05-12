package com.fenqi.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.fenqi.manager.CustomerMgr;
import com.fenqi.po.Customer;
import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;
import com.fenqi.po.ShopCart;
import com.fenqi.po.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CustomerAction extends ActionSupport{
	private Customer customer;
	private User user;
	private Customer myinfo;
	private CustomerMgr customerManager;
	private String confirmPassword;   //确认密码
	private List<Order> orderList;
	private List<RecordOfPay> moneyList;
	private List<ShopCart> shopList;
	private static String USERNAME;
	private List<Customer> customerList;
	private String passwordOld;
	private String password;
	public static String password1;
	private String passwordAgain;
	private String email;
	private String emailAgain;
	private String province;
	private String city;
	private String address;
	private int check;
	public int getCheck() {
		return check;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setCheck(int check) {
		this.check = check;
	}

	public String getPasswordOld() {
		return passwordOld;
	}

	public void setPasswordOld(String passwordOld) {
		this.passwordOld = passwordOld;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordAgain() {
		return passwordAgain;
	}

	public void setPasswordAgain(String passwordAgain) {
		this.passwordAgain = passwordAgain;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailAgain() {
		return emailAgain;
	}

	public void setEmailAgain(String emailAgain) {
		this.emailAgain = emailAgain;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Customer getMyinfo() {
		return myinfo;
	}

	public void setMyinfo(Customer myinfo) {
		this.myinfo = myinfo;
	}

	public void setCustomerManager(CustomerMgr customerManager) {
		this.customerManager = customerManager;
	}


	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}


	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}


	public List<RecordOfPay> getMoneyList() {
		return moneyList;
	}

	public void setMoneyList(List<RecordOfPay> moneyList) {
		this.moneyList = moneyList;
	}

	public List<ShopCart> getShopList() {
		return shopList;
	}

	public void setShopList(List<ShopCart> shopList) {
		this.shopList = shopList;
	}

	public List<Customer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}


	public String loginCheck() throws Exception {
		password1=customer.getPassword();
		String username=this.customerManager.check(customer);	
		if(!(username==null)){
			Map  session = ActionContext.getContext().getSession();
			session.put("user", username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//管理员登陆
	public String adminLoginCheck() throws Exception {
		User user1=this.customerManager.checkAdmin(user);	
		if(!(user1==null)){
			Map  session = ActionContext.getContext().getSession();
			session.put("admin", user1.getUserName());
			return SUCCESS;
		}
		else
			return INPUT;
	}

	public String addUser() throws Exception{
		boolean states=this.customerManager.register(customer);	
		if(states)
			return SUCCESS;
		else
			return INPUT;

	}
	public String loginOut() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		if(session != null && session.size() > 0){
			session.clear();
		}
		return SUCCESS;
	}

	//管理员退出
	public String adminloginOut() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		if(session != null && session.size() > 0){
			session.clear();
		}
		return SUCCESS;
	}

	//我的趣分期
	public String getMyself() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//修改密码按钮
	public String changePassword() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//修改密码
	public String modifyPassword() throws Exception{
		if(password.equals(passwordAgain))
		{
			Map  session = ActionContext.getContext().getSession();
			String username=(String) session.get("user");
			Boolean st=this.customerManager.modifyPassword(username,passwordOld,password);
			if(st)
				return SUCCESS;
			else
				return INPUT;
		}else
			return INPUT;
	}

	//管理员修改密码
	public String adminModifyPassword() throws Exception{
		if(password.equals(passwordAgain))
		{
			Map  session = ActionContext.getContext().getSession();
			String username=(String) session.get("admin");
			Boolean st=this.customerManager.adminModifyPassword(username,passwordOld,password);
			if(st){
				session.remove("admin");
				return SUCCESS;
			}
			else
				return INPUT;
		}else
			return INPUT;
	}

	//修改邮箱按钮
	public String changeEmail() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//修改邮箱
	public String modifyEmail() throws Exception{
		if(email.equals(emailAgain))
		{
			Map  session = ActionContext.getContext().getSession();
			String username=(String) session.get("user");
			this.customerManager.modifyEmail(username,email);
			return SUCCESS;
		}else
			return INPUT;
	}

	//修改地址按钮
	public String changeAddress() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//修改地址
	public String modifyAddress() throws Exception{
		if(province==null||city==null||address==null)
			return INPUT;
		else{
			Map  session = ActionContext.getContext().getSession();
			String username=(String) session.get("user");
			this.customerManager.modifyAddress(username,province,city,address);
			return SUCCESS;
		}
	}

	//查看订单
	public String getOrder() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			orderList=this.customerManager.getOrder(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	//查看账单
	public String getMoney() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			moneyList=this.customerManager.getMoney(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	public String checkSafe() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		myinfo=this.customerManager.getCustomer(username);
		check = this.customerManager.checkSafe(password1);
		customer = this.customerManager.getCustomer(username);
		return SUCCESS;
	}

	//查看购物车
	public String getShop() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null){
			myinfo=this.customerManager.getCustomer(username);
			shopList=this.customerManager.getShop(username);
			return SUCCESS;
		}
		else
			return INPUT;
	}

	/**********管理员对用户进行增、删、改、查操作************/

	public String addCustomer() throws Exception{
		if(customerManager.addCustomer(customer))
			return SUCCESS;
		else
			return INPUT;
	}

	public String deleteCustomer() throws Exception{	
		customerManager.deleteCustomer(customer.getUserName());
		return SUCCESS;			
	}
	public String queryCustomer() throws Exception{
		if(customer.getUserName().trim().equals("")){
			customerList = this.customerManager.allCustomer();
			return SUCCESS;
		}
		else{
			customerList = this.customerManager.queryCustomer(customer.getUserName());
			USERNAME = customer.getUserName();
			return SUCCESS;			
		}
	}
	public String getCustomer1() throws Exception{
		customer = this.customerManager.getCustomer(customer.getUserName());
		return SUCCESS;
	}
	public String modifyCustomer() throws Exception{
		this.customerManager.modifyCustomer(customer);
		return SUCCESS;
	}

}
