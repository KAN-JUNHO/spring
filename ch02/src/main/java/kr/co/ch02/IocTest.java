package kr.co.ch02;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.ch02.sub1.Speaker;

/*
 * ��¥ : 2020/01/06
 * �̸� : ��ö��
 * ���� : Ioc �ǽ��ϱ�
 */
public class IocTest {
	
	public static void main(String[] args) {
		
		// Ioc���� X
		TV ltv = new LgTV();
		ltv.power();
		ltv.chUp();
		ltv.soundUp();
		
		TV stv = new SamsungTV();
		stv.power();
		stv.chUp();
		stv.soundUp();
		
		// Spring Ioc���� O
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		TV tv1 = (LgTV) ctx.getBean("tv1");
		TV tv2 = (SamsungTV) ctx.getBean("tv2");
		
		tv1.power();
		tv1.chUp();
		tv1.soundUp();
		
		tv2.power();
		tv2.chUp();
		tv2.soundUp();
		
	}
}
