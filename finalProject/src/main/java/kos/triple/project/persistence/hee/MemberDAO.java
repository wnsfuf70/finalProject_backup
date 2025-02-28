package kos.triple.project.persistence.hee;

import java.util.Map;

import kos.triple.project.vo.MemberVO;

public interface MemberDAO {
	
	// 로그인 처리
	public int loginPro(Map<String, Object> map);
	
	// 회원 정보 가져오기
	public MemberVO getMemberInfo(String mem_id);
	
	// 회원 가입 처리
	public int inputMemberPro(MemberVO vo);
		
	// 아이디 중복 확인 체크
	public int idCheck(String mem_id);
	
	// 회원 정보 수정
	
	// 회원 탈퇴
	
}
