package org.bs.ssh.model;

import java.util.List;

public class Message {
	private int id;
	private String message;
	private User user;
	private User friend;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getFriend() {
		return friend;
	}
	public void setFriend(User friend) {
		this.friend = friend;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", message=" + message + ", user=" + user
				+ ", friend=" + friend + "]";
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
