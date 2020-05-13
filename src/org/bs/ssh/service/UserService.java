package org.bs.ssh.service;

import java.util.List;

import org.bs.ssh.model.User;


public interface UserService {
	public void addUser(User user) ;
	public void updateUser(User user);
	public void del(int id);
	public User findUser(int id);
	public User findByUserName(String username);
	public List findAll() ;
}
