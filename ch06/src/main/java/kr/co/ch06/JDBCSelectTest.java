package kr.co.ch06;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

/*
 * ��¥ : 2020/01/13
 * �̸� : ��ö��
 * ���� : ������ JDBC Select �ǽ��ϱ� 
 */
public class JDBCSelectTest {

	public static void main(String[] args) {

		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");

		UserDAO dao = (UserDAO) ctx.getBean("userDAO");

		UserVO user = dao.selectUser("A101");

		System.out.println("���̵� : "+user.getUid());
		System.out.println("�̸� : "+user.getName());
		System.out.println("�޴��� : "+user.getHp());
		System.out.println("���� : "+user.getAge());


		List<UserVO> users = dao.selectUsers();

		for(UserVO vo : users) {
			System.out.println("===================");
			System.out.println("���̵� : "+vo.getUid());
			System.out.println("�̸� : "+vo.getName());
			System.out.println("�޴��� : "+vo.getHp());
			System.out.println("���� : "+vo.getAge());
			System.out.println("-------------------");
		}


		//List<MemberVO> members = dao.selectMembers();

		List<Map<String, Object>> members = dao.selectMembersMap();

		for( Map<String, Object> map  : members ) {		
			System.out.println("========= MEMBER =========");
			System.out.println("���̵� : "+map.get("uid"));
			System.out.println("�̸� : "+map.get("name"));
			System.out.println("�޴��� : "+map.get("hp"));
			System.out.println("���� : "+map.get("pos"));
			System.out.println("�μ� : "+map.get("dep"));
			System.out.println("�Ի��� : "+map.get("rdate"));
			System.out.println("-------------------");
		}


	}
}