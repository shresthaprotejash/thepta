package com.sakha.thepta.dao;

import java.util.List;

import com.sakha.thepta.model.TeacherSubjectModel;

public interface Teacher_subjectDao {

	public TeacherSubjectModel getSubjectByTeacherIdandClassId(String teacherId,String classesId);
	public List<TeacherSubjectModel> getTeacherSubjectListByTeacherId(int teacherId);
	public List<TeacherSubjectModel> getTeacherSubjectListByTeacherIdAndClassId(int teacherId, int classId);
	public List<TeacherSubjectModel> getSubjectListByTeacherIdClassIdSectionId(int teacherId, int classId, int sectionId);

}