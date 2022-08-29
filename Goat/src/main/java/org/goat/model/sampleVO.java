package org.goat.model;

public class sampleVO {
	//번호
	private int no;
	//이름
	private String name;
	//성별
	private String gender;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "sampleVO [no=" + no + ", name=" + name + ", gender=" + gender + "]";
	}

	
}
