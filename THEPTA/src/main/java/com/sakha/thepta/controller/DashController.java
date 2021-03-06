package com.sakha.thepta.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.sakha.thepta.dto.FeedbackDto;
import com.sakha.thepta.service.FeedbackService;
import com.sakha.thepta.dto.AttendanceDto;
import com.sakha.thepta.dto.HomeworkDto;
import com.sakha.thepta.dto.SubjectAndMarksDto;
import com.sakha.thepta.dto.TeacherSubjectDto;
import com.sakha.thepta.dto.TestDetailsDto;
import com.sakha.thepta.service.AttendanceService;
import com.sakha.thepta.service.HomeworkService;
import com.sakha.thepta.service.Teacher_subjectService;
import com.sakha.thepta.service.TestTypeService;
import com.sakha.thepta.service.Test_DetailService;
import com.sakha.thepta.service.Test_marksService;

@Controller
@RequestMapping("/dashboard")
public class DashController {

	@Autowired
	private Teacher_subjectService teacherSubjectService;

	@Autowired
	private FeedbackService feedbackService;
	
	@Autowired
	private AttendanceService attendanceService;
	
	@Autowired
	private TestTypeService testTypeService;

	@Autowired
	private HomeworkService homeworkService;

	@Autowired
	private Test_marksService testMarksService;

	@Autowired
	private Test_DetailService testDetailService;

	@RequestMapping("/uploadattendance")
	public ModelAndView uploadAttendance(HttpSession session) {

		ModelAndView mv = new ModelAndView("uploadattendance");
		int teacherId = Integer.parseInt(session.getAttribute("userId").toString());
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList", teacherSubjectList);
		return mv;
	}

	@RequestMapping(value = "/getsectionlistbyteacheridandclassid/{teacherid}/{classid}", method = RequestMethod.GET)
	@ResponseBody
	public String getSectionListByTeacheridAndClassid(@PathVariable("teacherid") int teacherId,
			@PathVariable("classid") int classId) {

		JSONObject mainObj = new JSONObject();
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService
				.getSectionListByTeacheridAndClassid(teacherId, classId);
		mainObj.put("teacherSubjectSectionList", teacherSubjectList);
		return mainObj.toString();
	}

	@RequestMapping(value = "/getsectionlistbyteacheridandclassid/{teacherid}/{classid}/{sectionid}/{subjectid}", method = RequestMethod.GET)
	@ResponseBody
	public String getStudentListByClassidAndSectionidAndSubjectid(@PathVariable("classid") int classId,
			@PathVariable("sectionid") int sectionId, @PathVariable("subjectid") int subjectId) {
		JSONObject mainObj = new JSONObject();
		List<AttendanceDto> studentList = attendanceService.getStudentbyClassIdAndSectionIdAndSubjectId(classId,
				sectionId, subjectId);
		mainObj.put("studentList", studentList);
		return mainObj.toString();
	}

	@RequestMapping(value = "/{subjectid}/submitAttendance", method = RequestMethod.POST)
	@ResponseBody

	public int putStudentAttendanceByClassidAndSectionidAndSubjectid(HttpServletRequest request,
			HttpServletResponse response, HttpSession httpsession, @PathVariable("subjectid") int subjectId) {

		JSONObject mainObj = new JSONObject();
		String present_student = request.getParameter("present_student");
		String absent_student = request.getParameter("absent_student");
		System.out.println("present_student > " + present_student);
		System.out.println("absent_student > " + absent_student);
		int result = attendanceService.putattendance(present_student, absent_student, subjectId);
		return result;
	}

	@RequestMapping("/viewattendance")
	public ModelAndView fetchAttendance(HttpSession session) {

		ModelAndView mv = new ModelAndView("viewattendance");
		int studentId = Integer.parseInt(session.getAttribute("userId").toString());
		List<AttendanceDto> studentAttendanceList = attendanceService.getAttendanceDetailsByStudentId(studentId);
		mv.addObject("studentAttendanceList", studentAttendanceList);
		return mv;
	}

	@RequestMapping("/uploadmarks")
	public ModelAndView uploadMarks(HttpSession session) {

		ModelAndView mv = new ModelAndView("uploadmarks");
		int teacherId = Integer.parseInt(session.getAttribute("userId").toString());
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList", teacherSubjectList);
		mv.addObject("testTypeList", testTypeService.getListOfTestTypes());
		return mv;
	}

	@RequestMapping("/viewmarks")
	public ModelAndView fetchMarks(HttpSession session) {

		ModelAndView mv = new ModelAndView("viewmarks");
		int studentId = Integer.parseInt(session.getAttribute("userId").toString());
		List<AttendanceDto> studentAttendanceList = attendanceService.getAttendanceDetailsByStudentId(studentId);
		mv.addObject("studentAttendanceList", studentAttendanceList);
		mv.addObject("testTypeList", testTypeService.getListOfTestTypes());
		return mv;
	}

	@RequestMapping(value = "/getmarksAndSubjectName/{userId}/{testType}", method = RequestMethod.GET)
	@ResponseBody
	public String getmarksAndSubjectName(@PathVariable("userId") int studentId,
			@PathVariable("testType") int testType, HttpSession session) {

		JSONObject mainObj = new JSONObject();
		List<SubjectAndMarksDto> obtainedMarksList = testMarksService.getobtainedMarksList(studentId, testType);

		mainObj.put("obtainedMarksList", obtainedMarksList);
		return mainObj.toString();
	}

	@RequestMapping("/viewhomework")
	public ModelAndView fetchHomework(HttpSession session) {
		ModelAndView mv = new ModelAndView("viewhomework");
		int studentId = Integer.parseInt(session.getAttribute("userId").toString());
		List<HomeworkDto> homeworklist = homeworkService.getHomeworkListBystudentId(studentId);
		mv.addObject("homeworklist", homeworklist);
		return mv;
	}

	@RequestMapping("/viewhwandtest")
	public ModelAndView fetchviewhwandtest() {

		ModelAndView mv = new ModelAndView("viewhwandtest");
		return mv;
	}
	
	@RequestMapping("/uploadtest")
	public ModelAndView uploadtest(HttpSession session) {
        ModelAndView mv = new ModelAndView("uploadtest");
        int teacherId = Integer.parseInt(session.getAttribute("userId").toString());
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList", teacherSubjectList);
		mv.addObject("testTypeList", testTypeService.getListOfTestTypes());
		return mv;
	}

	@RequestMapping("/viewtest")
	public ModelAndView fetchviewtest(HttpSession session) {

		ModelAndView mv = new ModelAndView("viewtest");
		int studentId = Integer.parseInt(session.getAttribute("userId").toString());
		List<AttendanceDto> studentAttendanceList = attendanceService.getAttendanceDetailsByStudentId(studentId);
		mv.addObject("studentAttendanceList", studentAttendanceList);
		mv.addObject("testTypeList", testTypeService.getListOfTestTypes());

		return mv;
	}

	@RequestMapping(value = "/getTestDetails/{userId}/{testType}", method = RequestMethod.GET)
	@ResponseBody
	public String getTestDetails(@PathVariable("userId") int studentId, @PathVariable("testType") int testType) {

		JSONObject mainObj = new JSONObject();
		List<TestDetailsDto> testDetailList = testDetailService.getTestDetailList(studentId, testType);

		mainObj.put("testDetailList", testDetailList);
		return mainObj.toString();
	}

	

	@RequestMapping("/english")
	public ModelAndView fetchenglish() {

		ModelAndView mv = new ModelAndView("english");
		return mv;
	}

	@RequestMapping("/math")
	public ModelAndView fetchmath() {

		ModelAndView mv = new ModelAndView("math");
		return mv;
	}

	@RequestMapping("/computer")
	public ModelAndView fetchcomputer() {

		ModelAndView mv = new ModelAndView("computer");
		return mv;
	}

	@RequestMapping("/term")
	public ModelAndView fetchterm() {

		ModelAndView mv = new ModelAndView("term");
		return mv;
	}

	@RequestMapping("/classtest")
	public ModelAndView fetchclasstest() {

		ModelAndView mv = new ModelAndView("classtest");
		return mv;
	}

	@RequestMapping("/assignments")
	public ModelAndView fetchassignments() {

		ModelAndView mv = new ModelAndView("assignments");
		return mv;
	}
	
	@RequestMapping(value="/feedback",method=RequestMethod.GET)
	public ModelAndView feedback(HttpSession session) { 
		ModelAndView mv = new ModelAndView("feedback");
		int teacherId = (int) session.getAttribute("userId");
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList",teacherSubjectList);
		return mv;
	}
	
	@RequestMapping(value = "/submitfeedback", method = RequestMethod.POST)
	public String submitfeedback(HttpServletRequest request, HttpServletResponse response,HttpSession session){
		int teacherId = (int) session.getAttribute("userId");
		int subjectId = Integer.parseInt(request.getParameter("Subject"));
		int studentId = Integer.parseInt(request.getParameter("Student"));
		String feedText = request.getParameter("feedback");
		int success = feedbackService.saveFeedbackBySubjectIdAndStudentId(teacherId,subjectId,studentId,feedText);
		if(success>0) {
			session.setAttribute("status", "ok");
		}
		else {
			session.setAttribute("status", "Error Occured!!! Please Try again.");
		}
		return "redirect:/dashboard/feedback";
	}

	@RequestMapping("/viewfeedback")
	public ModelAndView fetchFeedback(HttpSession session) {
		ModelAndView mv = new ModelAndView("viewfeedback");
		int studentId = (int) session.getAttribute("userId");
		List<FeedbackDto> studentFeedbackList =feedbackService.getFeedbackDetailsByStudentId(studentId);
		mv.addObject("studentFeedbackList", studentFeedbackList);
		return mv;
	}

	@RequestMapping("/viewcircular")
	public ModelAndView viewcircular() {

		ModelAndView mv = new ModelAndView("viewcircular");
		return mv;
	}

	@RequestMapping("/uploadcircular")
	public ModelAndView uploadcircular() {

		ModelAndView mv = new ModelAndView("uploadcircular");
		return mv;
	}

	@RequestMapping("/uploadhomework")
	public ModelAndView uploadHomework(HttpSession session) {
		ModelAndView mv = new ModelAndView("uploadhomework");
		int teacherId = Integer.parseInt(session.getAttribute("userId").toString());
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService.getTeacherSubjectListByTeacherId(teacherId);
		mv.addObject("teacherSubjectList", teacherSubjectList);
		session.setAttribute("hwStatus", "");
		return mv;
	}
	
	@RequestMapping(value = "/submithomework", method = RequestMethod.POST)
	public ModelAndView submitHomework(MultipartHttpServletRequest req, HttpServletResponse res, HttpSession session) {
 
		ModelAndView mv = new ModelAndView("uploadhomework");
		int homeWorkId = homeworkService.giveHomeworkBysubjectId(req);
		if(homeWorkId > 0){
			session.setAttribute("hwStatus", "ok");
		}else{
			session.setAttribute("hwstatus", "Error Occured!!! Please try again.");
		}
		return mv;
	}
	
	@RequestMapping("/uploadtestandhomework")
	public ModelAndView uploadtestandhomework() {

		ModelAndView mv = new ModelAndView("uploadtestandhomework");
		return mv;
	}

	
	@RequestMapping(value = "/submitmarks", method = RequestMethod.POST)
	@ResponseBody
	public int submitMarks(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
 
		return testMarksService.submitMarks(request, response);
	}

	@RequestMapping(value = "/getsubjectlistbyteacheridclassidandsectionid/{teacherid}/{classid}/{sectionId}", method = RequestMethod.GET)
	@ResponseBody
	public String getSubjectList(@PathVariable("teacherid") int teacherId, @PathVariable("classid") int classId,
			@PathVariable("sectionId") int sectionId) {

		JSONObject mainObj = new JSONObject();
		List<TeacherSubjectDto> teacherSubjectList = teacherSubjectService
				.getUniqueSubjectListByTeacherid(teacherId, classId, sectionId);
		mainObj.put("teacherSubjectSectionList", teacherSubjectList);
		return mainObj.toString();
	}

	@RequestMapping(value = "/submittest", method = RequestMethod.POST)
	@ResponseBody
	public int submitTest(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return testDetailService.submitTest(request, response);
	}
	
}
