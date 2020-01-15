package kr.co.ch06;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class JDBCTest {
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		UserDAO dao = (UserDAO) ctx.getBean("userDAO");
		
		dao.insertUser();
		System.out.println("INSERT 완료");
		
		dao.updatetUser();
		System.out.println("UPDATE 완료");
		
		dao.deletetUser();
		System.out.println("DELETE 완료");
	}
}
