package controller;

import org.springframework.stereotype.Controller;
//import org.springframework.web.servlet.ModelAndView;

import model.MemberDAO;
import model.domain.Member;

/**
 * 회원정보를 관리하는 Controller
 * @author Seyoon Kim
 * @version 1.0
 * 2017.02.08
 */
@Controller
public class MemberCtrl {
	
	/**
	 * 신입생을 등록한다.
	 * @param member
	 * @author Seyoon Kim
	 * 2017.02.08
	 */
	public void insertMember(Member member) {
		MemberDAO.insertMember(member); 
	}

}
