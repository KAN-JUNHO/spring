package kr.co.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.member.dao.MemberDAO;
import kr.co.member.vo.MemberVO;

public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public void insertMember(MemberVO vo){
		
	}
	
	public List<MemberVO> selectMembers(){
		return dao.selectMembers();
	}
	
	public MemberVO selectMember(String uid) {
		return dao.selectMember(uid);
	}
	
	public void updateMember(MemberVO vo) {
		dao.updateMember(vo);
	}
	
	public void deleteMember(String uid) {
		dao.deleteMember(uid);
	}
}
