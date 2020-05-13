package org.bs.ssh.dao;

import java.util.List;

import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;


public interface BlogDao {
	public void save(Blog blog) ;
	public void update(Blog blog);
	public void del(Blog blog);
	public Blog findById(int id);
	public List findAll(User user);
}
