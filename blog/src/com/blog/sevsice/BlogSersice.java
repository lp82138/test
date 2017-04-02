package com.blog.sevsice;

import java.util.List;

import com.blog.domain.Blog;

public interface BlogSersice {
	
	Integer insertBlog(Blog blog);
	
	List<Blog> findBlog(Blog blog);
	
	Blog findBlogById(Blog blog);
	
	Integer updateBlog(Blog blog);

}
