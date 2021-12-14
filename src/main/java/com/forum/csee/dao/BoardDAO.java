package com.forum.csee.dao;

import java.util.List;

import com.forum.csee.vo.BoardVO;

public interface BoardDAO {
	
	public void insertData(BoardVO vo);
	public void updateData(BoardVO vo);
	public void deleteData(BoardVO vo);
	public void selectData(BoardVO vo);
	public List<BoardVO> selectAll();
	public int countData();
}
