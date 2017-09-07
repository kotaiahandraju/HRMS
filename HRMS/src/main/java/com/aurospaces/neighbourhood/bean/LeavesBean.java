package com.aurospaces.neighbourhood.bean;

import java.util.Date;

public class LeavesBean {
protected int id =0;
protected Date fromDate;
protected Date toDate;
protected String fromDate1;
protected String toDate1;
protected Date createdTime ;
protected Date updatedTime ;
protected String name;
protected int emloyeeId =0;
protected int accept =0;
protected int leaveType =0;
protected String email ;
protected String reason;


public int getLeaveType() {
	return leaveType;
}
public void setLeaveType(int leaveType) {
	this.leaveType = leaveType;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public String getReason() {
	return reason;
}
public void setReason(String reason) {
	this.reason = reason;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Date getFromDate() {
	return fromDate;
}
public void setFromDate(Date fromDate) {
	this.fromDate = fromDate;
}
public Date getToDate() {
	return toDate;
}
public void setToDate(Date toDate) {
	this.toDate = toDate;
}
public String getFromDate1() {
	return fromDate1;
}
public void setFromDate1(String fromDate1) {
	this.fromDate1 = fromDate1;
}
public String getToDate1() {
	return toDate1;
}
public void setToDate1(String toDate1) {
	this.toDate1 = toDate1;
}
public Date getCreatedTime() {
	return createdTime;
}
public void setCreatedTime(Date createdTime) {
	this.createdTime = createdTime;
}
public Date getUpdatedTime() {
	return updatedTime;
}
public void setUpdatedTime(Date updatedTime) {
	this.updatedTime = updatedTime;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getEmloyeeId() {
	return emloyeeId;
}
public void setEmloyeeId(int emloyeeId) {
	this.emloyeeId = emloyeeId;
}
public int getAccept() {
	return accept;
}
public void setAccept(int accept) {
	this.accept = accept;
}

}
