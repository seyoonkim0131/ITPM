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

	/**
	 * 신입생 추가
	 * @param member
	 * @return
	 */
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
	
	/**
	 * 원우 삭제
	 * @param studentId
	 */
	public static void deleteMember(int studentId) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.delete("member.deleteMember", studentId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 비밀번호 재설정이 필요한지 체크
	 * @param studentId
	 * @return
	 */
	public static Member checkNewPw(String studentId) {
		SqlSession session = DAOFactory.getSqlSession();
		Member check = null;
		try {
			check = session.selectOne("member.checkNewPw", studentId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}
	
	/**
	 * 존재하는 학번인지 확인
	 * @param studentId
	 * @return
	 */
	public static int checkId(String studentId) {
		SqlSession session = DAOFactory.getSqlSession();
		int chk = 0;
		try {
			chk = session.selectOne("member.checkId", studentId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return chk;
	}
	
	/**
	 * 비밀번호를 학번으로 초기화한다.
	 * @param studentId
	 */
	public static void updatePw(String studentId) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("member.updatePw", studentId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 비밀번호를 변경한다.
	 * @param member
	 */
	public static void updateNewPw(Member member) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("member.updateNewPw", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * footer의 관리자 메일계정을 불러온다.
	 * @return
	 */
	public static Member getAdminMail() {
		SqlSession session = DAOFactory.getSqlSession();
		Member member = null;
		try {
			member = session.selectOne("member.getAdminMail");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return member;
	}
	
	/**
	 * 로그인
	 * @param member
	 * @return
	 */
	public static Member login(Member member) {
		SqlSession session = DAOFactory.getSqlSession();
		Member loginUser = null;
		try {
			loginUser = session.selectOne("member.login", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return loginUser;
	}
	
	/**
	 * 전체 원우 조회(관리자 제외)
	 * @return
	 */
//	public static ArrayList<Member> getAllMemberList() {
//		SqlSession session = DAOFactory.getSqlSession(false);
//		ArrayList<Member> allMemberList = new ArrayList<Member>();
//		try {
//			allMemberList = (ArrayList)session.selectList("member.getAllMemberList");
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return allMemberList;
//	}
	
	public static ArrayList<Member> getProfessorList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Member> professorList = new ArrayList<Member>();
		try {
			professorList = (ArrayList)session.selectList("member.getProfessorList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return professorList;
	}
	
	public static ArrayList<Member> getStudentList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Member> studentList = new ArrayList<Member>();
		try {
			studentList = (ArrayList)session.selectList("member.getStudentList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return studentList;
	}
	
	/**
	 * 기수 List 조회
	 * @return
	 */
	public static ArrayList<Member> getGroupList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Member> groupList = new ArrayList<Member>();
		try {
			groupList = (ArrayList)session.selectList("member.getGroupList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return groupList;
	}
	
	/**
	 * 기수별 원우 조회
	 * @param sGroup
	 * @return
	 */
	public static ArrayList<Member> getGroupMemberList(String sGroup) {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Member> groupMemberList = new ArrayList<Member>();
		try {
			groupMemberList = (ArrayList)session.selectList("member.getGroupMemberList", sGroup);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return groupMemberList;
	}
	
	/**
	 * 내정보 조회
	 * @param studentId
	 * @return
	 */
	public static Member getMyInfo(String studentId) {
		SqlSession session = DAOFactory.getSqlSession();
		Member myInfo = null;
		try {
			myInfo = session.selectOne("member.getMyInfo", studentId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return myInfo;
	}
	
	/**
	 * 내정보 수정
	 * @param member
	 */
	public static void updateMyInfo(Member member) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("member.updateMyInfo", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}