package com.sakha.thepta.service;

import com.sakha.thepta.model.FeedbackModel;

public interface FeedbackService {
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId,int SubjectId); 

    public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId);
	}

