package com.sakha.thepta.service;

import java.util.List;

import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.model.TeacherSubjectModel;

public interface Teacher_subjectService {

	public TeacherSubjectModel getSubjectByTeacherIdandClassId(String teacherId,String classesId);
	public List<TeacherSubjectDto> getTeacherSubjectListByTeacherId(int teacherId);
	public List<TeacherSubjectDto> getSectionListByTeacheridAndClassid(int teacherId, int classId);
	public List<TeacherSubjectDto> getUniqueSubjectListByTeacherid(int teacherId, int classId, int sectionId);
	

}
