package com.devpro.javaweb23.dto;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

public class BookItem {
	private int saleorderId;
	private int shopId;
	private String saleorderName;
	private int saleorderPhone;
	private Date saleorderDateBook;
	private Time saleorderTimeBook;
	private int saleorderNumberPeople;
	private int saleorderNumberTable;
	private String saleorderNote;
	public int getSaleorderId() {
		return saleorderId;
	}
	public void setSaleorderId(int saleorderId) {
		this.saleorderId = saleorderId;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getSaleorderName() {
		return saleorderName;
	}
	public void setSaleorderName(String saleorderName) {
		this.saleorderName = saleorderName;
	}
	public int getSaleorderPhone() {
		return saleorderPhone;
	}
	public void setSaleorderPhone(int saleorderPhone) {
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
	public int getSaleorderNumberPeople() {
		return saleorderNumberPeople;
	}
	public void setSaleorderNumberPeople(int saleorderNumberPeople) {
		this.saleorderNumberPeople = saleorderNumberPeople;
	}
	public int getSaleorderNumberTable() {
		return saleorderNumberTable;
	}
	public void setSaleorderNumberTable(int saleorderNumberTable) {
		this.saleorderNumberTable = saleorderNumberTable;
	}
	public String getSaleorderNote() {
		return saleorderNote;
	}
	public void setSaleorderNote(String saleorderNote) {
		this.saleorderNote = saleorderNote;
	}
}
