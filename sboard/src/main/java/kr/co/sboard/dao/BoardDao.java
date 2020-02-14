package kr.co.sboard.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.sboard.vo.BoardArticleVo;

@Repository
public class BoardDao {

	@Inject
	private SqlSessionTemplate mybatis;
	
	
	public int getTotalArticle() {
		return mybatis.selectOne("mapper.sql_article.SELECT_TOTAL_ARTICLES");
	}
	
	
	public void insertArticle(BoardArticleVo vo) {
		
		mybatis.insert("mapper.sql_article.INSERT_ARTICLE", vo);
		
	}
	
	public BoardArticleVo selectArticle(int seq) {
		return mybatis.selectOne("mapper.sql_article.SELECT_ARTICLE", seq);
	}
	
	public List<BoardArticleVo> selectArticles(int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_ARTICLES", start);
	}
	
	public void updateArticle(BoardArticleVo vo) {
		
		mybatis.update("mapper.sql_article.UPDATE_ARTICLE", vo);
		
	}
	
	public void deleteArticle(int seq) {}
	
	
	public void insertComment(BoardArticleVo vo) {
		mybatis.insert("mapper.sql_article.INSERT_COMMENT", vo);		
	}
	
	public List<BoardArticleVo> selectComment(int parent) {
		return mybatis.selectList("mapper.sql_article.SELECT_COMMENT", parent);
	}
	
	public void updateComment(BoardArticleVo vo) {}
	
	public void deleteComment(int seq) {}
	
	
	
	
}
