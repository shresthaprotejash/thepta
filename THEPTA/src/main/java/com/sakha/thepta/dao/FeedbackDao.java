package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.FeedbackModel;

public interface FeedbackDao {
	public FeedbackModel giveFeedbackByStudentIdandSubjectId(int StudentId,int SubjectId); 

    public FeedbackModel getFeedbackByStudentIdandSubjectId(int StudentId, int SubjectId);

	public int saveFeedback(FeedbackModel studentFeedback);

	public List<FeedbackModel> getFeedbackDetailsByStudentId(int studentId);

	public String getSubjectByStudentId(int studentId);
	}
