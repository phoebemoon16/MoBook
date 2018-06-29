package com.kzw.comm.vo;

public class Msg {

	private boolean success = true;
	private String text;
     //构造器：空的构造函数
	public Msg() {
	}
    //带参数的构造函数 构造器注入
	//和类名一样的函数就是构造函数
	public Msg(boolean success, String text) {
		this.success = success;
		this.text = text;
	}

	public Msg(boolean success) {
		this.success = success;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
