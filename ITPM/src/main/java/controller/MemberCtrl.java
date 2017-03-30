package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.MemberDAO;
import model.domain.Member;

/**
 * 회원정보를 관리하는 Controller
 * @author Seyoon Kim
 * @version 1.1
 * 2017.03.29
 */
@Controller
public class MemberCtrl {
	
	/**
	 * 신입생을 등록한다.
	 * @param member
	 * @author Seyoon Kim
	 * 2017.02.08
	 */
//	public void insertMember(Member member) {
//		MemberDAO.insertMember(member); 
//	}
	
	@RequestMapping(value="getAllMemberList.do", method=RequestMethod.GET)
	public ModelAndView getAllMemberList(HttpServletRequest request) {
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ModelAndView mv = new ModelAndView();
		allMemberList = MemberDAO.getAllMemberList();
		mv.addObject("allMemberList", allMemberList);
		mv.setViewName("notebook/notebook");
		return mv;
		
	}

}