package com.dwu.donut.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dwu.donut.dao.AlbumDao;
import com.dwu.donut.domain.Album;

@Service
public class AlbumService {

	@Autowired
	AlbumDao albumDao;
	
	public List<Album> getAlbumList() {
		return albumDao.getAlbumList();
	}
	
	public Album getAlbumItem(int albumId) {
		return albumDao.getAlbumItem(albumId);
	}

	public void insertAlbum(Album album) {
		albumDao.insertAlbum(album);
	}

	public void updateAlbum(Album album) {
		albumDao.updateAlbum(album);
	}
	
	public void deleteAlbum(Album album) {
		albumDao.deleteAlbum(album);
	}
	
}
