package kr.co.ch06;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class JDBCTest {
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		UserDAO dao = (UserDAO) ctx.getBean("userDAO");
		
		dao.insertUser();
		System.out.println("INSERT �Ϸ�");
		
		dao.updatetUser();
		System.out.println("UPDATE �Ϸ�");
		
		dao.deletetUser();
		System.out.println("DELETE �Ϸ�");
	}
}
