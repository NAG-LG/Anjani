package com.jwt.dao;

import java.util.List;
import com.jwt.model.Product;

public interface ProductDAO {

	public void addProduct(Product product);
	
	public List<Product> getRandomfirst3Products();

	public List<Product> getRandom3Products(int start , int end);
	
	public List<Product> getByCategory(String category);

	public void deleteProduct(Integer product_id);

	public Product updateProduct(Product product);

	public Product getProduct(int product_id);
}
