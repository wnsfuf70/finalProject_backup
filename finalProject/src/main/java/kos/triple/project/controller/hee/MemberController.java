package kos.triple.project.controller.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kos.triple.project.service.hee.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	//�α���ó��
		@RequestMapping(value="register")
		public String register(HttpServletRequest req , Model model) {
			
			service.loginPro(req, model);
			
			return "main/main";
		}
	
	//�α���ó��
	@RequestMapping(value="login")
	public String login(HttpServletRequest req , Model model) {
		
		service.loginPro(req, model);
		
		return "main/main";
	}
	
	
	
}
