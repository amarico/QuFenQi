package com.fenqi.managerImpl;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import com.fenqi.dao.PayDao;
import com.fenqi.manager.PayMgr;
import com.fenqi.po.Order;
import com.fenqi.po.RecordOfPay;
import com.opensymphony.xwork2.ActionContext;

public class PayMgrImpl implements PayMgr{
	private PayDao payDao;
	private RecordOfPay recordOfPay=new RecordOfPay();

	public void setPayDao(PayDao payDao) {
		this.payDao = payDao;
	}

	//提交订单
	@Override
	public Order addOrder(Order order) {
		Map  session = ActionContext.getContext().getSession();
		String user=(String) session.get("user");
		order.setUserName(user);
		order.setSubmitDate(new Date());
		Date date=new Date();
		int day=date.getDate();
		int month=date.getMonth()+1;
		int year=date.getYear()+1900;
		int hour=date.getHours();
		int minute=date.getMinutes();
		int ms=date.getSeconds();
		String orderid=String.valueOf(year)+String.valueOf(month)+String.valueOf(day)+String.valueOf(hour)+String.valueOf(minute)+String.valueOf(ms);
		order.setOrderId(orderid);
		order.setCount(1);
		order.setMonthPay(order.getMonthPay());
		order.setAllMoney(order.getMonthPay()*order.getMonthTime()+order.getFirstPay());
		order.setIsPay(0);
		this.payDao.addOrderDao(order);
		return order;
	}

	@Override
	public boolean pay(Order order) {
		recordOfPay.setUserName(order.getUserName());
		recordOfPay.setProductName(order.getShop());
		recordOfPay.setOrderId(order.getOrderId());
		recordOfPay.setMonthPay(order.getMonthPay());
		recordOfPay.setMonthTime(order.getMonthTime());
		recordOfPay.setHasPaid(order.getFirstPay());
		recordOfPay.setNeedPay(order.getAllMoney()-order.getFirstPay());
		recordOfPay.setMonthPaid(0);
		recordOfPay.setNeedMonthPay(order.getMonthTime());
		recordOfPay.setPrice(order.getPrice());
		recordOfPay.setAllMoney(order.getAllMoney());
		recordOfPay.setEarn(order.getAllMoney()-order.getPrice());
		recordOfPay.setDate(new Date());
		recordOfPay.setState(0);
		boolean re=this.payDao.pay(recordOfPay);
		return re;
	}
	
	@Override
	public void cancelOrder(String orderId) {
		this.payDao.cancelOrder(orderId);
		
	}
	
	//继续付款的获取订单
	@Override
	public Order getConOrder(String id) {
		Order or1=this.payDao.getOrderCon(id);
		return or1;
	}

}
