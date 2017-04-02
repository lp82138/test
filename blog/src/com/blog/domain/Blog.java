package com.blog.domain;

import java.util.Date;

public class Blog {
	private Integer blogId;
	private String title;
	private String subTitle ;
	private String text;
	private String imageUrl;
	private String imageUrlCopy;
	private Integer userId;
	private Date createDate;
	
	public Blog() {
		super();
	}

	public Integer getBlogId() {
		return blogId;
	}

	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getImageUrlCopy() {
		return imageUrlCopy;
	}

	public void setImageUrlCopy(String imageUrlCopy) {
		this.imageUrlCopy = imageUrlCopy;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
