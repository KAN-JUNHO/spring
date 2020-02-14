package kr.co.sboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sboard.dao.BoardDao;
import kr.co.sboard.vo.BoardArticleVo;

@Service
public class BoardService {

	@Autowired
	private BoardDao dao;


	// ��ü �Խù� ����
	public int getTotalArticle() {
		return dao.getTotalArticle();
	}
	
	// LIMIT ��ȣ ���
	public int getLimitStart(String pg) {
		
		if(pg == null) {
			return 0;
		}else{
			int page = Integer.parseInt(pg);
			return (page-1)*10;
		}
	}
	
	// ��������ȣ ���
	public int getPageEnd(int total) {
		
		int pageEnd = 0;
		
		if(total % 10 == 0) {
			pageEnd = total / 10;
		}else {
			pageEnd = (total / 10) + 1;
		}
		
		return pageEnd;
	}
	
	// �� ���� ī���� ��ȣ
	public int getListCount(int total, int start) {
		return (total - start)+1;
	}	
	
	public void insertArticle(BoardArticleVo vo) {
		dao.insertArticle(vo);
	}
	
	public BoardArticleVo selectArticle(int seq) {
		return dao.selectArticle(seq);
	}
	
	public List<BoardArticleVo> selectArticles(int start) {
		return dao.selectArticles(start);
	}
	
	public void updateArticle(BoardArticleVo vo) {
		dao.updateArticle(vo);
	}
	
	public void deleteArticle(int seq) {
		dao.deleteArticle(seq);
	}
	
	public void insertComment(BoardArticleVo vo) {
		dao.insertComment(vo);		
	}
	
	public List<BoardArticleVo> selectComment(int parent) {
		return dao.selectComment(parent);
	}
	
	public void updateComment(BoardArticleVo vo) {
		dao.updateComment(vo);
	}
	
	public void deleteComment(int seq) {
		dao.deleteComment(seq);
	}
	
}
