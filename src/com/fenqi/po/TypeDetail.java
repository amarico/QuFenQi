package com.fenqi.po;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class TypeDetail {
	private int pdid;
	private int pid;
	private String typeDetailName;
	private TypeAll typeAll;
	private Set<ProductInfo> product=new HashSet<ProductInfo>();
    
	public TypeAll getTypeAll() {
		return typeAll;
	}
	public void setTypeAll(TypeAll typeAll) {
		this.typeAll = typeAll;
	}
	public int getPdid() {
		return pdid;
	}
	public void setPdid(int pdid) {
		this.pdid = pdid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getTypeDetailName() {
		return typeDetailName;
	}
	public void setTypeDetailName(String typeDetailName) {
		this.typeDetailName = typeDetailName;
	}
	public Set<ProductInfo> getProduct() {
		return product;
	}
	public void setProduct(Set<ProductInfo> product) {
		this.product = product;
	}
	
}
