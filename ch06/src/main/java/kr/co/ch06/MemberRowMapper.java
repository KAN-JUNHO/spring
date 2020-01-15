package kr.co.ch06;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MemberRowMapper implements RowMapper<MemberVO>{
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		MemberVO vo = new MemberVO();

		vo.setUid(rs.getString(1));
		vo.setName(rs.getString(2));
		vo.setHp(rs.getString(3));
		vo.setPos(rs.getString(4));
		vo.setDep(rs.getInt(5));
		vo.setRdate(rs.getString(6));

		return vo;
	}

	
}
