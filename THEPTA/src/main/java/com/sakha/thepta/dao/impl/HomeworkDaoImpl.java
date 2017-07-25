package com.sakha.thepta.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
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
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(HomeworkModel.class);
		criteria.add(Restrictions.eq("classId", newHomeworkModel.getClassId())).add(Restrictions.eq("sectionId", newHomeworkModel.getSectionId())).add(Restrictions.eq("teacherId", newHomeworkModel.getTeacherId()));
		Session session  = sessionFactory.getCurrentSession();
		int result;
		if (criteria.list().size()==0) {		
		result = (Integer)session.save(newHomeworkModel);
		}
		else {
			
			String hql = "update HomeworkModel set homeworkText = ?, homeworkFileContent = ?, date = ? where classId = ? AND sectionId = ? AND teacherId = ?";
			Query query = session.createQuery(hql);
			query.setParameter(0, newHomeworkModel.getHomeworkText());
			query.setParameter(1, newHomeworkModel.getHomeworkFileContent());
			query.setParameter(2, newHomeworkModel.getDate());
			query.setParameter(3, newHomeworkModel.getClassId());
			query.setParameter(4, newHomeworkModel.getSectionId());
			query.setParameter(5, newHomeworkModel.getTeacherId());
			result = (Integer)query.executeUpdate();			
		}
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
