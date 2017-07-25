package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.FeedbackDao;
import com.sakha.thepta.dao.SubjectDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.dto.FeedbackDto;
import com.sakha.thepta.model.AttendanceModel;
import com.sakha.thepta.model.FeedbackModel;
import com.sakha.thepta.service.FeedbackService;
import com.sakha.thepta.util.Util;

@Service
public class FeedbackServiceImpl implements FeedbackService{
	
	@Autowired
	private FeedbackDao feedbackDao;
	
	@Autowired
	private Util util;

	@Autowired
	private  UserDao userDao;
	
	@Autowired
	private  SubjectDao subjectDao;
	

	@Override
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
	public List<FeedbackDto> getFeedbackDetailsByStudentId(int studentId) {
		FeedbackDto newFeedbackDto=null;
		List<FeedbackModel> studentFeedbackDetailList= feedbackDao.getFeedbackDetailsByStudentId(studentId);
		List<FeedbackDto> studentFeedbackList =new ArrayList<FeedbackDto>();
		for(FeedbackModel feedbackModel : studentFeedbackDetailList){
			newFeedbackDto = new FeedbackDto();
			newFeedbackDto.setStudentId(feedbackModel.getStudentId());
			newFeedbackDto.setSubjectId(feedbackModel.getSubjectId());
			newFeedbackDto.setSubjectName(subjectDao.getSubjectBySubjectId(feedbackModel.getSubjectId()));
			newFeedbackDto.setFeedbackText(feedbackModel.getFeedbackText());
			studentFeedbackList.add(newFeedbackDto);	
		}
		return studentFeedbackList;
	}
	

	@Override
	@Transactional
	public int saveFeedbackBySubjectIdAndStudentId(int teacherId, int subjectId, int studentId, String feedText) {
		FeedbackModel studentFeedback = new FeedbackModel();
		studentFeedback.setTeacherId(teacherId);
		studentFeedback.setSubjectId(subjectId);
		studentFeedback.setStudentId(studentId);
		studentFeedback.setFeedbackText(feedText);
		int success = feedbackDao.saveFeedback(studentFeedback);
		return success;
	}

	
}
