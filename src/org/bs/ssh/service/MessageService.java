package org.bs.ssh.service;

import java.util.List;

import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;


public interface MessageService {
	public void addMessage(Message message) ;
	public void updateMessage(Message message);
	public void del(int id);
	public Message findMessage(int id);
	public List findAllMessages(User user);
}
