package com.forum.csee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.forum.csee.dao.BoardDaoImpl;
import com.forum.csee.vo.BoardVO;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service {

	@Autowired
	BoardDaoImpl dao;

	@Override
	public void writePost(BoardVO vo) {
		// TODO Auto-generated method stub
		//int id = dao.selectAll().size() + 1;
		//vo.setNo(id);
		dao.insertData(vo);
	}

	@Override
	public BoardVO readPost(int no, BoardVO vo) {
		// TODO Auto-generated method stub
		dao.countViews(no);
		return dao.selectData(no, vo);
	}

	@Override
	public void editPost(BoardVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePost(BoardVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BoardVO> getPostList() {
		// TODO Auto-generated method stub
		
		 List<BoardVO> board = dao.selectAll();
			/*
			 * int size = board.size();
			 * 
			 * for(int i=0; i< size; i++) { board.get(i).setNo(size-i); }
			 */
		return board;
	}

	@Override
	public int numberOf() {
		// TODO Auto-generated method stub
		return dao.countData();
	}
}