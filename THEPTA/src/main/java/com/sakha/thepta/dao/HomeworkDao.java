package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.HomeworkModel;
import com.sakha.thepta.model.StudentModel;

public interface HomeworkDao {
	public int giveHomeworkBysubjectId(HomeworkModel newHomeworkModel); 

    public HomeworkModel viewHomeworkByteacherIdandsubjectId(int teacherId, int SubjectId);

	public List<HomeworkModel> getHomeworkListByClassIdAndSecionId(int classId, int sectionId);
	}
