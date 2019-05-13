package com.cxm.entity;

public class Student {
	private Integer sId;
	private String sName;
	private Integer sSex;
	private String sBirthday;
	private Classes classes;
	
	


	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public Integer getsSex() {
		return sSex;
	}

	public void setsSex(Integer sSex) {
		this.sSex = sSex;
	}

	public String getsBirthday() {
		return sBirthday;
	}

	public void setsBirthday(String sBirthday) {
		this.sBirthday = sBirthday;
	}

}
