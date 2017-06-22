package com.sakha.thepta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public ModelAndView showMessage() {
 
		ModelAndView mv = new ModelAndView("login");
		return mv;
		
		
	}

	@RequestMapping(value = "/validatelogin", method = RequestMethod.POST)
	public ModelAndView validateLoginCredential(HttpServletRequest request, HttpServletResponse response) {
 
		ModelAndView loginView = new ModelAndView("login");
		ModelAndView dashboardView = new ModelAndView("dashboard");
		String mailIdOrPhoneNo = request.getParameter("username");
		String password = request.getParameter("password");
		UserModel currentUser = userService.validateUser(mailIdOrPhoneNo, password);
		if(currentUser != null && currentUser.getUserId() > 0){			
			HttpSession session = request.getSession();
			session.setAttribute("fName", currentUser.getfName());
			session.setAttribute("lName", currentUser.getlName());
			session.setAttribute("userMailId", currentUser.getMailId());			
			return dashboardView;
		}else{	//invalid username or password
			loginView.addObject("message", "Invalid Username or Password");
			return loginView;
		}
	}
		
	@RequestMapping("/dashboard")
	public ModelAndView fetchdashboard() {
 
		ModelAndView mv = new ModelAndView("dashboard");
		return mv;
	}
	
	@RequestMapping("/userprofile")
	public ModelAndView fetchuser() {
 
		ModelAndView mv = new ModelAndView("user");
		return mv;
	}
}
