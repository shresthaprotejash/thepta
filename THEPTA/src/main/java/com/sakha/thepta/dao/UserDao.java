package com.sakha.thepta.dao;

import com.sakha.thepta.model.UserModel;

public interface UserDao {

	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo);
	
	public UserModel validateUser(String mailIdOrPhoneNo, String password);

	public UserModel getUserByUserId(int userId);

	public UserModel getStudentNameByStudentId(int studentId);

	public Object getSubjectNameByStudentId(int studentId);	
}