package kr.co.kan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TicketController {
	
	@GetMapping(value={"/ticket"})
	public String choiceMovie() {
		return "/ticket";
	}
	
	@GetMapping("/movies")
	public String movies() {
		return "/movies";
		
	}
	

}
