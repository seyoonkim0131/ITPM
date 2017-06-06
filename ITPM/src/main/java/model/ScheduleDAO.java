package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.domain.Schedule;
import util.DAOFactory;
/**
 * 학사일정 DAO
 * @author Hae Yun Kim
 * @version 1.0
 * 2017.05.18
 */
public class ScheduleDAO {
	
	/**
	 *목록보기
	 */
	public static ArrayList<Schedule> getAllScheduleList() {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Schedule> allscheduleList = new ArrayList<Schedule>();
		try {
			allscheduleList = (ArrayList)session.selectList("schedule.getAllScheduleList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return allscheduleList;
	}
	
	/**
	 *상세보기
	 */
	public static Schedule getScheduledetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(false);
		Schedule getScheduledetail = new Schedule();
		try {
			getScheduledetail = session.selectOne("schedule.getScheduledetail" , no );
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return getScheduledetail;
	}
	
	/**
	 *이전다음
	 */
	public static ArrayList<Schedule> getBeforeNext(int no) {
		SqlSession session = DAOFactory.getSqlSession(false);
		ArrayList<Schedule> getBeforenext = new ArrayList<Schedule>();
		try {
			getBeforenext = (ArrayList)session.selectList("schedule.getBeforeNext", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return getBeforenext;
	}	
	
	/**
	 *글쓰기
	 */
	public static void insertSchedule(Schedule schedule){
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.insert("schedule.insertSchedule", schedule);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 *수정하기
	 */
	public static void updateSchedule(Schedule schedule){
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("schedule.updateSchedule", schedule);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 *삭제하기
	 */
	public static void deleteSchedule(int no){
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("schedule.deleteSchedule", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 *조회수
	 */
	public static void updateScheduleview(int no){
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("schedule.updateScheduleview", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 메인의 최신항목 불러오기
	 * @return
	 */
	public static ArrayList<Schedule> getScheduleMainList() {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Schedule> mainScheduleList = new ArrayList<Schedule>();
		try {
			mainScheduleList = (ArrayList)session.selectList("schedule.getScheduleMainList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mainScheduleList;
	}

}