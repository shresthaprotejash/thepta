package com.sakha.thepta.service;

import com.sakha.thepta.model.TestModel;

public interface TestService {
	public TestModel giveTestBysubjectId(int SubjectId); 

    public TestModel viewTestByteacherIdandsubjectId(int teacherId, int SubjectId);
	}
