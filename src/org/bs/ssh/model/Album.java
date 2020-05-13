package org.bs.ssh.model;

import java.util.ArrayList;
import java.util.List;


public class Album {
	private int id ;
	private String name;
	private List<String> photos;
	private User user;
	public void addPhoto(String photo){
		if(photos==null){
			photos = new ArrayList<String>();
		}
		photos.add(photo);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<String> getPhotos() {
		return photos;
	}
	public void setPhotos(List<String> photos) {
		this.photos = photos;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Album [id=" + id + ", name=" + name + ", photos=" + photos
				+ ", user=" + user + "]";
	}
}
