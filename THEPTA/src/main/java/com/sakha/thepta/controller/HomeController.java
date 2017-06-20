package com.sakha.thepta.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	@RequestMapping("/login")
	public ModelAndView showMessage(ModelMap map) {
 
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@RequestMapping(value = "/validatelogin", method = RequestMethod.POST)
	public String validateLoginCredential(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
 
		String mailIdOrPhoneNo = request.getParameter("username");
		String password = request.getParameter("password");
		UserModel currentUser = userService.validateUser(mailIdOrPhoneNo, password);
		if(currentUser != null && currentUser.getUserId() > 0){
			model.addAttribute("userName", currentUser.getlName());
			return "forward:/dashboard";
		}else{	//invalid username or password
			model.addAttribute("message", "invalid username or password");
			return "forward:/login";
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
}
