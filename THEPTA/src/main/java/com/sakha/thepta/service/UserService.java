package com.sakha.thepta.service;

import com.sakha.thepta.model.UserModel;

public interface UserService {

	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo);
	
	public UserModel validateUser(String mailIdOrPhoneNo, String password); 
}
