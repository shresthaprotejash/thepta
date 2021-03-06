package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.FeedbackDto;
import com.sakha.thepta.model.FeedbackModel;

public interface FeedbackService {
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId,int SubjectId); 

    public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId);

	public List<FeedbackDto> getFeedbackDetailsByStudentId(int studentId);

	public int saveFeedbackBySubjectIdAndStudentId(int teacherId, int subjectId, int studentId, String feedText);
	}

