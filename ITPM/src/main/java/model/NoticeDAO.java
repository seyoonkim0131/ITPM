package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.domain.Notice;
import util.DAOFactory;
import util.PagingUtil;

/**
 * 회원정보 CRUD
 * @author Jiwon Choi
 * @version 1.1
 * 2017.04.11
 */
public class NoticeDAO {
	
	public static int getTotalCnt() {
		SqlSession session = DAOFactory.getSqlSession(false);
		int totalCnt = 0;
		try {
			totalCnt = session.selectOne("notice.getTotalCnt");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return totalCnt;
	}
	
	public static ArrayList<Notice> getNoticeList(PagingUtil param) {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		try {
			noticeList = (ArrayList)session.selectList("notice.getNoticeList", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return noticeList;
	}
	
	public static Notice getNoticeDetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(false); //session 연결
		Notice noticeDetail = new Notice();
		try {
			noticeDetail = session.selectOne("notice.getNoticeDetail", no); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
		return noticeDetail;  //조회한 값을 담은 noticeDetail 반환
	}
	
	public static void insertNotice(Notice notice) {
		SqlSession session = DAOFactory.getSqlSession(true); //session 연결
		try {
			session.insert("notice.insertNotice", notice); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
	}
	
	public static void updateNotice(Notice notice) {
		SqlSession session = DAOFactory.getSqlSession(true); //session 연결
		try {
			session.update("notice.updateNotice", notice); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
	}
	
	public static void deleteNotice(int no) {
		SqlSession session = DAOFactory.getSqlSession(true); //session 연결
		try {
			session.delete("notice.deleteNotice", no); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
	}
	
	public static void updateView(int no) {
		SqlSession session = DAOFactory.getSqlSession(true); //session 연결
		try {
			session.update("notice.updateView", no); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); //조회 실패시 fail.jsp로 이동
		}
	}
	
	/**
	 * 이전글, 다음글 불러오기
	 * @param no
	 * @return ArrayList
	 */
	public static ArrayList<Notice> getBeforeNext(int no) {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Notice> notice = new ArrayList<Notice>();
		try {
			notice = (ArrayList)session.selectList("notice.beforeNext", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return notice;
	}
	
	/**
	 * 메인의 최신항목 불러오기
	 * @return
	 */
	public static ArrayList<Notice> getNoticeMainList() {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Notice> mainNoticeList = new ArrayList<Notice>();
		try {
			mainNoticeList = (ArrayList)session.selectList("notice.getMainList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mainNoticeList;
	}

}