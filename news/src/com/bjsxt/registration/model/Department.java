package com.bjsxt.registration.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


//ƶѪģ�� ��Ѫģ��
@Entity
public class Department {
	private int depid;
	private String depname;
	
	@Id
	@GeneratedValue
	public int getDepid() {
		return depid;
	}
	public void setDepid(int depid) {
		this.depid = depid;
	}
	public String getDepname() {
		return depname;
	}
	public void setDepname(String depname) {
		this.depname = depname;
	}
	
	
	
	

}
