package com.sakha.thepta.service;

import com.sakha.thepta.model.HomeworkModel;

public interface HomeworkService {
	public HomeworkModel giveHomeworkBysubjectId(int SubjectId); 

    public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId);
	}