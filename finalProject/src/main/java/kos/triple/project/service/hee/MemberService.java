package kos.triple.project.service.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {

	// 회원 가입 처리
	public void inputMemberPro(HttpServletRequest req, Model model);
	
	// 아이디 중복 확인
	public void confirmId(HttpServletRequest req, Model model);
	
	// 로그인 처리
	public void loginPro(HttpServletRequest req, Model model);
	
	// 회원 상세 정보 가져오기
	public void getMemberInfo(HttpServletRequest req, Model model);
}
