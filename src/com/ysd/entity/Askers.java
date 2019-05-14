package com.ysd.entity;

import java.util.Date;

public class Askers {
private Integer askerId;//濮撳悕
private String askerName;//鍜ㄨ鐘舵��
private String checkState;//鍜ㄨ鏃堕棿
private String checkInTime;//鍜ㄨ甯堢姸鎬�
private String changeState;//鏉冮噸
private Integer weight;//瑙掕壊鍚�


private String RoleName;
private String BakContent;
public Integer getAskerId() {
	return askerId;
}
public void setAskerId(Integer askerId) {
	this.askerId = askerId;
}
public String getAskerName() {
	return askerName;
}
public void setAskerName(String askerName) {
	this.askerName = askerName;
}
public String getCheckState() {
	return checkState;
}
public void setCheckState(String checkState) {
	this.checkState = checkState;
}
public String getCheckInTime() {
	return checkInTime;
}
public void setCheckInTime(String checkInTime) {
	this.checkInTime = checkInTime;
}
public String getChangeState() {
	return changeState;
}
public void setChangeState(String changeState) {
	this.changeState = changeState;
}
public Integer getWeight() {
	return weight;
}
public void setWeight(Integer weight) {
	this.weight = weight;
}
public String getRoleName() {
	return RoleName;
}
public void setRoleName(String roleName) {
	RoleName = roleName;
}
public String getBakContent() {
	return BakContent;
}
public void setBakContent(String bakContent) {
	BakContent = bakContent;
}
@Override
public String toString() {
	return "Askers [askerId=" + askerId + ", askerName=" + askerName + ", checkState=" + checkState + ", checkInTime="
			+ checkInTime + ", changeState=" + changeState + ", weight=" + weight + ", RoleName=" + RoleName
			+ ", BakContent=" + BakContent + "]";
}


}
