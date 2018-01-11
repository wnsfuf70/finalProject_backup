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
		vo.setEmail1(req.getParameter("email1"));
		vo.setEmail1(req.getParameter("email2"));
		vo.setSex(req.getParameter("sex"));
		vo.setPhone1(req.getParameter("phone1"));
		vo.setPhone2(req.getParameter("phone2"));
		vo.setPhone3(req.getParameter("phone3"));
		vo.setBirth(req.getParameter("birth"));
		vo.setGrade(req.getParameter("grade"));
		vo.setFaceImg(req.getParameter("faceImg"));
		vo.setIntroduce(req.getParameter("introduce"));
		
		System.out.println(vo.getMem_id());
		System.out.println(vo.getEmail1());
		System.out.println(vo.getEmail2());
		
		
		//int cnt = dao.inputMemberPro(vo);
		
		//model.addAttribute("cnt", cnt);
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
