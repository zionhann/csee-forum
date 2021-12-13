package com.forum.csee.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
		int id = dao.selectAll().size() + 1;
		vo.setNo(id);
		dao.insertData(vo);
	}

	@Override
	public void readPost(BoardVO vo) {
		// TODO Auto-generated method stub

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
	public BoardVO getPost(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getPostList() {
		// TODO Auto-generated method stub
		
		 List<BoardVO> board = dao.selectAll(); 
		 DateFormat newDate = new SimpleDateFormat("MM/dd");
		 
		 for(BoardVO post : board) { 
			 String _date = newDate.format(post.getDate());
			 try {
				post.setDate(newDate.parse(_date));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		return board;
	}
}
