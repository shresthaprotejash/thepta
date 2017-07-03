package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.SectionDao;
import com.sakha.thepta.model.SectionModel;

@Repository
public class SectionDaoImpl implements SectionDao{
	
	@Resource
    private SessionFactory sessionFactory;

	@Override
	public String getSectionBysectionId(int sectionId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(SectionModel.class);
		criteria.add(Restrictions.eq("sectionIds", sectionId));
		if(criteria.list().size() > 0){
			SectionModel sectionNames= new SectionModel();
			sectionNames=(SectionModel) criteria.uniqueResult();
			return sectionNames.getSectionName();
		}else{
			return null;
		}
	}

}
