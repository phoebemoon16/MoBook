package com.kzw.system.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sys_inst")
public class Institute {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	// 学院名称
	private String iname;
	// 学院描述
	private String depict;

	// 排序
	private Integer sn;
	// 级别
	private Integer level;
	// 是否为叶子结点
	private Boolean leaf;

	// 上级部门
	@ManyToOne
	@JoinColumn(name = "parent_id")
	private Institute parent;

	public String getParentId() {
		if (parent == null) {
			return null;
		}
		return parent.getId() + "";
	}
	
	// 默认展开
	public Boolean getExpanded() {
		return true;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public Institute getParent() {
		return parent;
	}

	public void setParent(Institute parent) {
		this.parent = parent;
	}

	public Boolean getLeaf() {
		return leaf;
	}

	public void setLeaf(Boolean leaf) {
		this.leaf = leaf;
	}

	public Integer getSn() {
		return sn;
	}

	public void setSn(Integer sn) {
		this.sn = sn;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}


	public String getIname() {
		return iname;
	}

	public void setIname(String iname) {
		this.iname = iname;
	}

	public String getDepict() {
		return depict;
	}

	public void setDepict(String depict) {
		this.depict = depict;
	}

}
