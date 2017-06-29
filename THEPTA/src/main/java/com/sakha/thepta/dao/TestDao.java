package com.sakha.thepta.dao;

import com.sakha.thepta.model.TestModel;

public interface TestDao {
	public TestModel giveTestBysubjectId(int SubjectId); 

    public TestModel viewTestByteacherIdandsubjectId(int teacherId, int SubjectId);
	}
