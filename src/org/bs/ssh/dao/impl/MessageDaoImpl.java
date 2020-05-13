package org.bs.ssh.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.MessageDao;
import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository("messageDao")
public class MessageDaoImpl implements MessageDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void del(Message message) {
		getSession().delete(message);
	}

	public List findAllByUser(User user) {
		return getSession().createQuery("select m from Message m where user = ?").setParameter(0, user).list();
	}

	public Message findById(int id) {
		return (Message)getSession().load(Message.class, id);
	}

	public void save(Message message) {
		getSession().save(message);
	}

	public void update(Message message) {
		getSession().update(message);
	}
	
	private Session getSession(){
		return  sessionFactory.getCurrentSession();
	}



}
