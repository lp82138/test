package com.blog.mapper;

import java.util.List;

import com.blog.domain.Blog;

public interface BlogMapper {

	Integer insertBlog(Blog blog);
	
	List<Blog> selectBlog(Blog blog); 
	
	Blog findBlogById(Blog Blog);
	
	Integer updateBlog(Blog blog);
}
