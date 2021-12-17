package com.forum.csee.service;

import java.util.List;

import com.forum.csee.vo.BoardVO;

public interface Service {
	
	public void writePost(BoardVO vo);
	public BoardVO readPost(int no, BoardVO vo);
	public void editPost(BoardVO vo);
	public void deletePost(BoardVO vo);
	public List<BoardVO> getPostList() throws Exception;
	public int getNumberOfPosts();
}