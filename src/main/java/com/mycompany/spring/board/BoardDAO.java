package com.mycompany.spring.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int count = sqlSession.insert("Board.insertBoard", vo);
		return count;
	}
	
	public int updateBoard(BoardVO vo) {
		int count = sqlSession.update("Board.updateBoard", vo);
		return count;
	}
	
	public int deleteBoard(int id) {
		int one = sqlSession.update("Board.deleteBoard", id);
		return one;
	}
	public BoardVO getBoard(int id) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", id);
		return one;
	}
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}
}
