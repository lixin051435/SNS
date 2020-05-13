package org.bs.ssh.service.impl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.UserDao;
import org.bs.ssh.model.User;
import org.bs.ssh.service.UserService;
import org.springframework.stereotype.Service;


@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	
	public void addUser(User user) {
		userDao.save(user);
	}

	public void del(int id) {
		userDao.del(userDao.findById(id));
	}


	public void updateUser(User user) {
		userDao.update(user);
	}
	public List findAllUsers() {
		return userDao.findAll();
	}
	
	public User findUser(int id) {
		return userDao.findById(id);
	}

	public User findByUserName(String username) {
		return userDao.findByUsername(username);
	}

	public List findAll() {
		return userDao.findAll();
	}

}
