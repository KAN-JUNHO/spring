package kr.co.jcinema.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminMovieController {


	@GetMapping("/admin/movie/register")
	public String register() {
		return "/admin/movie/register";
	}
	
	@GetMapping("/admin/movie/schedule")
	public String schedule() {
		return "/admin/movie/schedule";
	}
	
}
