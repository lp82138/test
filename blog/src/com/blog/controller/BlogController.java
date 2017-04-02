package com.blog.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.blog.domain.Blog;
import com.blog.domain.Users;
import com.blog.sevsice.BlogSersice;

@Controller
@RequestMapping("/system")
public class BlogController {
	@Resource
	private BlogSersice blogSersice;
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="/findAllBlog.action")
	@ResponseBody
	private ModelAndView findAllBlog(){
		return  new ModelAndView("/index.jsp");
	}
	/**
	 * 跳转添加页面
	 * @return
	 */
	@RequestMapping(value="/toAddBlog.action")
	private ModelAndView toAddBlog() {
		
		return  new ModelAndView("/page/addBlog.jsp");
	}
	/**
	 * 添加文章
	 * @param blog
	 */
	@RequestMapping(value="/addBlog.action")
	private ModelAndView AddBlog(Blog blog,HttpServletRequest request){
		HttpSession session = request.getSession();
		Users attribute = (Users) session.getAttribute("user");
		if(attribute!=null){
			blog.setUserId(attribute.getId());
		}
		Integer insertBlog = blogSersice.insertBlog(blog);
		return  new ModelAndView("/page/show.jsp");
	}
	/**
	 * 首页查询文章
	 */
	@RequestMapping(value="/findBlog.action")
	@ResponseBody
	private List<Blog> findBlog(){
		Blog blog = new Blog();
		List<Blog> findBlog = blogSersice.findBlog(blog);
		return findBlog;
	}
	/**
	 *根据userId查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/findBlogByUserId.action")
	@ResponseBody
	private List<Blog> findBlogByUserId(HttpServletRequest request){
		HttpSession session = request.getSession();
		Users attribute = (Users) session.getAttribute("user");
		Blog blog = new Blog();
		if(attribute!=null){
			blog.setUserId(attribute.getId());
		}
		List<Blog> findBlog = blogSersice.findBlog(blog);
		return findBlog;
	}
	/**
	 * 更新前查询文章
	 */
	@RequestMapping(value="/findBlogById.action")
	private ModelAndView findBlogById(Integer id,HttpServletRequest request){
		Map map = new HashMap();
		Blog blogVo = new Blog();
		blogVo.setBlogId(id);
		Blog blog = blogSersice.findBlogById(blogVo);
		map.put("blog", blog);
		return new ModelAndView("/page/addBlog.jsp",map);
	}
	/**
	 * 更新前查询文章
	 */
	@RequestMapping(value="/updateBlog.action")
	private ModelAndView updateBlog(Blog blog){
		Integer i = blogSersice.updateBlog(blog);
		return new ModelAndView("redirect:/page/show.jsp");
	}
	
}
