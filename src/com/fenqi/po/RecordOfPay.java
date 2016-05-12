package com.fenqi.po;

import java.util.Date;

public class RecordOfPay {
	private int id;
	private String userName;
	private String productName;
	private String orderId;
	private float monthPay;
	private int monthTime;
	private float hasPaid;
	private float needPay;
	private int monthPaid;
	private int needMonthPay;
	private float price;
	private float allMoney;
	private float earn;
	private Date date;
	private int state;
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
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public float getMonthPay() {
		return monthPay;
	}
	public void setMonthPay(float monthPay) {
		this.monthPay = monthPay;
	}
	public int getMonthTime() {
		return monthTime;
	}
	public void setMonthTime(int monthTime) {
		this.monthTime = monthTime;
	}
	public float getHasPaid() {
		return hasPaid;
	}
	public void setHasPaid(float hasPaid) {
		this.hasPaid = hasPaid;
	}
	public float getNeedPay() {
		return needPay;
	}
	public void setNeedPay(float needPay) {
		this.needPay = needPay;
	}
	public int getMonthPaid() {
		return monthPaid;
	}
	public void setMonthPaid(int monthPaid) {
		this.monthPaid = monthPaid;
	}
	public int getNeedMonthPay() {
		return needMonthPay;
	}
	public void setNeedMonthPay(int needMonthPay) {
		this.needMonthPay = needMonthPay;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(float allMoney) {
		this.allMoney = allMoney;
	}
	public float getEarn() {
		return earn;
	}
	public void setEarn(float earn) {
		this.earn = earn;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	

}
