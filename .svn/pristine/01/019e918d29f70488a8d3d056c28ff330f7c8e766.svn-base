package com.fenqi.action;

import java.util.Map;

import com.fenqi.manager.PayMgr;
import com.fenqi.po.Order;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PayAction extends ActionSupport{
	private Order order;
	private PayMgr payMgrImpl;
	private String orderId;  //取消订单
	private String payOrderId;   //继续付款的ID
	private float monthpay;      //继续付款的月供

	public String getPayOrderId() {
		return payOrderId;
	}

	public void setPayOrderId(String payOrderId) {
		this.payOrderId = payOrderId;
	}

	public float getMonthpay() {
		return monthpay;
	}

	public void setMonthpay(float monthpay) {
		this.monthpay = monthpay;
	}

	public String getOrderId() {
		return orderId;
	}


	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}


	public void setPayMgrImpl(PayMgr payMgrImpl) {
		this.payMgrImpl = payMgrImpl;
	}


	public Order getOrder() {
		return order;
	}


	public void setOrder(Order order) {
		this.order = order;
	}


	//提交订单
	public String submitOrder() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		order=(Order) session.get("orderall");
		this.payMgrImpl.addOrder(order);
		return SUCCESS;		
	}

	//完成付款
	public String pay() throws Exception{
		Map  session = ActionContext.getContext().getSession();
		order=(Order) session.get("orderall");
		boolean states=this.payMgrImpl.pay(order);
		if(states)
			return SUCCESS;	
		else
			return INPUT;
	}

	//取消订单
	public String cancelOrder() throws Exception{
		this.payMgrImpl.cancelOrder(orderId);
		return SUCCESS;		
	}

	//账单继续付款
	public String orderContinue() throws Exception{
		Map  session = ActionContext.getContext().getSession();
        order=this.payMgrImpl.getConOrder(payOrderId);
        order.setFirstPay(order.getMonthPay());
		session.put("orderall",order);
        return SUCCESS;
	}

}
