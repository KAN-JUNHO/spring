package kr.co.ch08.maincontroller;

import java.security.Provider.Service;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ch08.vo.UserVO;

@Controller
public class MainController {
	
	@RequestMapping(value={"/","/index"})
	public String indedx() {
		return "index";
	}
	
	
	
}
