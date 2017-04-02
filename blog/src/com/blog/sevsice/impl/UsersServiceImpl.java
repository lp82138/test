package com.blog.sevsice.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import com.blog.domain.Users;
import com.blog.mapper.UsersMapper;
import com.blog.sevsice.UsersService;
@Service
public class UsersServiceImpl implements UsersService {
	@Resource
	private UsersMapper usersMapper;
	/**
	 * 用户判断
	 */
	public Integer login(Users user,HttpServletRequest request) {
		Users login = usersMapper.login(user);
		if(login==null){
			//用户不存在
			return 1;
		}else if(!user.getPassword().equals(login.getPassword())){
			//密码不正确
			return 2;
		}
		//登录成功
		HttpSession session = request.getSession();
		session.setAttribute("user", login);
		return 0;
	}

}
