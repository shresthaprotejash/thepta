package com.sakha.thepta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sakha.thepta.model.UserModel;
import com.sakha.thepta.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public ModelAndView showIndexPage(ModelMap map) {
 
		ModelAndView mv = new ModelAndView("index");
		return mv;		
	}
	
	@RequestMapping("/login")
	public ModelAndView showMessage(ModelMap map) {
 
		ModelAndView mv = new ModelAndView("login");
		return mv;		
	}

	@RequestMapping("/signup")
	public ModelAndView getSignUpPage(HttpSession session) {

		ModelAndView mv = new ModelAndView("signup");
		return mv;
	}	

	@RequestMapping(value = "/dosignup", method = RequestMethod.POST)
	public String doSignUp(ModelMap model, HttpServletRequest request, HttpServletResponse response,HttpSession session) {
 
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		System.out.println("firstName : " + firstName);
		System.out.println("lastName : " + lastName);
		return "redirect:/signup";
	}
	
	@RequestMapping(value = "/validatelogin", method = RequestMethod.POST)
	public String validateLoginCredential(ModelMap model, HttpServletRequest request, HttpServletResponse response,HttpSession session) {
 
		String mailIdOrPhoneNo = request.getParameter("username");
		String password = request.getParameter("password");
		UserModel currentUser = userService.validateUser(mailIdOrPhoneNo, password);

		if(currentUser != null && currentUser.getUserId() > 0){			
			session = request.getSession();
			session.setAttribute("fName", currentUser.getfName());
			session.setAttribute("lName", currentUser.getlName());
			session.setAttribute("userMailId", currentUser.getMailId());
			session.setAttribute("userId", currentUser.getUserId());	
			session.setAttribute("userType", currentUser.getIsStudent());
			return "redirect:/dashboard";
		}else{	//invalid username or password
			session.setAttribute("message", "invalid username or password");
			return "redirect:/login";

		}
	}
		
	@RequestMapping("/dashboard")
	public ModelAndView fetchdashboard(ModelMap map) {
 
		ModelAndView mv = new ModelAndView("dashboard");
		return mv;
	}
	
	@RequestMapping("/userprofile")
	public ModelAndView fetchuser() {
 
		ModelAndView mv = new ModelAndView("user");
		return mv;
	}
	
	@RequestMapping("/logout")
	public String logout( HttpSession session) {
			session.invalidate();	        
	        return "redirect:/login";
	}
}
