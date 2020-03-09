package kr.co.kan.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
	
	@GetMapping("/member/my-cinema")
	public String myCinema() {
		return "/member/my-cinema";
	}
	
	@GetMapping("/user/register")
	public String register() {
		return "/user/register";
	}
	
	@PostMapping("/user/register")
	public String register(MemberVo vo) {
		service.insertMember(vo);
		return "/user/index";
	}
	//01. 로그인 화면
	@GetMapping("/user/login")
	public String login() {
		return "/user/login";
	}
	//02. 로그인 처리
	@PostMapping("/user/login")
	public String login(MemberVo vo, HttpServletRequest req) throws Exception{

		HttpSession session = req.getSession();
		
		MemberVo login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
}
