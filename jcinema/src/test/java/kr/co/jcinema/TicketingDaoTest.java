package kr.co.jcinema;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.jcinema.admin.vo.AdminTicketVo;
import kr.co.jcinema.dao.TicketingDao;
import kr.co.jcinema.vo.SeatVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context-test.xml"})
public class TicketingDaoTest {

	@Inject
	private TicketingDao dao;
	
	
	@Test
	public void getSeat() {
		
		AdminTicketVo vo = new AdminTicketVo();
		vo.setSeat_theater_no(115);
		vo.setSeat_screen_no(1);
		vo.setTicket_screen_no("1");
		vo.setTicket_movie_no("57");
		vo.setTicket_movie_date("2020-02-07");
		vo.setTicket_round_view("1");

				
		List<SeatVo> list = dao.selectSeat(vo);
		
		System.out.println("list : "+list);		
	}
	
	
	public void getTicket() {
		System.out.println("getTicket ½ÇÇà...");
	}
	
	
}
