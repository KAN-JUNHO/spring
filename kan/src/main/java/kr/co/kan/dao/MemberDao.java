package kr.co.kan.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kan.vo.MemberVo;


@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertuser(MemberVo vo){
		mybatis.insert("mapper.sql_member.INSERT_MEMBER",vo);
		
	}

	public MemberVo selectMember(String id) throws Exception{
		return mybatis.selectOne("mapper.sql_member.SELECT_MEMBER",id);
	}
	
	public List<MemberVo> selectMembers() {
		return mybatis.selectList("mapper.sql_member.SELECT_MEMBERS");
	}
	
	public MemberVo login(MemberVo vo) throws Exception{
		
		return mybatis.selectOne("mapper.sql_member.SELECT_LOGIN",vo);
	}
}
