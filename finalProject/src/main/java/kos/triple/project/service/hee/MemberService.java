package kos.triple.project.service.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {

	// ȸ�� ���� ó��
	public void inputMemberPro(HttpServletRequest req, Model model);
	
	// ���̵� �ߺ� Ȯ��
	public void confirmId(HttpServletRequest req, Model model);
	
	// �α��� ó��
	public void loginPro(HttpServletRequest req, Model model);
	
	// ȸ�� �� ���� ��������
	public void getMemberInfo(HttpServletRequest req, Model model);
}
