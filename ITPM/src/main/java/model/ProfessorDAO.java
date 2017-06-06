package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.domain.Professor;
import util.DAOFactory;

/**
 * 교수정보 CRUD
 * @author Hoonseon Ryu
 * @version 1.0
 * 2017.04.19
 */
public class ProfessorDAO {

	/**
	 * 입력이 안되어있는 사람(관리자) 전체 교수정보 조회
	 * @return
	 */
	public static ArrayList<Professor> getAllProfessorList() {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Professor> allProfList = new ArrayList<Professor>();
		try {
			allProfList = (ArrayList)session.selectList("professor.getAllProfessorList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return allProfList;
	}
//	
//	/**
//	 * 교수 List 조회
//	 * @return
//	 */
//	public static ArrayList<Professor> getGroupList() {
//		SqlSession session = DAOFactory.getSqlSession(false);
//		ArrayList<Professor> groupList = new ArrayList<Professor>();
//		try {
//			groupList = (ArrayList)session.selectList("professor.getGroupList");
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return groupList;
//	}
	
	/**
	 * 교수정보를 변경한다.
	 * @param professor
	 */
	public static void updateProf(Professor professor) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("professor.updateProf", professor);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 교수정보를 추가한다.
	 * @param professor
	 */
	public static void insertProf(Professor professor) {
		SqlSession session = DAOFactory.getSqlSession(false); 
		try {
			session.insert("professor.insertProf", professor);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); 
		}
	}
	
	/**
	 * 교수정보를 삭제한다.
	 * @param professor
	 */
	public static void deleteProf(char profNumber) {
		SqlSession session = DAOFactory.getSqlSession(false); 
		try {
			session.delete("professor.deleteProf", profNumber); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); 
		}
	}

}