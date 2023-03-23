package com.devpro.javaweb23.dto;

import com.devpro.javaweb23.services.BaseService;

public class ShopSearch {
	private String keyword;
	private String provinceAddress;
	private String townAddress;
	private String villageAddress;
	private String detailAddress;
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
	public String getProvinceAddress() {
		return provinceAddress;
	}
	public void setProvinceAddress(String provinceAddress) {
		this.provinceAddress = provinceAddress;
	}
	public String getTownAddress() {
		return townAddress;
	}
	public void setTownAddress(String townAddress) {
		this.townAddress = townAddress;
	}
	public String getVillageAddress() {
		return villageAddress;
	}
	public void setVillageAddress(String villageAddress) {
		this.villageAddress = villageAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
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
