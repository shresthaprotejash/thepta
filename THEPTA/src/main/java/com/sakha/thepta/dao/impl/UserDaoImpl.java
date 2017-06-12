package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.model.UserModel;

@Repository
public class UserDaoImpl implements UserDao{

    @Resource
    private SessionFactory sessionFactory;
    
	@Override
	public UserModel getUserByMailIdOrPhoneNo(String mailIdOrPhoneNo) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserModel.class);
		if(mailIdOrPhoneNo.indexOf('@') > 0){
	        criteria.add(Restrictions.eq("mailId", mailIdOrPhoneNo));
		}else{
	        criteria.add(Restrictions.eq("phoneNo", Integer.parseInt(mailIdOrPhoneNo)));
		}
        return (UserModel) criteria.uniqueResult();
	}

}
