package com.fenqi.po;

import java.util.Date;

public class Order {
	private int id;
	private String userName;//用户名
	private Date submitDate;//提交日期
	private String orderId;//订单id
	private String shop;//商品名
	private float price;//价格
	private int count;//数量
	private float firstPay;//首付
	private int monthTime;//分期数
	private float monthPay;//月付
	private float allMoney;//总费用
	private int isPay;//是否支付
	private String content;//内容
	private Customer customer;
	/*
	 * set 和 get方法
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}	
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getShop() {
		return shop;
	}
	public void setShop(String shop) {
		this.shop = shop;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public float getFirstPay() {
		return firstPay;
	}
	public void setFirstPay(float firstPay) {
		this.firstPay = firstPay;
	}
	public int getMonthTime() {
		return monthTime;
	}
	public void setMonthTime(int monthTime) {
		this.monthTime = monthTime;
	}
	public float getMonthPay() {
		return monthPay;
	}
	public void setMonthPay(float monthPay) {
		this.monthPay = monthPay;
	}
	public float getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(float allMoney) {
		this.allMoney = allMoney;
	}
	public int getIsPay() {
		return isPay;
	}
	public void setIsPay(int isPay) {
		this.isPay = isPay;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
