package kr.co.kan.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kan.dao.MemberDao;
import kr.co.kan.vo.MemberVo;

@Service
public class MemberService {
	
	@Autowired
	private MemberDao dao;
	
	public void insertMember(MemberVo vo) {
		dao.insertuser(vo);
	}
	
	//�α��� â
	public MemberVo login(MemberVo vo) throws Exception {
		return dao.login(vo);
	}	
	public List<MemberVo> selectMembers(){
		return dao.selectMembers();
	}
	//�α׾ƿ�
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
