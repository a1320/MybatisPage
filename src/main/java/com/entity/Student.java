package com.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Student {
	private int studentNo;
	private String loginPwd;
	private String studentName;
	private String sex;
	private int gradeID;
	private String phone;
	private String address;
	private Date datetime;
	private String email;
	private String identityCard;
	private int money;

	public Student() {
		super();
	}

	public Student(int studentNo, String loginPwd, String studentName, String sex, int gradeID, String phone,
			String address, Date datetime, String email, String identityCard, int money) {
		super();
		this.studentNo = studentNo;
		this.loginPwd = loginPwd;
		this.studentName = studentName;
		this.sex = sex;
		this.gradeID = gradeID;
		this.phone = phone;
		this.address = address;
		this.datetime = datetime;
		this.email = email;
		this.identityCard = identityCard;
		this.money = money;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getGradeID() {
		return gradeID;
	}

	public void setGradeID(int gradeID) {
		this.gradeID = gradeID;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "Student [studentNo=" + studentNo + ", loginPwd=" + loginPwd + ", studentName=" + studentName + ", sex="
				+ sex + ", gradeID=" + gradeID + ", phone=" + phone + ", address=" + address + ", datetime="
				+ new SimpleDateFormat("yyyy-MM-dd").format(datetime) + ", email=" + email + ", identityCard="
				+ identityCard + ", money=" + money + "]";
	}

}
