package com.jwt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
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
		randomstart = 1;
		randomend = 4;
	}

	@Autowired
	private ProductService productService;
	public List<Product> randomProducts;
	public List<Product> CategoryProducts;
	public int randomstart ,randomend;

	@RequestMapping(value = "/")
	public ModelAndView listProduct(ModelAndView model) throws IOException {
		randomProducts = productService.getRandomfirst3Products();
		
		model.addObject("componentList", randomProducts);
		model.setViewName("index");

		return model;
	}

	
	@RequestMapping(value = "/continuedContent" , method=RequestMethod.POST, produces = "application/json")
	public ModelAndView scroller(@RequestBody String submitSelection, HttpServletRequest request ) throws IOException {
		
		
		  String userName = (String) request.getSession().getAttribute("count");
		  System.out.print("comhing here ==============================="+submitSelection.toString());
		
		randomProducts = productService.getRandom3Products(randomstart,randomend);
		int next = 5;//Integer.parseInt(userName);

		
		randomProducts = productService.getRandom3Products(next-4,next);
		ModelAndView model = new ModelAndView("/");
		model.addObject("randomProducts", randomProducts);
		model.setViewName("home");

		return model;
	}

	@RequestMapping(value = "/Books")
	public ModelAndView listBooksProduct(HttpServletRequest request) throws IOException {
		
		System.out.println("Books page");
		//String Category = request.getParameter("Category");
		CategoryProducts = productService.getByCategory("Book");
		ModelAndView model = new ModelAndView("/");
		model.addObject("componentList", CategoryProducts);
		model.setViewName("index");

		return model;
	}	
	
	
	@RequestMapping(value = "/AskReview", method = RequestMethod.GET)
	public ModelAndView newProduct(ModelAndView model) {
		Product product = new Product();
		model.addObject("newProduct", product);
		model.setViewName("ProductForm");
		return model;
	}

	@RequestMapping(value = "/saveReview", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product) {
		if (product.getProduct_id() == 0) { // if employee id is 0 then creating the
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