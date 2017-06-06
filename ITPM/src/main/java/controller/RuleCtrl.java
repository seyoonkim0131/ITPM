package controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import model.RuleDAO;
import model.domain.Rule;

/**
 * 학과 내규 게시판을 관리하는 Controller
 * @author Seyoon Kim
 * @version 1.0
 * 2017.04.25
 */
@Controller
public class RuleCtrl {

	/**
	 * 규정 전체를 조회한다.
	 * @return ModelAndView
	 */
	@RequestMapping(value="getRuleList.do", method=RequestMethod.GET)
	public ModelAndView getRuleList(HttpServletRequest request) {
		ArrayList<Rule> ruleList = new ArrayList<Rule>();
		ModelAndView mv = new ModelAndView();
		try {
			ruleList = RuleDAO.getRuleList();
			mv.addObject("ruleList", ruleList);
			mv.setViewName("regulation/regulation");
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
	
	/**
	 * 규정 등록 페이지로 이동
	 * @return ModelAndView
	 */
	@RequestMapping(value="goInsertRule.do", method=RequestMethod.POST)
	public ModelAndView goInsertRule() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regulation/regulationInsert");
		return mv;
	}
	
	/**
	 * 상세조회/이전글,다음글조회/조회수update
	 * @return ModelAndView
	 */
	@RequestMapping(value="getRuleDetail.do", method=RequestMethod.GET)
	public ModelAndView getRuleDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Rule rule = null;
		ArrayList<Rule> beforeNext = new ArrayList<Rule>();
		int no = Integer.parseInt(request.getParameter("no"));
		try {
			rule = RuleDAO.getRuleDetail(no);
			beforeNext = RuleDAO.getBeforeNext(no);
			RuleDAO.updateView(no);
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("rule", rule);
		mv.addObject("beforeNext", beforeNext);
		mv.setViewName("regulation/regulationDetail");
		return mv;
	}
	
	/**
	 * 첨부파일 다운로드
	 * @return ModelAndView
	 */
	@RequestMapping(value="fileDownload.do", method=RequestMethod.POST)
	public ModelAndView fileDownload(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("fileName", request.getParameter("file1"));
		mv.setViewName("fileDownload");
		return mv;
	}
	
	/**
	 * 수정화면으로 이동
	 * @param request
	 * @return ModelAndView
	 */
	@RequestMapping(value="goUpdateRule.do", method=RequestMethod.GET)
	public ModelAndView goUpdateRule(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Rule rule = null;
		try {
			rule = RuleDAO.getRuleDetail(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("rule",rule);
		mv.setViewName("regulation/regulationUpdate");
		return mv;
	}
	
	/**
	 * 학과내규 수정하기
	 * @return ModelAndView
	 */
	@RequestMapping(value="updateRule.do", method=RequestMethod.POST)
	public ModelAndView updateRule(HttpServletRequest request, @ModelAttribute Rule reqRule) {
		ModelAndView mv = new ModelAndView();
		Rule rule = null;
		ArrayList<Rule> beforeNext = new ArrayList<Rule>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file = multipartRequest.getFile("file");
		String fileName = "";
		try {
			if(reqRule.getPoint() == null){
				reqRule.setPoint("N");
			}
			if(file != null) {
				fileName = file.getOriginalFilename();
				reqRule.setFile1(fileName);
				try {
					if(!fileName.equals("")) {
						//file.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName));// 로컬용
						file.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName)); //운영용
					} else {
						fileName = request.getParameter("file1");
						reqRule.setFile1(fileName);
					}
					
				} catch (Exception e) {
					mv.setViewName("fail");
				}
				RuleDAO.updateRule(reqRule);
				rule = RuleDAO.getRuleDetail(Integer.parseInt(request.getParameter("no")));
				beforeNext = RuleDAO.getBeforeNext(Integer.parseInt(request.getParameter("no")));
			} //파일 셋팅이 끝나면 저장
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("beforeNext", beforeNext);
		mv.addObject("rule", rule);
		mv.setViewName("regulation/regulationDetail");
		return mv;
	}
	
	/**
	 * 학과내규 신규등록
	 * @param request
	 * @param rule
	 * @return ModelAndView
	 */
	@RequestMapping(value="insertRule.do", method=RequestMethod.POST)
	public ModelAndView insertRule(HttpServletRequest request, @ModelAttribute Rule rule) {
		ModelAndView mv = new ModelAndView();
		ArrayList <Rule> ruleList = new ArrayList<Rule>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file = multipartRequest.getFile("file");
		String fileName = "";
		try {
			if(rule.getPoint() == null){
				rule.setPoint("N");
			}
			if(file != null) {
				fileName = file.getOriginalFilename();
				rule.setFile1(fileName);
				try {
					if(!fileName.equals("")) {
						//file.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName));// 로컬용
						file.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName)); //운영용
					} else {
						fileName = request.getParameter("file1");
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
				RuleDAO.insertRule(rule);
			}
			ruleList = RuleDAO.getRuleList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("ruleList",ruleList);
		mv.setViewName("regulation/regulation");
		return mv;
	}
	
	/**
	 * 학과내규 삭제
	 * @param request
	 * @return ModelAndView
	 */
	@RequestMapping(value="deleteRule.do", method=RequestMethod.POST)
	public ModelAndView deleteRule(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		ArrayList <Rule> ruleList = new ArrayList<Rule>();
		try {
			RuleDAO.deleteRule(Integer.parseInt(request.getParameter("no")));
			ruleList = RuleDAO.getRuleList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("ruleList",ruleList);
		mv.setViewName("regulation/regulation");
		return mv;
	}
}