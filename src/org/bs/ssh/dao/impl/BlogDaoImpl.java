package org.bs.ssh.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.BlogDao;
import org.bs.ssh.model.Blog;
import org.bs.ssh.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository("blogDao")
public class BlogDaoImpl implements BlogDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void del(Blog blog) {
		getSession().delete(blog);
	}

	public List findAll(User user) {
		return getSession().createQuery("select b from Blog b where user = ?").setParameter(0, user).list();
	}

	public Blog findById(int id) {
		return (Blog)getSession().get(Blog.class, id);
	}

	public void save(Blog blog) {
		getSession().save(blog);
	}

	public void update(Blog blog) {
		getSession().update(blog);
	}
	
	private Session getSession(){
		return  sessionFactory.getCurrentSession();
	}



}
