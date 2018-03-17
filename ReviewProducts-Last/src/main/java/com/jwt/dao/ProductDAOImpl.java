package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}

	@SuppressWarnings("unchecked")
	public List<Product> getRandomfirst3Products() {
		
		String maxQ = "select max(product_id) from Product";
		
		maxQ = sessionFactory.getCurrentSession().createQuery(maxQ).list().get(0).toString();
		int end = Integer.parseInt(maxQ);
		
		String query=" from Product P where P.product_id >"+(end-3)+" and "+"P.product_id <="+end; 
		return sessionFactory.getCurrentSession().createQuery(query)
				.list();
	}

	@SuppressWarnings("unchecked")
	public List<Product> getRandom3Products(int start , int end) {
		

		
		String query=" from Product P where P.product_id >"+start+" and "+"P.product_id <="+end; 
		return sessionFactory.getCurrentSession().createQuery(query)
				.list();
	}
	
	@Override
	public void deleteProduct(Integer product_id) {
		Product product = (Product) sessionFactory.getCurrentSession().load(
				Product.class, product_id);
		if (null != product) {
			this.sessionFactory.getCurrentSession().delete(product);
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByCategory(String category) {
		
		String query = "from Product where category like '"+category+"'" ;
		
		
		List<Product> aa = sessionFactory.getCurrentSession().createQuery(query)
				.list();
		System.out.println("size="+aa.size());
		return aa; 
	}	
	
	public Product getProduct(int product_id) {
		return (Product) sessionFactory.getCurrentSession().get(
				Product.class, product_id);
	}

	@Override
	public Product updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return product;
	}

}