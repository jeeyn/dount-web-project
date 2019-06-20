package com.dwu.donut.dao.mybatis.mapper;

import java.util.List;

import com.dwu.donut.domain.Album;

public interface AlbumMapper {
	
	Album getAlbumItem(int albumId);

	List<Album> getAlbumList();
	 
	void insertAlbum(Album album);

	void updateAlbum(Album album);
	
	void deleteAlbum(Album album);
}
