package org.bs.ssh.dao;

import java.util.List;

import org.bs.ssh.model.Comment;
import org.bs.ssh.model.Blog;


public interface CommentDao {
	public void save(Comment comment) ;
	public void update(Comment comment);
	public void del(Comment comment);
	public Comment findById(int id);
	public List findAllByBlog(Blog blog);
}
