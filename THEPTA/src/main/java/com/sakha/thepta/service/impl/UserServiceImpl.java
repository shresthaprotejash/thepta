package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	@Transactional
	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo) {
		return userDao.getUserByMailIdOrPhoneNo(mailIdOrPhoneNo);
	}

}