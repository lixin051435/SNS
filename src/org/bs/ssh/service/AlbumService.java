package org.bs.ssh.service;

import java.util.List;

import org.bs.ssh.model.Album;
import org.bs.ssh.model.User;


public interface AlbumService {
	public void addAlbum(Album album) ;
	public void updateAlbum(Album album);
	public void del(int id);
	public Album findAlbum(int id);
	public List findAllAlbums(User user);
}
