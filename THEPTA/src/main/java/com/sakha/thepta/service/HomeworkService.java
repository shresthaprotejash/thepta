package com.sakha.thepta.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sakha.thepta.model.HomeworkModel;

public interface HomeworkService {
	public int giveHomeworkBysubjectId(MultipartHttpServletRequest reqeust); 

    public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId);
	}