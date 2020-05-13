package org.bs.ssh.service;

import java.util.List;

import org.bs.ssh.model.Comment;
import org.bs.ssh.model.Blog;


public interface CommentService {
	public void addComment(Comment comment) ;
	public void updateComment(Comment comment);
	public void del(int id);
	public Comment findComment(int id);
	public List findAllComments(Blog blog);
}
