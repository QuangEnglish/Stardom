package com.devpro.javaweb23.dto;

public class Employee {
	private Integer maNv;  //goi la property khi thuoc tinh nay co hai thuoc tinhs get va set
	private String tenNv;  //goi la property
	public Employee() {
		
	}
	public Employee(Integer maNv, String tenNv) {
		super();
		this.maNv = maNv;
		this.tenNv = tenNv;
	}
	public Integer getMaNv() {
		return maNv;
	}
	public void setMaNv(Integer maNv) {
		this.maNv = maNv;
	}
	public String getTenNv() {
		return tenNv;
	}
	public void setTenNv(String tenNv) {
		this.tenNv = tenNv;
	}
	
}
