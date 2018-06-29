package com.kzw.gym.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.kzw.system.entity.Department;
import com.kzw.system.entity.Dictionary;

@Entity
@Table(name="share_read")
public class ShareReading {

	@Id
	@GeneratedValue
	private Integer id;
	
	//书名
	private String bookName;
//	//类别
//	@ManyToOne
//	@JoinColumn(name="dict_category")
//	private Dictionary category;
	
	private String bookType;
	//详细说明
	private String deTail;
	//借书人
	private String perName;
	//库存量
	private int stock;
	//图片
	private String imgUrl;
	//结束日期
	private Date beginTime;
	//还书日期
	private Date endTime;
	//联系人方式
	private long telNum;
	
	@ManyToOne
	@JoinColumn(name="dept_id")
	private Department dept;
	
	
//	public Dictionary getCategory() {
//		return category;
//	}
//	public void setCategory(Dictionary category) {
//		this.category = category;
//	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getDeTail() {
		return deTail;
	}
	public void setDeTail(String deTail) {
		this.deTail = deTail;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String img) {
		this.imgUrl = img;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getBookType() {
		return bookType;
	}
	public void setBookType(String bookType) {
		this.bookType = bookType;
	}
	public String getPerName() {
		return perName;
	}
	public void setPerName(String perName) {
		this.perName = perName;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public long getTelNum() {
		return telNum;
	}
	public void setTelNum(long telNum) {
		this.telNum = telNum;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	
	
	
}
