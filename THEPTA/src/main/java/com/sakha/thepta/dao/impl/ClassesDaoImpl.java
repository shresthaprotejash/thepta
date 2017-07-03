package com.sakha.thepta.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.ClassesDao;
import com.sakha.thepta.model.ClassesModel;


@Repository
public class ClassesDaoImpl implements ClassesDao{
	
	 @Resource
	    private SessionFactory sessionFactory;

	@Override
	public String getClassesByClassId(int classId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ClassesModel.class);
		criteria.add(Restrictions.eq("classId", classId));
		if(criteria.list().size() > 0){
			ClassesModel classNames= new ClassesModel();
			classNames=(ClassesModel) criteria.uniqueResult();
			return classNames.getClassesName();
		}else{
			return null;
		}
	}


}
