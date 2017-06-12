package com.sakha.thepta.dao;

import com.sakha.thepta.model.UserModel;

public interface UserDao {

	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo);
}
