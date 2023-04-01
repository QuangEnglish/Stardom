package com.devpro.javaweb23.model;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_shop")
public class Shop extends BaseEntity{
	
	@Column(name = "name", length = 100, nullable = false)
	private String name;
	@Column(name = "province_address", length = 45, nullable = false)
	private String provinceAddress;
	@Column(name = "town_address", length = 45, nullable = false)
	private String townAddress;
	@Column(name = "village_address", length = 45, nullable = false)
	private String villageAddress;
	@Column(name = "detail_address", length = 45, nullable = true)
	private String detailAddress;
	@Lob
	@Column(name = "description_shop", nullable = false, columnDefinition = "LONGTEXT")
	private String descriptionShop;
	@Column(name = "avatar", nullable = true)
	private String avatar;
	@Column(name = "open_time", nullable = false)
	private Time openTime;
	@Column(name = "close_time", nullable = false)
	private Time closeTime;
	@Column(name = "short_description_shop", length = 100, nullable = false)
	private String shortDescriptionShop;
	@Column(name = "is_hot", nullable = true)
	private Boolean isHot = Boolean.FALSE;
	@Column(name = "is_new", nullable = true)
	private Boolean isNew = Boolean.FALSE;
	@Column(name = "is_display", nullable = true)
	private Boolean isDisplay = Boolean.FALSE;
	@Column(name = "assess_start", nullable = true)
	private Integer assessStart;
	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	@Column(name = "view_shop", nullable = true)
	private Integer viewShop =1;
	@OneToMany(cascade = CascadeType.ALL, 
			   fetch = FetchType.EAGER, 
			   mappedBy = "shop")
	private Set<ShopImages> shopImages = new HashSet<ShopImages>();
	public void addShopImages(ShopImages _shopImages) {
		_shopImages.setShop(this);
		shopImages.add(_shopImages);
	}
	public void deleteShopImages(ShopImages _shopImages) {
		_shopImages.setShop(null);
		shopImages.remove(_shopImages);
	}
	
	@OneToMany(cascade = CascadeType.ALL, 
			   fetch = FetchType.LAZY, 
			   mappedBy = "shop") // trỏ tới property bên many
	private Set<Product> products = new HashSet<Product>();	
	
	// qui tắc: Trong phía One-To-Many thì cần 2 methods sau:
	public void addProduct(Product product) {
		product.setShop(this);
		products.add(product);
	}
	public void deleteProduct(Product product) {
		product.setShop(null);
		products.remove(product);
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "view_id")
	private View view;
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_shop_category", 
			   joinColumns = @JoinColumn(name = "shop_id"), 
			   inverseJoinColumns = @JoinColumn(name = "category_id"))
	private Set<Categories> categoriess = new HashSet<Categories>();
	// qui tắc: Trong phía Many-To-Many thì cần 2 methods sau:
	public void addCategories(Categories categories) {
		categories.getShops().add(this);
		categoriess.add(categories);
	}
	public void deleteCategories(Categories categories) {
		categories.getShops().remove(this);
		categoriess.remove(categories);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getDescriptionShop() {
		return descriptionShop;
	}
	public void setDescriptionShop(String descriptionShop) {
		this.descriptionShop = descriptionShop;
	}

	public Time getOpenTime() {
		return openTime;
	}
	public void setOpenTime(Time openTime) {
		this.openTime = openTime;
	}
	public Time getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(Time closeTime) {
		this.closeTime = closeTime;
	}
	public String getShortDescriptionShop() {
		return shortDescriptionShop;
	}
	public void setShortDescriptionShop(String shortDescriptionShop) {
		this.shortDescriptionShop = shortDescriptionShop;
	}
	public Boolean getIsHot() {
		return isHot;
	}
	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}
	public Integer getAssessStart() {
		return assessStart;
	}
	public void setAssessStart(Integer assessStart) {
		this.assessStart = assessStart;
	}
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	public Set<ShopImages> getShopImages() {
		return shopImages;
	}
	public void setShopImages(Set<ShopImages> shopImages) {
		this.shopImages = shopImages;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public Set<Categories> getCategoriess() {
		return categoriess;
	}
	public void setCategoriess(Set<Categories> categoriess) {
		this.categoriess = categoriess;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Boolean getIsNew() {
		return isNew;
	}
	public void setIsNew(Boolean isNew) {
		this.isNew = isNew;
	}
	public Boolean getIsDisplay() {
		return isDisplay;
	}
	public void setIsDisplay(Boolean isDisplay) {
		this.isDisplay = isDisplay;
	}
	public View getView() {
		return view;
	}
	public void setView(View view) {
		this.view = view;
	}
	public Integer getViewShop() {
		return viewShop;
	}
	public void setViewShop(Integer viewShop) {
		this.viewShop += viewShop;
	}

	
}
