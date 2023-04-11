package com.devpro.javaweb23.dto;

import com.devpro.javaweb23.services.BaseService;

public class UserSearch {
	private int userId;
	private String keyword;
	private String currentPage;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPage() {
		try {
			return Integer.parseInt(this.getCurrentPage());
		} catch (Exception e) {
			return BaseService.NO_PAGING; 
		}
	}
}
