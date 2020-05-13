package org.bs.ssh.dao;

import java.util.List;

import org.bs.ssh.model.User;


public interface UserDao {
	public void save(User user) ;
	public void update(User user);
	public void del(User user);
	public User findById(int id);
	public List findAll();
	public User findByUsername(String username);
}
