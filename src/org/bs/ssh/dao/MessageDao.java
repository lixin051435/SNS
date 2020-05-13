package org.bs.ssh.dao;

import java.util.List;

import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;


public interface MessageDao {
	public void save(Message message) ;
	public void update(Message message);
	public void del(Message message);
	public Message findById(int id);
	public List findAllByUser(User blog);
}
