package kos.triple.project.service.hee;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kos.triple.project.persistence.hee.MemberDAO;
import kos.triple.project.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO dao;

	// 회원 가입 처리
	@Override
	public void inputMemberPro(HttpServletRequest req, Model model) {
		
		MemberVO vo = new MemberVO();
		
		vo.setMem_id(req.getParameter("mem_id"));
		vo.setName(req.getParameter("name"));
		vo.setPassword(req.getParameter("password"));
		
		String email = req.getParameter("email");
		String[] tmp = email.split("@");
		
		vo.setEmail1(tmp[0]);
		vo.setEmail2(tmp[1]);
		
		vo.setSex(req.getParameter("sex"));
		
		String phone = req.getParameter("phone");
		String p1=phone.substring(0,3);
		String p2=phone.substring(3,7);
		String p3=phone.substring(7);

		vo.setPhone1(p1);
		vo.setPhone2(p2);
		vo.setPhone3(p3);
		
		vo.setBirth(req.getParameter("birth"));
		vo.setGrade("일반");
		vo.setFaceImg(""); //null
		vo.setIntroduce(""); //null
		
		
		System.out.println("id"+vo.getMem_id());
		System.out.println(vo.getName());
		
		System.out.println("pwd"+vo.getPassword());

		System.out.println(vo.getEmail1());
		System.out.println(vo.getEmail2());
		
		System.out.println(vo.getSex());
		
		
		System.out.println("p1"+vo.getPhone1());
		System.out.println(vo.getPhone2());		
		System.out.println(vo.getPhone3());
		

	
		System.out.println(vo.getBirth());
	
		System.out.println(vo.getGrade());
	
		
		int cnt = dao.inputMemberPro(vo);
		
		model.addAttribute("cnt", cnt);
	}

	// 아이디 중복 확인
	@Override
	public void confirmId(HttpServletRequest req, Model model) {
		
		String mem_id = req.getParameter("mem_id");
		
		int cnt = dao.idCheck(mem_id);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("mem_id", mem_id);
		
	}

	// 로그인 처리
	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		
		String mem_id = req.getParameter("mem_id");
		String password = req.getParameter("password");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);
		
		int cnt = dao.loginPro(map);
		
		if(cnt == 1) {
			req.getSession().setAttribute("mem_id", mem_id);
		}
		model.addAttribute("cnt", cnt);
	}

	// 회원 상세 정보 가져오기
	@Override
	public void getMemberInfo(HttpServletRequest req, Model model) {
		
		String mem_id = (String)req.getSession().getAttribute("mem_id");
		String password = req.getParameter("password");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);
		
		int cnt = dao.loginPro(map);
		
		if(cnt == 1) {
			
			MemberVO vo = dao.getMemberInfo(mem_id);
			
			model .addAttribute("vo", vo);
		}
		
		model.addAttribute("cnt", cnt);
	}

}
