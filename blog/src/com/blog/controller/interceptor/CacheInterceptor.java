package com.blog.controller.interceptor;



import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.blog.domain.Users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CacheInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
	      	response.setContentType("text/html;charset=UTF-8");
	      	request.setCharacterEncoding("UTF-8");
	      	String uri = request.getRequestURI();
	      	
	      	Users user=(Users)request.getSession().getAttribute("user");
	        if ("/system/toLogin.action".equals(uri)||"/system/Login.action".equals(uri)||"/system/findAllBlog.action".equals(uri)||"/system/findBlog.action".equals(uri)) {
	            // 如果是去登录，就放行
	            return true;
	        }else {
	        	if(user==null){
		        	request.getRequestDispatcher("/page/login.jsp").forward(request, response);
		    		return false;
	        	}
	        }
    		return true;
	       
	}
   
}
