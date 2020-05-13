package org.bs.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.MessageDao;
import org.bs.ssh.model.Album;
import org.bs.ssh.model.Message;
import org.bs.ssh.model.User;
import org.bs.ssh.service.MessageService;
import org.springframework.stereotype.Service;


@Service("messageService")
public class MessageServiceImpl implements MessageService {

	@Resource
	private MessageDao messageDao;
	
	public void addMessage(Message message) {
		messageDao.save(message);
	}

	public void del(int id) {
		messageDao.del(messageDao.findById(id));
	}


	public Message findMessage(int id) {
		return messageDao.findById(id);
	}

	public void updateMessage(Message message) {
		messageDao.update(message);
	}

	public List findAllMessages(User user) {
		return messageDao.findAllByUser(user);
	}






}
