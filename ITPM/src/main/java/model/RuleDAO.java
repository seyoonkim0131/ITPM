package model;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.domain.Rule;
import util.DAOFactory;

/**
 * Rule DAO
 * @author Seyoon Kim
 * @version 1.0
 */
public class RuleDAO {
	
	/**
	 * Paging을 위한 전체 글 갯수 조회
	 * @param Map
	 * @return Integer
	 */
	public int selectListCnt(Map param) {
		SqlSession session = DAOFactory.getSqlSession(false);
		int result = session.selectOne("rule.getListCnt", param);
		return result;
	}
	
	/**
	 * Rule 전체갯수 조회
	 * @return
	 */
	public static int getTotalCnt() {
		SqlSession session = DAOFactory.getSqlSession();
		int total = 0;
		try {
			total = session.selectOne("rule.getListCnt");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return total;
	}
	
	/**
	 * Rule 목록조회
	 * @return ArrayList
	 */
	public static ArrayList<Rule> getRuleList(/*int startNo*/) {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Rule> ruleList = new ArrayList<Rule>();
		try {
			ruleList = (ArrayList)session.selectList("rule.getRuleList"/*, startNo*/);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ruleList;
	}
	
	/**
	 * Rule 신규등록
	 * @param Rule
	 */
	public static void insertRule(Rule rule) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.insert("rule.insertRule", rule);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * 상세조회시 조회수 + 1
	 * @param Integer
	 */
	public static void updateView(int no) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("rule.updateView", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * Rule 상세조회
	 * @param Integer
	 * @return Rule
	 */
	public static Rule getRuleDetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(false);
		Rule rule = null;
		try {
			rule = session.selectOne("rule.getRuleDetail", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rule;
	}
	
	/**
	 * 이전글, 다음글 불러오기
	 * @param no
	 * @return ArrayList
	 */
	public static ArrayList<Rule> getBeforeNext(int no) {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Rule> rule = new ArrayList<Rule>();
		try {
			rule = (ArrayList)session.selectList("rule.getBeforeNext", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rule;
	}
	
	/**
	 * Rule 수정
	 * @param Rule
	 */
	public static void updateRule(Rule rule) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.update("rule.updateRule", rule);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	/**
	 * Rule 삭제
	 * @param Integer
	 */
	public static void deleteRule(int no) {
		SqlSession session = DAOFactory.getSqlSession(true);
		try {
			session.delete("rule.deleteRule", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
