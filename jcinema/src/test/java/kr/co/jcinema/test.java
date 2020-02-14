package kr.co.jcinema;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.jcinema.admin.vo.AdminMovieScheduleVo;
import kr.co.jcinema.admin.vo.AdminMovieVo;
import kr.co.jcinema.admin.vo.AdminTicketVo;
import kr.co.jcinema.api.dao.ApiDao;
import kr.co.jcinema.dao.TicketingDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context-test.xml"})
public class test {

	@Inject
	private ApiDao dao;
		
	@Test
	public void test1() {
		AdminMovieScheduleVo vo = new AdminMovieScheduleVo();
		vo.setSchedule_theater_no(115);
		
		List<AdminMovieVo> movies = dao.selectMovies(vo);
		
		System.out.println(movies);
	}
}
	
