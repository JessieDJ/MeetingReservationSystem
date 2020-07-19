package com.model;

public class User {
	
	private String username;
	private String passwd;
	private String groupid;
	private String ID;

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getGroupid() {
		return groupid;
	}

	public void setGroupid(String group) {
		this.groupid = group;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
