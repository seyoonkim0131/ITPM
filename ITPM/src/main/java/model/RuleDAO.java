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
	 * Rule 목록조회
	 * @return ArrayList
	 */
	public static ArrayList<Rule> getRuleList() {
		SqlSession session = DAOFactory.getSqlSession();
		ArrayList<Rule> ruleList = new ArrayList<Rule>();
		try {
			ruleList = (ArrayList)session.selectList("rule.getRuleList");
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
		return ruleList;
	}
	
	/**
	 * Rule 신규등록
	 * @param Rule
	 * @return Boolean
	 */
	public static boolean insertRule(Rule rule) {
		SqlSession session = DAOFactory.getSqlSession(false);
		boolean result = false;
		try {
			if(session.insert("rule.insertRule", rule) > 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
		return result;
	}
	
	/**
	 * 상세조회시 조회수 + 1
	 * @param Integer
	 */
	public static void updateView(int no) {
		SqlSession session = DAOFactory.getSqlSession();
		try {
			session.update("rule.updateView", no);
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
	}
	
	/**
	 * Rule 상세조회
	 * @param Integer
	 * @return Rule
	 */
	public static Rule getRuleDetail(int no) {
		SqlSession session = DAOFactory.getSqlSession(); //session 연결
		Rule rule = null; //조회한 값 담을 DTO 생성
		try {
			rule = session.selectOne("rule.getRuelDetail", no); //조회한 내용 담기
		} catch (Exception e) {
			e.printStackTrace();
			session.close(); //조회 실패시 fail.jsp로 이동
		}
		return rule; //조회한 값을 담은 Rule 반환
	}
	
	/**
	 * Rule 수정
	 * @param Rule
	 */
	public static void updateRule(Rule rule) {
		SqlSession session = DAOFactory.getSqlSession();
		try {
			session.update("rule.updateRule", rule);
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
	}
	
	/**
	 * Rule 삭제
	 * @param Integer
	 */
	public static void deleteRule(int no) {
		SqlSession session = DAOFactory.getSqlSession();
		try {
			session.delete("rule.deleteRule", no);
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
	}
}
