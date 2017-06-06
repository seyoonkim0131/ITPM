package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.domain.Education;
import util.DAOFactory;

/**
 * 개설과목정보 CRUD
 * @author Jiwon Choi
 * @version 1.1 
 * 2017.06.02
 */
public class EducationDAO {
	
	/**
	 * 공통 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getCommonEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> CommonEducationList = new ArrayList<Education>();
		try {
			CommonEducationList = (ArrayList) session.selectList("education.getCommonEducationList"); // 조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return CommonEducationList;
	}

	/**
	 * IT경영 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getBizEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> BizEducationList = new ArrayList<Education>();
		try {
			BizEducationList = (ArrayList) session.selectList("education.getBizEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return BizEducationList;
	}

	/**
	 * IT정책 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getPolicyEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> PolicyEducationList = new ArrayList<Education>();
		try {
			PolicyEducationList = (ArrayList) session.selectList("education.getPolicyEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return PolicyEducationList;
	}

	/**
	 * IT금융 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getFinEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> FinEducationList = new ArrayList<Education>();
		try {
			FinEducationList = (ArrayList) session.selectList("education.getFinEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return FinEducationList;
	}

	/**
	 * IT서비스 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getServEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> ServEducationList = new ArrayList<Education>();
		try {
			ServEducationList = (ArrayList) session.selectList("education.getServEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ServEducationList;
	}

	/**
	 * IT법령 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getLawEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> LawEducationList = new ArrayList<Education>();
		try {
			LawEducationList = (ArrayList) session.selectList("education.getLawEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return LawEducationList;
	}

	/**
	 * IT보안 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getSecurEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> SecurEducationList = new ArrayList<Education>();
		try {
			SecurEducationList = (ArrayList) session.selectList("education.getSecurEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return SecurEducationList;
	}

	/**
	 * IT행정 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getAdminEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> AdminEducationList = new ArrayList<Education>();
		try {
			AdminEducationList = (ArrayList) session.selectList("education.getAdminEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return AdminEducationList;
	}

	/**
	 * IT국방 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getDefEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> DefEducationList = new ArrayList<Education>();
		try {
			DefEducationList = (ArrayList) session.selectList("education.getDefEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return DefEducationList;
	}

	/**
	 * IT사업 과목정보 조회
	 * @return
	 */
	public static ArrayList<Education> getEntpEducationList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Education> EntpEducationList = new ArrayList<Education>();
		try {
			EntpEducationList = (ArrayList) session.selectList("education.getEntpEducationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return EntpEducationList;
	}

	public static Education getEducationDetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(false); // session 연결
		Education educationDetail = new Education();
		try {
			educationDetail = session.selectOne("education.getEducationDetail", no); // 조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // 조회 실패시 fail.jsp로 이동
		}
		return educationDetail; // 조회한 값을 담은 noticeDetail 반환
	}

	/**
	 * 개설과목 정보 수정.
	 * @param education
	 */
	public static void updateEdu(Education education) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("education.updateEducation", education);
			System.out.println("testUpdate");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 개설과목정보를 추가한다.
	 * @param education
	 */
	public static void insertEducation(Education education) {
		SqlSession session = DAOFactory.getSqlSession(true); // session 연결
		try {
			session.insert("education.insertEducation", education); // 조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // 조회 실패시 fail.jsp로 이동
		}
	}

	/**
	 * 개설과목정보를 삭제한다.
	 * @param education
	 */
	public static void deleteEducation(int no) {
		SqlSession session = DAOFactory.getSqlSession(true); // session 연결
		try {
			session.delete("education.deleteEducation", no); // 조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); // 조회 실패시 fail.jsp로 이동
		}
	}
}