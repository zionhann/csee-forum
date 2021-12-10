package com.forum.csee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forum.csee.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDAO{
	
	private final String namespace = "board";
	
	@Autowired
	SqlSession sqlSeesion;
	
	@Override
	public void insertData(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateData(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteData(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void selectData(BoardVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> selectAll() {
		// TODO Auto-generated method stub
		return sqlSeesion.selectList(namespace + ".selectAll");
	}
	
	/*
	 * @Override public Date getDateFormat() { return sqlSeesion.insert(namespace +
	 * ".getDateFormat"); }
	 */

	
	
}
