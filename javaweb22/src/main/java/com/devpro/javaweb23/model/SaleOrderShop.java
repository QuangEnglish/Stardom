package com.devpro.javaweb23.model;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "tbl_saleorder_shop")
public class SaleOrderShop extends BaseEntity{
	@Column(name = "saleorder_name", length = 100, nullable = false)
	private String saleorderName;
	@Column(name = "saleorder_phone", nullable = false)
	private Integer saleorderPhone;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "saleorder_date_book", nullable = false)
	private Date saleorderDateBook;
	@Column(name = "saleorder_time_book", nullable = false)
	private Time saleorderTimeBook;
	@Column(name = "saleorder_number_people", nullable = false)
	private Integer saleorderNumberPeople;
	@Column(name = "saleorder_number_table", nullable = false)
	private Integer saleorderNumberTable;
	@Column(name = "saleorder_note", length = 500, nullable = true)
	private String saleorderNote;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "shop_id")
	private Shop shop;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private SaleOrder saleOrder;
	public String getSaleorderName() {
		return saleorderName;
	}
	public void setSaleorderName(String saleorderName) {
		this.saleorderName = saleorderName;
	}
	public Integer getSaleorderPhone() {
		return saleorderPhone;
	}
	public void setSaleorderPhone(Integer saleorderPhone) {
		this.saleorderPhone = saleorderPhone;
	}
	public Date getSaleorderDateBook() {
		return saleorderDateBook;
	}
	public void setSaleorderDateBook(Date saleorderDateBook) {
		this.saleorderDateBook = saleorderDateBook;
	}
	public Time getSaleorderTimeBook() {
		return saleorderTimeBook;
	}
	public void setSaleorderTimeBook(Time saleorderTimeBook) {
		this.saleorderTimeBook = saleorderTimeBook;
	}
	public Integer getSaleorderNumberPeople() {
		return saleorderNumberPeople;
	}
	public void setSaleorderNumberPeople(Integer saleorderNumberPeople) {
		this.saleorderNumberPeople = saleorderNumberPeople;
	}
	public Integer getSaleorderNumberTable() {
		return saleorderNumberTable;
	}
	public void setSaleorderNumberTable(Integer saleorderNumberTable) {
		this.saleorderNumberTable = saleorderNumberTable;
	}
	public String getSaleorderNote() {
		return saleorderNote;
	}
	public void setSaleorderNote(String saleorderNote) {
		this.saleorderNote = saleorderNote;
	}
	public Shop getShop() {
		return shop;
	}
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	public SaleOrder getSaleOrder() {
		return saleOrder;
	}
	public void setSaleOrder(SaleOrder saleOrder) {
		this.saleOrder = saleOrder;
	}
	
}
