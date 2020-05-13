package org.bs.ssh.model;

import java.util.List;

public class Comment {
	private int id;
	private String comment;
	private String title;
	private Blog blog;
	private User friend;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public User getFriend() {
		return friend;
	}
	public void setFriend(User friend) {
		this.friend = friend;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", comment=" + comment + ", title="
				+ title + ", blog=" + blog + ", friend=" + friend + "]";
	}


}
