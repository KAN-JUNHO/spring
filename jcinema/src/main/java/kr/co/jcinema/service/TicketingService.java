package kr.co.jcinema.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.jcinema.admin.vo.AdminTicketVo;
import kr.co.jcinema.dao.TicketingDao;
import kr.co.jcinema.vo.SeatVo;

@Service
public class TicketingService {

	private TicketingDao dao;
	
	public List<SeatVo> selecltSeat(AdminTicketVo vo){
		
		List<SeatVo> seatList = dao.selectSeat(vo);
		
		seatList.subList(fromIndex, toIndex)
		
		return seatList;
	}
}
	
	
