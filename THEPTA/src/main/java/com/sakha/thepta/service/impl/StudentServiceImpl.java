package com.sakha.thepta.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.StudentDao;
import com.sakha.thepta.dao.UserDao;
import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.model.StudentModel;
import com.sakha.thepta.model.TeacherSubjectModel;
import com.sakha.thepta.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private UserDao userDao;

	@Override
	@Transactional
	public List<AttendanceDto> getStudentbyClassIdAndSectionIdAndSubjectId(int classId, int sectionId, int subjectId) {
		return null;
		/*AttendanceDto newAttendanceDto = null;
		List<StudentModel> studentList= studentDao.getStudentIdByClassIdAndSectionId(classId,sectionId);
		List<AttendanceDto> studentAttendanceList =new ArrayList<AttendanceDto>();
		for(StudentModel studentsModel : studentList){
			newAttendanceDto = new AttendanceDto();
			newAttendanceDto.setStudentId(studentsModel.getStudentId());
			newAttendanceDto.setClassId(classId);
			newAttendanceDto.setClassId(sectionId);
			newAttendanceDto.setClassId(subjectId);
			newAttendanceDto.setStudentName(userDao.getStudentNameByStudentId(studentsModel.getStudentId()));
			
			studentAttendanceList.add(newAttendanceDto);
	}
		return studentAttendanceList;
*/
	}
}

