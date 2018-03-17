package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.ProductDAO;
import com.jwt.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	@Transactional
	public void addProduct(Product product) {
		productDAO.addProduct(product);
	}

	@Override
	@Transactional
	public List<Product> getRandom3Products(int start , int end) {
		return productDAO.getRandom3Products(start,end);
	}

	@Override
	@Transactional
	public List<Product> getRandomfirst3Products() {
		return productDAO.getRandomfirst3Products();
	}	
	
	@Override
	@Transactional
	public List<Product> getByCategory(String Category) {
		return productDAO.getRandomfirst3Products();
	}
	
	@Override
	@Transactional
	public void deleteProduct(Integer product_id) {
		productDAO.deleteProduct(product_id);
	}

	public Product getProduct(int product_id) {
		return productDAO.getProduct(product_id);
	}

	public Product updateProduct(Product product) {
		// TODO Auto-generated method stub
		return productDAO.updateProduct(product);
	}

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

}
