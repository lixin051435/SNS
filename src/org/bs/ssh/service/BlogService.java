package org.bs.ssh.service;

import java.util.List;

import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;


public interface BlogService {
	public void addBlog(Blog blog) ;
	public void updateBlog(Blog blog);
	public void del(int id);
	public Blog findBlog(int id);
	public List findAllBlogs(User user);
}
