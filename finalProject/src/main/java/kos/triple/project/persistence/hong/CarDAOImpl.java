package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.RentCarVO;

@Repository
public class CarDAOImpl implements CarDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//��Ʈī �߰�
	@Override
	public int rentAdd(RentCarVO vo) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.rentAdd(vo);
		
		return cnt;
	}

	//��Ʈī ��ȸ
	@Override
	public ArrayList<RentCarVO> rentCar(String car_kind) {
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		ArrayList<RentCarVO> vo = dao.rentCar(car_kind);
		
		return vo;
	}

	//��Ʈī ����
	@Override
	public int rentDelete(String car_num) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.rentDelete(car_num);
		
		return cnt;
	}

}
