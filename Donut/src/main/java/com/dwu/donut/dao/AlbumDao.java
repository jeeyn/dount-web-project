package com.dwu.donut.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dwu.donut.dao.mybatis.mapper.AlbumMapper;
import com.dwu.donut.domain.Album;

@Repository
public class AlbumDao {

	@Autowired
	private AlbumMapper albumMapper;
	
	public Album getAlbumItem(int albumId) {
		return albumMapper.getAlbumItem(albumId);
	}
	
	public List<Album> getAlbumList() {
		return albumMapper.getAlbumList();
	}
	
	public void insertAlbum(Album album) {
		albumMapper.insertAlbum(album);
	}
	
	public void updateAlbum(Album album) {
		albumMapper.updateAlbum(album);
	}
	
	public void deleteAlbum(Album album) {
		albumMapper.deleteAlbum(album);
	}
}
