package com.fenqi.daoImpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.fenqi.dao.PayDao;
import com.fenqi.po.Customer;
import com.fenqi.po.Order;
import com.fenqi.po.ProductInfo;
import com.fenqi.po.RecordOfPay;

public class PayDaoImpl implements PayDao{
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addOrderDao(Order order) {
		Session session=this.sessionFactory.getCurrentSession();
		session.save(order);
	}

	@Override
	public boolean pay(RecordOfPay recordOfPay) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql11="from Customer c where c.userName=?";
		Query q11=session.createQuery(hql11);
		q11.setString(0, recordOfPay.getUserName().trim());
		Object res11=q11.uniqueResult();
		Customer c1=(Customer) res11;
		float left=c1.getMoney()-recordOfPay.getHasPaid();
		if(left>=0){
			String hql12="from RecordOfPay r where r.orderId=?";
			Query q12 =session.createQuery(hql12);
			q12.setString(0, recordOfPay.getOrderId().trim());
			Object res12=q12.uniqueResult();
			RecordOfPay record=(RecordOfPay) res12;
			if(record==null)
			{
				session.save(recordOfPay);
				c1.setMoney(left);
				session.flush();
				String hql1="from Order o where o.orderId=?";
				Query q1 =session.createQuery(hql1);
				q1.setString(0, recordOfPay.getOrderId().trim());
				Object res1=q1.uniqueResult();
				Order order=(Order) res1;
				order.setIsPay(1);
				session.flush();
				String hql="from ProductInfo p where p.productName=?";
				Query q =session.createQuery(hql);
				q.setString(0, recordOfPay.getProductName().trim());
				Object res=q.uniqueResult();
				ProductInfo product=(ProductInfo) res;
				if(!(product==null)){
					product.setSellVolume(product.getSellVolume()+1);
					session.flush();}
				return true;
			}
			else
			{
				record.setHasPaid(record.getHasPaid()+recordOfPay.getHasPaid());
				record.setNeedPay(record.getNeedPay()-recordOfPay.getHasPaid());
				record.setMonthPaid(record.getMonthPaid()+1);
				record.setNeedMonthPay(record.getNeedMonthPay()-1);
				record.setDate(recordOfPay.getDate());
				if(record.getNeedMonthPay()==0){
					record.setState(1);
					String hql21="from Order o where o.orderId=?";
					Query q21 =session.createQuery(hql21);
					q21.setString(0, record.getOrderId());
					Object res21=q21.uniqueResult();
					Order order=(Order) res21;
					order.setIsPay(2);
				}
				session.flush();
				return true;
			}
		}
		else
			return false;
	}

	@Override
	public void cancelOrder(String orderId) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql1="from Order o where o.orderId=?";
		Query q1 =session.createQuery(hql1);
		q1.setString(0, orderId);
		Object res1=q1.uniqueResult();
		Order order=(Order) res1;
		session.delete(order);	
	}

	@Override
	public Order getOrderCon(String id) {
		Session session=this.sessionFactory.getCurrentSession();
		String hql1="from Order o where o.orderId=?";
		Query q1 =session.createQuery(hql1);
		q1.setString(0, id);
		Object res1=q1.uniqueResult();
		Order order=(Order) res1;
		return order;
	}
}
