package kos.triple.project.persistence.hee;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	

	@Autowired
	SqlSession sqlSession;
	
	// ȸ�� ���� ó��
	@Override
	public int inputMemberPro(MemberVO vo) {

		int cnt = 0;

		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		cnt = dao.inputMemberPro(vo);

		return cnt;
	}

	// ���̵� �ߺ� Ȯ�� üũ
	@Override
	public int idCheck(String mem_id) {

		int cnt = 0;

		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		cnt = dao.idCheck(mem_id);	

		return cnt;
	}

	// �α��� ó��
	@Override
	public int loginPro(Map<String, Object> map) {

		int cnt = 0;

		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);

		int idChkCnt = dao.idCheck((String) map.get("mem_id"));
		
		System.out.println("4 ���̵� : " + map.get("mem_id"));

		if (idChkCnt == 1) {

			int pwdChkCnt = dao.loginPro(map);

			if (pwdChkCnt == 1) {

				cnt = 1;
				
			} else {

				cnt = 0;
			}
		}else {
			
			cnt = -1;
		}

		return cnt;
	}

	// ȸ�� �� ���� ��������
	@Override
	public MemberVO getMemberInfo(String mem_id) {

		MemberVO vo = null;
		
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		vo = dao.getMemberInfo(mem_id);
		
		return vo;
	}
	
	

}
