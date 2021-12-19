package com.forum.csee.dao;

import java.util.List;

import com.forum.csee.vo.BoardVO;

public interface BoardDAO {
	
	public void insertData(BoardVO vo);
	public void updateData(int no, BoardVO vo);
	public void deleteData(int no);
	public BoardVO selectData(int no, BoardVO vo);
	public List<BoardVO> selectAll();
	public int countPosts();
	public void countViews(int no);
}
