package kr.co.ch08.maincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value={"/","/index"})
	public String indedx() {
		return "index";
	}
	
	
	
}
