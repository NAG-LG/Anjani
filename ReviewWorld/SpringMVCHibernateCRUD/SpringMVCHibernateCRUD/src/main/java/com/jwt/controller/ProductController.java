package com.jwt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.jwt.model.Product;
import com.jwt.service.ProductService;

@Controller
public class ProductController {

	private static final Logger logger = Logger
			.getLogger(ProductController.class);

	public ProductController() {
		System.out.println("ProductController()");
	}

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/")
	public ModelAndView listProduct(ModelAndView model) throws IOException {
		List<Product> listProduct = productService.getAllProduct();
		
		model.addObject("listEmployee", listProduct);
		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Product product = new Product();
		model.addObject("employee", product);
		model.setViewName("ProductForm");
		return model;
	}

	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product) {
		if (product.getproduct_id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			productService.addProduct(product);
		} else {
			productService.updateProduct(product);
		}
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deleteProduct(HttpServletRequest request) {
		int product_id = Integer.parseInt(request.getParameter("id"));
		productService.deleteProduct(product_id);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int product_id = Integer.parseInt(request.getParameter("id"));
		Product product = productService.getProduct(product_id);
		ModelAndView model = new ModelAndView("EmployeeForm");
		model.addObject("employee", product);

		return model;
	}

}