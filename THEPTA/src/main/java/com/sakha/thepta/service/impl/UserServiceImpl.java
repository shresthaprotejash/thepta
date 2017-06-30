package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;
import com.sakha.thepta.util.Util;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private Util util;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	@Transactional
	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo) {
		return userDao.getUserByMailIdOrPhoneNo(mailIdOrPhoneNo);
	}

	@Override
	@Transactional
	public UserModel validateUser(String mailIdOrPhoneNo, String password) {
		
		if(mailIdOrPhoneNo != null && mailIdOrPhoneNo.length() > 0 && 
				password != null && password.length() > 0){
			
			String md5ConvertedPassword = util.convertToMD5(password);
			UserModel currentUser = userDao.validateUser(mailIdOrPhoneNo, md5ConvertedPassword);
			return currentUser;
		}else{	//invalid input
			return new UserModel();
		}
	}

}
