package kr.co.jcinema.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminTicketController {

	
	@GetMapping("/admin/ticket/generate")
	public String generate() {
		return "/admin/ticket/generate";
	}
}
