package com.blog.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blog.domain.Users;
import com.blog.sevsice.UsersService;

@Controller
@RequestMapping("/system")
public class UsersController {
	@Resource
	private UsersService usersService; 
	/**
	 * 跳转登录页面
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/toLogin.action")
	private ModelAndView toLogin(){
		return  new ModelAndView("/page/login.jsp");
	}
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/Login.action")
	private ModelAndView Login(Users user,HttpServletRequest request){
		Integer login = usersService.login(user,request);
		if(login==0){
			//去查用户的文章
			return  new ModelAndView("redirect:/page/show.jsp");
		}else{
			//返回登录
			return  new ModelAndView("redirect:/system/toLogin.action");
		}
	}
}
