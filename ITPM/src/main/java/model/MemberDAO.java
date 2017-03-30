package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.domain.Member;
import util.DAOFactory;
/**
 * 회원정보 CRUD
 * @author Seyoon Kim
 * @version 1.1
 * 2017.03.29
 */
public class MemberDAO {

//	public static boolean insertMember(Member member) {
//		
//		SqlSession session = DAOFactory.getSqlSession(true);
//		boolean result = false;
//		
//		try {
//			if (session.insert("member.insertMember", member) > 0) {
//				result = true;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return result;
//	}
	
	public static ArrayList<Member> getAllMemberList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		try {
			System.out.println("=========================test=============================hello=============");
			System.out.println(session);
			System.out.println(allMemberList);
			allMemberList = (ArrayList)session.selectList("member.getAllMemberList");
			System.out.println(allMemberList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return allMemberList;
	}
}
