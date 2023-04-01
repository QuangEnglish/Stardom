package com.devpro.javaweb23.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_view")
public class View extends BaseEntity {
	@Column(name = "view", nullable = false)
	private Double view;
	@OneToMany(cascade = CascadeType.ALL, 
			   fetch = FetchType.LAZY, 
			   mappedBy = "view") // trỏ tới property bên many
	private Set<Shop> shops = new HashSet<Shop>();	
	
	// qui tắc: Trong phía One-To-Many thì cần 2 methods sau:
	public void addShop(Shop shop) {
		shop.setView(this);
		shops.add(shop);
	}
	public void deleteShop(Shop shop) {
		shop.setView(null);
		shops.remove(shop);
	}
	public Double getView() {
		return view;
	}
	public void setView(Double view) {
		this.view = view;
	}
	public Set<Shop> getShops() {
		return shops;
	}
	public void setShops(Set<Shop> shops) {
		this.shops = shops;
	}
	
}
