package kos.triple.project.persistence.hee;

import java.util.Map;

import kos.triple.project.vo.MemberVO;

public interface MemberDAO {
	
	// �α��� ó��
	public int loginPro(Map<String, Object> map);
	
	// ȸ�� ���� ��������
	public MemberVO getMemberInfo(String mem_id);
	
	// ȸ�� ���� ó��
	public int inputMemberPro(MemberVO vo);
		
	// ���̵� �ߺ� Ȯ�� üũ
	public int idCheck(String mem_id);
	
	// ȸ�� ���� ����
	
	// ȸ�� Ż��
	
}
