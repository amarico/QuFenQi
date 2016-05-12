package com.fenqi.manager;

import com.fenqi.po.Order;

public interface PayMgr {
	public Order addOrder(Order order);
	public boolean pay(Order order);
	public void cancelOrder(String orderId);
	public Order getConOrder(String id);   //继续付款获取订单信息

}
