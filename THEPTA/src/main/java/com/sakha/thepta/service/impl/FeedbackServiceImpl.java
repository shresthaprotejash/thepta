package com.sakha.thepta.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.FeedbackDao;
import com.sakha.thepta.dto.FeedbackDto;
import com.sakha.thepta.model.FeedbackModel;
import com.sakha.thepta.service.FeedbackService;

@Service
public class FeedbackServiceImpl implements FeedbackService{
	
	@Autowired
	private FeedbackDao feedbackDao;

	@Override
	@Transactional
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public int postFeedbackBySubjectIdAndStudentId(int teacherId, int subjectId, int studentId, String feedText) {
		FeedbackModel studentFeedback = new FeedbackModel();
		studentFeedback.setTeacherId(teacherId);
		studentFeedback.setSubjectId(subjectId);
		studentFeedback.setStudentId(studentId);
		studentFeedback.setFeedbackText(feedText);
		int success = feedbackDao.saveFeedback(studentFeedback);
		return success;
	}

	@Override
	public List<FeedbackDto> getSubjectListByStudentId(Object studentId) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
