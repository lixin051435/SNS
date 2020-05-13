package org.bs.ssh.model;

public class Blog {
	private int id;
	private String title;
	private String source;
	private String author;
	private String descp;
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String descp) {
		this.descp = descp;
	}
	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", source=" + source
				+ ", author=" + author + ", descp=" + descp + ", user=" + user
				+ "]";
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
}
