package org.bs.ssh.dao.impl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.UserDao;
import org.bs.ssh.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void del(User user) {
		getSession().delete(user);
	}

	public List findAll() {
		return getSession().createQuery("from User").list();
	}

	public User findById(int id) {
		return (User)getSession().load(User.class, id);
	}

	public void save(User user) {
		getSession().save(user);
	}

	public void update(User user) {
		getSession().clear();
		getSession().update(user);
	}
	
	private Session getSession(){
		return  sessionFactory.getCurrentSession();
	}

	public User findByUsername(String username) {
		User user = null;
		List users = getSession().createQuery("select u from User u where username = ?").setParameter(0,username).list();
		for (Iterator iterator = users.iterator(); iterator.hasNext();) {
			user = (User) iterator.next(); //属性的类型
		}

		return user;
	}

}
