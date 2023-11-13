package kr.or.ddit.mapper.home;

import java.util.List;

import kr.or.ddit.vo.ScheduleVO;

public interface ScheduleMapper {
	// 저장
	public int insert(ScheduleVO schedule);
	
	// DB에 저장되어 있는 스케쥴 정보 가져오기
	public List<ScheduleVO> findAll();
	
	// 삭제하기
	public int delete(String start);
	
	// 수정하기
	public int update(ScheduleVO schedule);
}
