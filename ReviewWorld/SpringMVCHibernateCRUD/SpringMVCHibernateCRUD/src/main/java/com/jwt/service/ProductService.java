package com.jwt.service;

import java.util.List;

import com.jwt.model.Product;

public interface ProductService {
	
	public void addProduct(Product product);

	public List<Product> getAllProduct();

	public void deleteProduct(Integer product_id);

	public Product getProduct(int product_id);

	public Product updateProduct(Product product);
}
