package com.sakha.thepta.dao;

import com.sakha.thepta.model.HomeworkModel;

public interface HomeworkDao {
	public int giveHomeworkBysubjectId(HomeworkModel newHomeworkModel); 

    public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId);
	}
