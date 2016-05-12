package com.fenqi.po;

import java.util.HashSet;
import java.util.Set;

public class TypeAll {
	private int pid;
	private String typeAllName;
	private Set<TypeDetail> productType=new HashSet<TypeDetail>();
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getTypeAllName() {
		return typeAllName;
	}
	public void setTypeAllName(String typeAllName) {
		this.typeAllName = typeAllName;
	}
	public Set<TypeDetail> getProductType() {
		return productType;
	}
	public void setProductType(Set<TypeDetail> productType) {
		this.productType = productType;
	}
}
