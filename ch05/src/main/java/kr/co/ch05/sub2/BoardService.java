package kr.co.ch05.sub2;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Component("bs")
public class BoardService {

	public void insert() {
		System.out.println("�ٽɰ��� - insert...");
	}

	public void select() {
		System.out.println("�ٽɰ��� - select...");
	}

	public void update(int seq) {
		System.out.println("�ٽɰ��� - update...");
	}

	public void delete(int seq, String uid) {
		System.out.println("�ٽɰ��� - delete...");
		char ch = uid.charAt(1);		
	}

}