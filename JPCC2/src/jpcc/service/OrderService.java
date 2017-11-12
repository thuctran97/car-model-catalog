package jpcc.service;

import java.util.Collection;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import jpcc.entity.Customer;
import jpcc.entity.Order;
import jpcc.entity.OrderDetail;
import jpcc.entity.Product;

@Transactional
@Component
public class OrderService {
	@Autowired
	SessionFactory factory;
	
	public void insert(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(order);
			t.commit();
		} 
		catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		}
		finally{
			session.close();
		}
	}
	
	public void update(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(order);
			t.commit();
		} 
		catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		}
		finally{
			session.close();
		}
	}
	
	public void delete(Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(order);
			t.commit();
		} 
		catch (Exception e) {
			t.rollback();
			throw new RuntimeException(e);
		}
		finally{
			session.close();
		}
	}
	
	public void refresh(Order order) {
		Session session = factory.getCurrentSession();
		session.refresh(order);
	}
	
	public Order get(Integer id) {
		Session session = factory.getCurrentSession();
		Order order = (Order) session.get(Order.class, id);
		Hibernate.initialize(order.getOrderDetails()); //nap orderdetail chung voi order
		return order;
	}
	
	public List<Order> list() {
		String hql = "FROM Order";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Order> list = query.list();
		return list;
	}


	public List<Order> getOrderListByUser(Customer user) {
		String hql = "FROM Order WHERE customer.id=:uid";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("uid", user.getId());
		List<Order> list = query.list();
		return list;
	}

	public List<Product> getPurchasedItems(Customer user) {
		String hql = "SELECT DISTINCT d.product FROM OrderDetail d WHERE d.order.customer.id=:uid";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("uid", user.getId());
		List<Product> list = query.list();
		return list;
	}
}
