package com.blog.sevsice;

import javax.servlet.http.HttpServletRequest;

import com.blog.domain.Users;

public interface UsersService {
	
	Integer login(Users user,HttpServletRequest request);
}
