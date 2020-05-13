package org.bs.ssh.model;

import java.util.ArrayList;
import java.util.List;

public class User {
	private int id;
	private String username;
	private String password;
	private String address;
	private String email;
	private String img;
	private String descp;
	private int tel;
	private String web;
	private List<Integer> friendIds;
	

	public void addFrieds(int id){
		if(friendIds==null){
			friendIds = new ArrayList<Integer>();
		}
		for(int a:friendIds){
			if(a==id)return;
		}
		friendIds.add(id);
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", address=" + address + ", email=" + email
				+ ", img=" + img + ", descp=" + descp + ", tel=" + tel
				+ ", web=" + web + ", friendIds=" + friendIds + "]";
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescp() {
		return descp;
	}
	public void setDescp(String descp) {
		this.descp = descp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((descp == null) ? 0 : descp.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + id;
		result = prime * result + ((img == null) ? 0 : img.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		result = prime * result + tel;
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
		result = prime * result + ((web == null) ? 0 : web.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (descp == null) {
			if (other.descp != null)
				return false;
		} else if (!descp.equals(other.descp))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (id != other.id)
			return false;
		if (img == null) {
			if (other.img != null)
				return false;
		} else if (!img.equals(other.img))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (tel != other.tel)
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		if (web == null) {
			if (other.web != null)
				return false;
		} else if (!web.equals(other.web))
			return false;
		return true;
	}

	public List<Integer> getFriendIds() {
		return friendIds;
	}
	public void setFriendIds(List<Integer> friendIds) {
		this.friendIds = friendIds;
	}
}
