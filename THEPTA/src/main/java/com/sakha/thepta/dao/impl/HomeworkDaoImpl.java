package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.sakha.thepta.dao.HomeworkDao;
import com.sakha.thepta.model.HomeworkModel;
import com.sakha.thepta.model.UserModel;


@Repository
public class HomeworkDaoImpl implements HomeworkDao {

	@Resource
    private SessionFactory sessionFactory;
	
	@Override
	public int giveHomeworkBysubjectId(HomeworkModel newHomeworkModel) {
		Session session  = sessionFactory.getCurrentSession();
		int result = (Integer)session.save(newHomeworkModel);
		return result;
	}

	@Override
	public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HomeworkModel> getHomeworkListByClassIdAndSecionId(int classId, int sectionId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(HomeworkModel.class);
		criteria.add(Restrictions.eq("classId", classId)).add(Restrictions.eq("sectionId", sectionId));
		return criteria.list();
	}

}
