package model;

import org.apache.ibatis.session.SqlSession;

import model.domain.Member;
import util.DAOFactory;
/**
 * 회원정보 CRUD
 * @author Seyoon Kim
 * @version 1.0
 * 2017.02.08
 */
public class MemberDAO {

	public static boolean insertMember(Member member) {
		
		SqlSession session = DAOFactory.getSqlSession(true);
		boolean result = false;
		
		try {
			if (session.insert("member.insertMember", member) > 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}
