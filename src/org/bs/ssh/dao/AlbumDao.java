package org.bs.ssh.dao;

import java.util.List;

import org.bs.ssh.model.Album;
import org.bs.ssh.model.User;


public interface AlbumDao {
	public void save(Album album) ;
	public void update(Album album);
	public void del(Album album);
	public Album findById(int id);
	public List findAllByUser(User user);
}
