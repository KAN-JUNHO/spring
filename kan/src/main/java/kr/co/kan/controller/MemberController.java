package kr.co.kan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/Reservation/reservation")
	public String register() {
		return "/Reservation/reservation";
	}
	
	@GetMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@GetMapping("/member/my-cinema")
	public String myCinema() {
		return "/member/my-cinema";
	}

}
