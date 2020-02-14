package kr.co.ch06;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

/*
 * ��¥ : 2020/01/13
 * �̸� : ��ö��
 * ���� : ������ JDBC �ǽ��ϱ� 
 */
public class JDBCTest {

	public static void main(String[] args) {
		
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		UserDAO dao = (UserDAO) ctx.getBean("userDAO");
		
		dao.insertUser();
		System.out.println("INSERT �Ϸ�...");
		
		dao.updateUser();
		System.out.println("UPDATE �Ϸ�...");
		
		dao.deleteUser();
		System.out.println("DELETE �Ϸ�...");
	}
}
