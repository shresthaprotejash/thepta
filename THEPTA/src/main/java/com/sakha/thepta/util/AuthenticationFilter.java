package com.sakha.thepta.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.web.filter.OncePerRequestFilter;

@Scope("singleton")
@WebFilter(filterName = "theParentTeacherAuthFilter", urlPatterns = "*")
public class AuthenticationFilter extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = null;
		HttpServletRequest httpServletRequest = ((HttpServletRequest) request);
		HttpServletResponse httpServletResponse = ((HttpServletResponse) response);

		httpServletResponse.addHeader("x-frame-options","DENY");
		httpServletResponse.addHeader("x-frame-options","SAMEORIGIN");
		
		HttpSession session = ((HttpServletRequest) (request)).getSession(false);
		String ajaxHeader = httpServletRequest.getHeader("X-Requested-With");
		String requestUrl = httpServletRequest.getRequestURL().toString();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		if(requestUrl.contains("/login") || requestUrl.contains("/resources")
				 || requestUrl.contains("/validatelogin")){
			filterChain.doFilter(request, response);
		}else if(session != null && session.getAttribute("userId") != null 
				&& Integer.parseInt(session.getAttribute("userId").toString()) > 0) {
			//System.out.println("userId > "+Integer.parseInt(session.getAttribute("userId").toString()));
			try {
				filterChain.doFilter(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				dispatcher = request.getRequestDispatcher("/login");
				dispatcher.forward(request, response);
			}
		} else if(session == null || session.getAttribute("userId") == null) {

			if ("XMLHttpRequest".equals(ajaxHeader)) {
				HttpServletResponse resp = (HttpServletResponse) response;
				resp.sendError(901);
			} else {
				if (!httpServletRequest.getServletPath().contains("/login")
						&& !httpServletRequest.getServletPath().contains("/resources")) {
					dispatcher = request.getRequestDispatcher("/login");
					dispatcher.forward(request, response);
				} else {
					filterChain.doFilter(request, response);
				}
			}
		
		}
	}

}
