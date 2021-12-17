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
	SqlSession sqlSession;
	
	@Override
	public void insertData(BoardVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".writePost", vo);
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
	public BoardVO selectData(int no, BoardVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectOne", no); 
	}

	@Override
	public List<BoardVO> selectAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectAll");
	}

	@Override
	public int countData() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".count");
	}

	@Override
	public void countViews(int no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".countViews", no);
	}
	
	

}
