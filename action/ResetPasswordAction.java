package com.internousdev.jupiter.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordAction extends ActionSupport implements SessionAware {

	private int backFlag;
	private Map<String, Object> session;
	
	public String execute() {
		//session timeout check
		if(session.isEmpty()) {
			return "sessionTimeout";
		}
		//backFlagが1でないときsession.remove(未入力の状態に)
		if (backFlag != 1) {
			session.remove("userIdForResetPassword");
		}
		
		return SUCCESS;
	}
    
	public int getBackFlag() {
		return backFlag;
	}
 
	public void setBackFlag(int backFlag) {
		this.backFlag = backFlag;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
}
