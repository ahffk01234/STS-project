package kr.or.ddit.service.home.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.home.ScheduleMapper;
import kr.or.ddit.service.home.IScheduleService;
import kr.or.ddit.vo.ScheduleVO;

@Service
public class ScheduleServiceImpl implements IScheduleService {

	// DI(Dependency 의존성 Injection 주입)
	
	@Inject
	private ScheduleMapper scheduleMapper;
	
	// 입력
	@Override
	public int insert(ScheduleVO scheduel) {
		return this.scheduleMapper.insert(scheduel);
	}

	@Override
	public List<ScheduleVO> findAll() {
		
		return this.scheduleMapper.findAll();
	}

	@Override
	public int delete(String startDate) {
		
		return this.scheduleMapper.delete(startDate);
	}

	@Override
	public int update(ScheduleVO scheduleVO) {
		
		return this.scheduleMapper.update(scheduleVO);
	}

}
