package jpcc.service;

import java.util.Collections;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import jpcc.entity.Brand;

@Transactional
@Component
public class BrandService {
	@Autowired
	SessionFactory factory;
	
	public void insert(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(brand);
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
	
	public void update(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(brand);
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
	
	public void delete(Brand brand) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(brand);
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
	
	public void refresh(Brand brand) {
		Session session = factory.getCurrentSession();
		session.refresh(brand);
		// Nap kem Products voi brand
		Hibernate.initialize(brand.getProducts());
	}
	
	public Brand get(String id) {
		Session session = factory.getCurrentSession();
		Brand brand = (Brand) session.get(Brand.class, id);
		// Nap kem Products voi brand
		Hibernate.initialize(brand.getProducts());
		return brand;
	}
	
	public List<Brand> list() {
		String hql = "FROM Brand";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Brand> list = query.list();
		return list;
	}

	public List<Brand> get3Items() {
		String hql = "FROM Brand WHERE SIZE(products)>=3";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Brand> list = query.list();
		Collections.shuffle(list);
		List<Brand> bra3 = list.subList(0, 3);
		for (Brand s: bra3) {
			Hibernate.initialize(s.getProducts());
		}
		return bra3;
		
	}

	public Brand getBrand(String brand) {
		String hql = "FROM Brand WHERE name=:brand";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		query.setParameter("brand", brand);
		Brand x= (Brand) query.uniqueResult();
		Hibernate.initialize(x.getProducts());
		return x;
	}

	
}
