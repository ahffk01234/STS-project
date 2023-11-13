package kr.or.ddit.service.home;

import java.util.List;

import kr.or.ddit.vo.ScheduleVO;

public interface IScheduleService {
	// 저장
	public int insert(ScheduleVO scheduel);

	// DB에 저장되어 있는 스케쥴 가지고오기
	public List<ScheduleVO> findAll();

	// 스케쥴 삭제하기
	public int delete(String startDate);
	
	// 스케쥴 수정하기
	public int update(ScheduleVO scheduleVO);
}
