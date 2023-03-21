package com.devpro.javaweb23.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "tbl_category")
public class Categories extends BaseEntity {

	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@Column(name = "description", length = 100, nullable = false)
	private String description;

	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;

	@OneToMany(cascade = CascadeType.ALL, 
			   fetch = FetchType.LAZY, 
			   mappedBy = "categories") // trỏ tới property bên many
	private Set<Product> products = new HashSet<Product>();	
	
	// qui tắc: Trong phía One-To-Many thì cần 2 methods sau:
	public void addProduct(Product product) {
		products.add(product);
		product.setCategories(this);
	}
	public void deleteProduct(Product product) {
		products.remove(product);
		product.setCategories(null);
	}
	
	@ManyToMany(cascade = CascadeType.ALL, 
			fetch = FetchType.EAGER, 
			mappedBy = "categoriess") // >>> property
	private Set<Shop> shops = new HashSet<Shop>();
	// qui tắc: Trong phía Many-To-Many thì cần 2 methods sau:
	public void addShops(Shop shop) {
		shop.getCategoriess().add(this);
		shops.add(shop);
	}
	public void deleteShops(Shop shop) {
		shop.getCategoriess().remove(this);
		shops.remove(shop);
	}
	
	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}
	public Set<Shop> getShops() {
		return shops;
	}
	public void setShops(Set<Shop> shops) {
		this.shops = shops;
	}
	
	
}
