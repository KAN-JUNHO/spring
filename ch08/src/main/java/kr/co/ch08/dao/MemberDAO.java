package kr.co.ch08.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.co.ch08.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Inject
	private JdbcTemplate jdbcTemplate;
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	
	public void insertMember(MemberVO vo) {
		mybatis.insert("mapper.sql_member.INSERT_MEMBER",vo);
	}
	public MemberVO selectMember(String uid) {
		return mybatis.selectOne("mapper.sql_member.SELECT_MEMBER", uid);
	}
	public List<MemberVO> selectMembers(){
		return mybatis.selectList("mapper.sql_member.SELECT_MEMBERS");	
	}

	
	public void updateMember(MemberVO vo) {
		mybatis.update("mapper.sql_member.UPDATE_MEMBER", vo);
	}
	public void deleteMember(String uid) {
		mybatis.delete("mapper.sql_member.DELETE_MEMBER", uid);
	}
}
