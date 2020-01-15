package kr.co.ch05.advice;

import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
public class BeforeAdvice {

	@Pointcut("execution(* kr.co.ch05.sub2.BoardService.insert(..))")
	public void insertPointcut() {}
	
	@Before("insertPointcut()")
	public void before1() {
		System.out.println("È¾´Ü°ü½É - before1...");
	}
	
	public void before2() {
		System.out.println("È¾´Ü°ü½É - before2...");
	}
	
	public void before3() {
		System.out.println("È¾´Ü°ü½É - before3...");
	}
	
}
