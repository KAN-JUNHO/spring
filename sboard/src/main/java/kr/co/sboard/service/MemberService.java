package kr.co.sboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sboard.dao.MemberDao;
import kr.co.sboard.vo.MemberVO;
import kr.co.sboard.vo.TermsVo;

@Service
public class MemberService {
	
	@Autowired
	private MemberDao dao;

	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
	}
	
	public MemberVO selectMember(MemberVO vo) {
		return dao.selectMember(vo);
	}
	
	public void selectMembers() {}
	public void updateMember() {}
	public void deleteMember() {}
	
	public TermsVo selectTerms() {
		return dao.selectTerms(); 
	}
	
	public int selectUidCount(String uid) {
		return dao.selectUidCount(uid);
	}
}
