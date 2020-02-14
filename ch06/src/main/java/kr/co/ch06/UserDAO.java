package kr.co.ch06;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Inject
	private JdbcTemplate jdbc;	
	
	
	public void insertUser() {		
		String sql = "INSERT INTO `USER3` VALUES (?, ?, ?, ?)";
		Object[] values = {"S102", "È«±æµ¿", "010-1212-0098", 40};
		
		jdbc.update(sql, values);		
	}
		
	public UserVO selectUser(String uid) {
		
		String sql = "SELECT * FROM `USER3` WHERE `uid`=?";
		UserVO user = jdbc.queryForObject(sql, new UserRowMapper(), uid);
		
		return user;
	}
	
	public List<UserVO> selectUsers() {
		
		String sql = "SELECT * FROM `USER3`";		
		List<UserVO> users = jdbc.query(sql, new UserRowMapper());
		return users;		
	}
	
	public List<MemberVO> selectMembers() {
		
		String sql = "SELECT * FROM `MEMBER`";
		List<MemberVO> members = jdbc.query(sql, new MemberRowMapper());
		return members;
	}
	
	public List<Map<String, Object>> selectMembersMap() {
		
		String sql = "SELECT * FROM `MEMBER`";
		List<Map<String, Object>> members = jdbc.queryForList(sql);
		
		return members;
	}
	
	
	
	
	
	public void updateUser() {		
		Object[] values = {"±èÃ¶ÇÐ", "S101"};
		jdbc.update("UPDATE `USER3` SET `name`=? WHERE `uid`=?", values);
	}
	
	public void deleteUser() {
		jdbc.update("DELETE FROM `USER3` WHERE `age`=?", 40);
	}
	

}
