package controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.MemberDAO;
import model.NoticeDAO;
import model.ScheduleDAO;
import model.domain.Member;
import model.domain.Notice;
import model.domain.Schedule;

/**
 * 대학원 소개 > 학과소개, 교육비전, 방문안내 Controller
 * @author Seyoon Kim
 * @version 1.0
 * 2017.05.24
 */
@Controller
public class AboutCtrl {
	
	/**
	 * 학과소개로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goItpm.do", method=RequestMethod.GET)
	public ModelAndView goItpm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/itpm");
		return mv;
	}
	
	/**
	 * 교육비전으로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goVision.do", method=RequestMethod.GET)
	public ModelAndView goVision() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/vision");
		return mv;
	}
	
	/**
	 * 방문안내1로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goMap.do", method=RequestMethod.GET)
	public ModelAndView goMap() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/map");
		return mv;
	}
	
	/**
	 * 방문안내2로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goMap2.do", method=RequestMethod.GET)
	public ModelAndView goMap2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/map_02");
		return mv;
	}
	
	/**
	 * 방문안내3로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goMap3.do", method=RequestMethod.GET)
	public ModelAndView goMap3() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/map_03");
		return mv;
	}
	
	/**
	 * 방문안내4로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goMap4.do", method=RequestMethod.GET)
	public ModelAndView goMap4() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about/map_04");
		return mv;
	}
	
	/**
	 * login으로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goLogin.do", method=RequestMethod.GET)
	public ModelAndView goLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login/login");
		return mv;
	}
	
	/**
	 * index.jsp 로딩
	 * @return
	 */
	@RequestMapping(value="welcome.do", method=RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		//공지사항 최신글 불러오기
		ArrayList<Notice> mainNoticeList = new ArrayList<Notice>();
		//학사일정 최신글 불러오기
		ArrayList<Schedule> mainScheduleList = new ArrayList<Schedule>();
		//관리자 메일계정 불러오기
		Member member = null;
		try {
			mainScheduleList = ScheduleDAO.getScheduleMainList();
			mainNoticeList = NoticeDAO.getNoticeMainList();
			member = MemberDAO.getAdminMail();
			mv.addObject("mainScheduleList", mainScheduleList);
			mv.addObject("mainNoticeList", mainNoticeList);
			mv.addObject("member", member);
			mv.setViewName("index");
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
}