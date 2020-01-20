package kr.co.board.maincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value={"/","/list"})
	public String list() {
		return "list";
	}
	
	
	
}
