package org.bs.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.bs.ssh.dao.AlbumDao;
import org.bs.ssh.model.Album;
import org.bs.ssh.model.User;
import org.bs.ssh.service.AlbumService;
import org.springframework.stereotype.Service;


@Service("albumService")
public class AlbumServiceImpl implements AlbumService {

	@Resource
	private AlbumDao albumDao;
	
	public void addAlbum(Album album) {
		albumDao.save(album);
	}

	public void del(int id) {
		albumDao.del(albumDao.findById(id));
	}


	public Album findAlbum(int id) {
		return albumDao.findById(id);
	}

	public void updateAlbum(Album album) {
		albumDao.update(album);
	}

	public List findAllAlbums(User user) {
		return albumDao.findAllByUser(user);
	}




}
