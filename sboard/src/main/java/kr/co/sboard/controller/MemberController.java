package kr.co.sboard.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import kr.co.sboard.service.MemberService;
import kr.co.sboard.vo.MemberVO;
import kr.co.sboard.vo.TermsVo;

@Controller
public class MemberController {

	@Inject
	private MemberService service;
	
	
	@GetMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@PostMapping("/member/login")
	public String login(MemberVO vo, HttpSession session) {
		
		MemberVO member = service.selectMember(vo);
		
		if(member == null) {
			// ȸ���� �ƴҰ��
			return "redirect:/member/login";	
		}else {
			// ȸ���� �������			
			// ����ó��
			session.setAttribute("member", member);			
			
			return "redirect:/list";
		}
	}
	
	@GetMapping("/member/logout")	
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/member/login";
	}
	
	
	@GetMapping("/member/terms")
	public String terms(Model model) {
		
		TermsVo vo = service.selectTerms();
		model.addAttribute("vo", vo);
		
		return "/member/terms";
	}
	
	@GetMapping("/member/register")
	public String register() {
		return "/member/register";
	}
	
	@PostMapping("/member/register")
	public String register(MemberVO vo, HttpServletRequest req) {
		
		String regip = req.getRemoteAddr();
		vo.setRegip(regip);
		
		
		service.insertMember(vo);
		
		return "redirect:/member/login";
	}
	
	
	/*
	 @ResponseBody
	 	- �ڹ� ��ü�� HTTP ���� ��ü�� ������
 	 	- �ڹ� ��ü�� HTTP ��û�� body �������� �����ϴ� ����
 	 	- ��°���� View ������ ������� �������� �ʰ� �ٷ� �����͸� responseó��	 
 	 */
	
	@ResponseBody
	@GetMapping("/member/checkUid")
	public String checkUid(String uid) {
		
		int result = service.selectUidCount(uid);
		
		JsonObject obj = new JsonObject();
		obj.addProperty("result", result);
		
		String json = new Gson().toJson(obj);
		
		return json;
	}
	
	
	
}