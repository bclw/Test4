package com.ysd.entity;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Fenye<T> {
	private Integer page;// 褰撳墠椤�
	private Integer pageSize;
	private Integer total;// 鎬绘潯鏁�
	private List<T> rows;
	// 姓名关键字、电话、咨询师、是否缴费、是否有效、是否回访、QQ、创建时间/上门时间/首次回访时间/缴费时间/进班时间 
	private String sName;
	private String sPhone;
	private Integer sZiXunId;
	private String sIsPay;
	private Integer sIsValid;
	private Integer sIsReturnVist;
	private Integer sQQ;
	private String sCreateTime;
	
	private String nStudentName;
	private String nFollowType;
	private String nFollowTime;
	private String nNextFollowTime;
	private String nContent;
	
	
	
	
	public String getnStudentName() {
		return nStudentName;
	}
	public void setnStudentName(String nStudentName) {
		this.nStudentName = nStudentName;
	}
	public String getnFollowType() {
		return nFollowType;
	}
	public void setnFollowType(String nFollowType) {
		this.nFollowType = nFollowType;
	}
	public String getnFollowTime() {
		return nFollowTime;
	}
	public void setnFollowTime(String nFollowTime) {
		this.nFollowTime = nFollowTime;
	}
	public String getnNextFollowTime() {
		return nNextFollowTime;
	}
	public void setnNextFollowTime(String nNextFollowTime) {
		this.nNextFollowTime = nNextFollowTime;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsPhone() {
		return sPhone;
	}
	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}
	public Integer getsZiXunId() {
		return sZiXunId;
	}
	public void setsZiXunId(Integer sZiXunId) {
		this.sZiXunId = sZiXunId;
	}
	public String getsIsPay() {
		return sIsPay;
	}
	public void setsIsPay(String sIsPay) {
		this.sIsPay = sIsPay;
	}
	public Integer getsIsValid() {
		return sIsValid;
	}
	public void setsIsValid(Integer sIsValid) {
		this.sIsValid = sIsValid;
	}
	public Integer getsIsReturnVist() {
		return sIsReturnVist;
	}
	public void setsIsReturnVist(Integer sIsReturnVist) {
		this.sIsReturnVist = sIsReturnVist;
	}
	public Integer getsQQ() {
		return sQQ;
	}
	public void setsQQ(Integer sQQ) {
		this.sQQ = sQQ;
	}
	public String getsCreateTime() {
		return sCreateTime;
	}
	public void setsCreateTime(String sCreateTime) {
		this.sCreateTime = sCreateTime;
	}
	private Student student;
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	@Override
	public String toString() {
		return "Fenye [page=" + page + ", pageSize=" + pageSize + ", total="
				+ total + ", rows=" + rows + ", sName=" + sName + ", sPhone="
				+ sPhone + ", sZiXunId=" + sZiXunId + ", sIsPay=" + sIsPay
				+ ", sIsValid=" + sIsValid + ", sIsReturnVist=" + sIsReturnVist
				+ ", sQQ=" + sQQ + ", sCreateTime=" + sCreateTime
				+ ", nStudentName=" + nStudentName + ", nFollowType="
				+ nFollowType + ", nFollowTime=" + nFollowTime
				+ ", nNextFollowTime=" + nNextFollowTime + ", nContent="
				+ nContent + ", student=" + student + "]";
	}
	
}
