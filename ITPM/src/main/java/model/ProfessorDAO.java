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

	/**
	 * 교수 정보 담기
	 * @return
	 */
	public static Professor getProfessorDetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(false); //session 연결
		Professor professorDetail = new Professor();
		try {
			professorDetail = session.selectOne("professor.getProfessorDetail", no); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
		return professorDetail;  //조회한 값을 담은 noticeDetail 반환
	}
	   
	
	/**
	 * 교수정보를 수정한다.
	 * @param professor
	 */
	public static void updateProfessor(Professor professor) {
		SqlSession session = DAOFactory.getSqlSession(true);
		
		try {
			System.out.println(professor);
			session.update("professor.updateProfessor", professor);
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
	public static void insertProfessor(Professor professor) {
		SqlSession session = DAOFactory.getSqlSession(true); 
		try {
			session.insert("professor.insertProfessor", professor);
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
	public static void deleteProfessor(int no) {
		SqlSession session = DAOFactory.getSqlSession(true); 
		try {
			session.delete("professor.deleteProfessor", no); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); 
		}
	}

}