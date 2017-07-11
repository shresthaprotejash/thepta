package com.sakha.thepta.dao;

import com.sakha.thepta.model.FeedbackModel;

public interface FeedbackDao {
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId,int SubjectId); 

    public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId);

	public int saveFeedback(FeedbackModel studentFeedback);
	}
