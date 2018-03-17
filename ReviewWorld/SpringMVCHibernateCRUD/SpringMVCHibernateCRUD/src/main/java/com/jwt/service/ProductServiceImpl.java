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
	public List<Product> getAllProduct() {
		return productDAO.getAllProduct();
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
