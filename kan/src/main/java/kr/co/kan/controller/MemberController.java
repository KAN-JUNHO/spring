package kr.co.kan.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.kan.service.MemberService;
import kr.co.kan.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/Reservation/reservation")
	public String reservation() {
		return "/Reservation/reservation";
	}
	
	@GetMapping("/user/mycgv")
	public String login() {
		return "/user/mycgv";
	}
	
	@GetMapping("/member/my-cinema")
	public String myCinema() {
		return "/member/my-cinema";
	}
	
	@GetMapping("/register")
	public String register() {
		return "/register";
	}
	
	@PostMapping("/register")
	public String register(MemberVo vo) {
		service.insertMember(vo);
		return "/index";
	}
	
	@GetMapping("/login")
	public String login(String id,String pass1) {
		return "/login";
	}
	
	@PostMapping("/login")
	public String login(HttpSession session, MemberVo vo, RedirectAttributes rttr) throws Exception{
		
		
		MemberVo memberVo = service.login(vo);
		
		if(memberVo == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", memberVo);
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
}
