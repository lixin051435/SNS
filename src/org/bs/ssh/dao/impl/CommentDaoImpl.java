package org.bs.ssh.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.CommentDao;
import org.bs.ssh.model.Comment;
import org.bs.ssh.model.Blog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository("commentDao")
public class CommentDaoImpl implements CommentDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void del(Comment comment) {
		getSession().delete(comment);
	}

	public List findAllByBlog(Blog blog) {
		return getSession().createQuery("select m from Comment m where blog = ?").setParameter(0, blog).list();
	}

	public Comment findById(int id) {
		return (Comment)getSession().load(Comment.class, id);
	}

	public void save(Comment comment) {
		getSession().save(comment);
	}

	public void update(Comment comment) {
		getSession().update(comment);
	}
	
	private Session getSession(){
		return  sessionFactory.getCurrentSession();
	}



}
