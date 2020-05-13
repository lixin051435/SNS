package org.bs.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.BlogDao;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;
import org.bs.ssh.service.BlogService;
import org.springframework.stereotype.Service;


@Service("blogService")
public class BlogServiceImpl implements BlogService {

	@Resource
	private BlogDao blogDao;
	
	public void addBlog(Blog blog) {
		blogDao.save(blog);
	}

	public void del(int id) {
		Blog blog = blogDao.findById(id);
		blogDao.del(blog);
	}

	public List findAllBlogs(User user) {
		return blogDao.findAll(user);
	}

	public Blog findBlog(int id) {
		return blogDao.findById(id);
	}

	public void updateBlog(Blog blog) {
		blogDao.update(blog);
	}


}
