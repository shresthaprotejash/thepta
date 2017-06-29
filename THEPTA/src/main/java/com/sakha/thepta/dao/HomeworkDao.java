package com.sakha.thepta.dao;

import com.sakha.thepta.model.HomeworkModel;

public interface HomeworkDao {
	public HomeworkModel giveHomeworkBysubjectId(int SubjectId); 

    public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId);
	}
