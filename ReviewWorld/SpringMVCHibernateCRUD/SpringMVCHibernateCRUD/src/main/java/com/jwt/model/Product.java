package com.jwt.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Ptable")
public class Product implements Serializable {

	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int product_id;

	@Column
	private String product_title;

	@Column
	private String category;

	@Column
	private String Qstn;

	@Column
	private String link;

	public int getproduct_id() {
		return product_id;
	}

	public void setproduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getproduct_title() {
		return product_title;
	}

	public void setproduct_title(String product_title) {
		this.product_title = product_title;
	}

	public String getcategory() {
		return category;
	}

	public void setcategory(String category) {
		this.category = category;
	}

	public String getQstn() {
		return Qstn;
	}

	public void setQstn(String Qstn) {
		this.Qstn = Qstn;
	}

	public String getlink() {
		return link;
	}

	public void setlink(String link) {
		this.link = link;
	}

}