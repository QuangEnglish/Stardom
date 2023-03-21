package com.devpro.javaweb23.dto;

import com.devpro.javaweb23.services.BaseService;

public class ProductSearch {
	private String keyword;
	private String categoryId;
	private String currentPage;
	private String seo;
	
	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
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
