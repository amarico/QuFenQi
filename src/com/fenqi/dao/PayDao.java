package com.fenqi.dao;

import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;

public interface PayDao {
	public void addOrderDao(Order order);
	public boolean pay(RecordOfPay recordOfPay);  //提交订单时的付款
	public void cancelOrder(String orderId);
	public Order getOrderCon(String id);

}
