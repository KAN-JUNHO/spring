package kr.co.ch06;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Inject
	private JdbcTemplate jdbc;
	
	
	public void insertUser() {
		
		String sql = "INSERT INTO `USER1` VALUES (?,?,?,?)";
		Object[] values = {13,"홍길동","010", 40};
		
		jdbc.update(sql, values);
	}
	public UserVO selectUser(String uid) {
		String sql = "SELECT * FROM `USER1` WHERE `uid`=?";		
		UserVO user = jdbc.queryForObject(sql, new UserRowMapper(), uid);
		
		return user;
	}
	public List<Map<String, Object>> selectUsers() {
		String sql = "SELECT * FROM `USER1`";
		
		List<Map<String, Object>> users =jdbc.queryForList(sql);
		return users;
	}
	
	public List<Map<String, Object>> selectMembersMap() {

		String sql = "SELECT * FROM `MEMBER`";
		List<Map<String, Object>> members = jdbc.queryForList(sql);

		return members;
	}
	public void updatetUser() {
		
		Object[] values = {"박준호", 12};
		jdbc.update("UPDATE `USER1` SET `bookname`=? WEHRE `bookid`=?", values);  
		
	}
	public void deletetUser() {
		jdbc.update("DELETE FROM `USER1` WHERE `price`=?", 40);
	}
	
	
	
}
