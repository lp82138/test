package com.blog.sevsice.impl;




import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.blog.domain.Blog;
import com.blog.mapper.BlogMapper;
import com.blog.sevsice.BlogSersice;

@Service
public class BlogSersiceImpl implements BlogSersice {
	@Resource
	private BlogMapper blogMapper;
	/**
	 * 添加
	 */
	public Integer insertBlog(Blog blog) {
		blog.setCreateDate(new Date());
		return blogMapper.insertBlog(blog);
		
	}
	/**
	 * 查询
	 */
	public List<Blog> findBlog(Blog blog) {
		List<Blog> selectBlog = blogMapper.selectBlog(blog);
		return selectBlog;
	}
	/**
	 * 预更新
	 */
	public Blog findBlogById(Blog blog) {
		return blogMapper.findBlogById(blog);
	}
	
	public Integer updateBlog(Blog blog) {
		return blogMapper.updateBlog(blog);
	}

}
