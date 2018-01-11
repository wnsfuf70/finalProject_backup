package kos.triple.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class MainController {
	
	//main∆‰¿Ã¡ˆ
	@RequestMapping(value="main", method=RequestMethod.GET)
	public String main(HttpServletRequest req, Model model) {
		System.out.println("main()");
		return "main/main";
	}
	
	@RequestMapping(value="adminMain")
	public String adminMain() {
		return "main/adminMain";
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "main/main";
	}
	
}


