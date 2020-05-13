package org.bs.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.CommentDao;
import org.bs.ssh.model.Album;
import org.bs.ssh.model.Comment;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;
import org.bs.ssh.service.CommentService;
import org.springframework.stereotype.Service;


@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Resource
	private CommentDao commentDao;
	
	public void addComment(Comment comment) {
		commentDao.save(comment);
	}

	public void del(int id) {
		commentDao.del(commentDao.findById(id));
	}


	public Comment findComment(int id) {
		return commentDao.findById(id);
	}

	public void updateComment(Comment comment) {
		commentDao.update(comment);
	}

	public List findAllComments(Blog blog) {
		return commentDao.findAllByBlog(blog);
	}










}
