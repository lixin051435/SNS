package org.bs.ssh.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.AlbumDao;
import org.bs.ssh.model.Album;
import org.bs.ssh.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


@Repository("albumDao")
public class AlbumDaoImpl implements AlbumDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public void del(Album album) {
		getSession().delete(album);
	}

	public List findAllByUser(User user) {
		return getSession().createQuery("select a from Album a where user = ?").setParameter(0, user).list();
	}

	public Album findById(int id) {
		return (Album)getSession().load(Album.class, id);
	}

	public void save(Album album) {
		getSession().save(album);
	}

	public void update(Album album) {
		getSession().update(album);
	}
	
	private Session getSession(){
		return  sessionFactory.getCurrentSession();
	}



}
