package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.EducationDAO;
import model.domain.Education;

/**
 * 전공과목정보를 관리하는 Controller
 * @author Jiwon Choi
 * @version 1.1 2017.06.02
 */
@Controller
public class EducationCtrl {
	/**
	 * 전공과목 전체를 조회한다.
	 * @return ModelAndView
	 */
	@RequestMapping(value = "getAllEduList.do", method = RequestMethod.GET)
	public ModelAndView getAllEduList(HttpServletRequest request) {
		ArrayList<Education> CommonEducationList = new ArrayList<Education>();
		ArrayList<Education> BizEducationList = new ArrayList<Education>();
		ArrayList<Education> PolicyEducationList = new ArrayList<Education>();
		ArrayList<Education> FinEducationList = new ArrayList<Education>();
		ArrayList<Education> ServEducationList = new ArrayList<Education>();
		ArrayList<Education> LawEducationList = new ArrayList<Education>();
		ArrayList<Education> SecurEducationList = new ArrayList<Education>();
		ArrayList<Education> AdminEducationList = new ArrayList<Education>();
		ArrayList<Education> DefEducationList = new ArrayList<Education>();
		ArrayList<Education> EntpEducationList = new ArrayList<Education>();
		ModelAndView mv = new ModelAndView();
		try {
			CommonEducationList = EducationDAO.getCommonEducationList();
			BizEducationList = EducationDAO.getBizEducationList();
			PolicyEducationList = EducationDAO.getPolicyEducationList();
			FinEducationList = EducationDAO.getFinEducationList();
			ServEducationList = EducationDAO.getServEducationList();
			LawEducationList = EducationDAO.getLawEducationList();
			SecurEducationList = EducationDAO.getSecurEducationList();
			AdminEducationList = EducationDAO.getAdminEducationList();
			DefEducationList = EducationDAO.getDefEducationList();
			EntpEducationList = EducationDAO.getEntpEducationList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("CommonEducationList", CommonEducationList); // 따옴표안 - jsp에서 requestscope뒤에 오는거
		mv.addObject("BizEducationList", BizEducationList);
		mv.addObject("PolicyEducationList", PolicyEducationList);
		mv.addObject("FinEducationList", FinEducationList);
		mv.addObject("ServEducationList", ServEducationList);
		mv.addObject("LawEducationList", LawEducationList);
		mv.addObject("SecurEducationList", SecurEducationList);
		mv.addObject("AdminEducationList", AdminEducationList);
		mv.addObject("DefEducationList", DefEducationList);
		mv.addObject("EntpEducationList", EntpEducationList);
		mv.setViewName("academic/education");
		return mv;
	}

	/**
	 * 과목 세부페이지
	 * @return ModelAndView
	 */
	@RequestMapping(value = "getEducationDetail.do", method = RequestMethod.GET)
	public ModelAndView getEducationDetail(HttpServletRequest request) {
		Education educationDetail = null;
		ModelAndView mv = new ModelAndView();
		try {
			educationDetail = EducationDAO.getEducationDetail(Integer.parseInt(request.getParameter("no"))); // groupList =>DAO에서 리턴값
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("educationDetail", educationDetail); // "noticeDetail" - jsp에서 쓸값 / noticeDetail - DAO에서 리턴값
		mv.setViewName("academic/educationDetail");
		return mv;
	}

	/**
	 * 과목추가 페이지
	 * @return ModelAndView
	 */
	@RequestMapping(value = "insertEducationPage.do", method = RequestMethod.POST)
	public ModelAndView insertNoticePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("academic/educationInsert");
		return mv;
	}

	/**
	 * 과목 추가
	 * @return ModelAndView
	 */
	@RequestMapping(value = "insertEducation.do", method = RequestMethod.POST)
	public ModelAndView insertEducation(@ModelAttribute Education education) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Education> CommonEducationList = new ArrayList<Education>();
		ArrayList<Education> BizEducationList = new ArrayList<Education>();
		ArrayList<Education> PolicyEducationList = new ArrayList<Education>();
		ArrayList<Education> FinEducationList = new ArrayList<Education>();
		ArrayList<Education> ServEducationList = new ArrayList<Education>();
		ArrayList<Education> LawEducationList = new ArrayList<Education>();
		ArrayList<Education> SecurEducationList = new ArrayList<Education>();
		ArrayList<Education> AdminEducationList = new ArrayList<Education>();
		ArrayList<Education> DefEducationList = new ArrayList<Education>();
		ArrayList<Education> EntpEducationList = new ArrayList<Education>();
		try {
			EducationDAO.insertEducation(education); // select는 return값 담지만, insert update delete는 리턴값 필요X
			CommonEducationList = EducationDAO.getCommonEducationList();
			BizEducationList = EducationDAO.getBizEducationList();
			PolicyEducationList = EducationDAO.getPolicyEducationList();
			FinEducationList = EducationDAO.getFinEducationList();
			ServEducationList = EducationDAO.getServEducationList();
			LawEducationList = EducationDAO.getLawEducationList();
			SecurEducationList = EducationDAO.getSecurEducationList();
			AdminEducationList = EducationDAO.getAdminEducationList();
			DefEducationList = EducationDAO.getDefEducationList();
			EntpEducationList = EducationDAO.getEntpEducationList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("CommonEducationList", CommonEducationList);
		mv.addObject("BizEducationList", BizEducationList);
		mv.addObject("PolicyEducationList", PolicyEducationList);
		mv.addObject("FinEducationList", FinEducationList);
		mv.addObject("ServEducationList", ServEducationList);
		mv.addObject("LawEducationList", LawEducationList);
		mv.addObject("SecurEducationList", SecurEducationList);
		mv.addObject("AdminEducationList", AdminEducationList);
		mv.addObject("DefEducationList", DefEducationList);
		mv.addObject("EntpEducationList", EntpEducationList);
		mv.setViewName("academic/education");
		return mv;
	}

	/**
	 * 개설과목 수정 화면
	 * @return ModelAndView
	 */
	@RequestMapping(value = "updateEducationPage.do", method = RequestMethod.POST)
	public ModelAndView updateEducationPage(HttpServletRequest request) {
		Education updateEducation = null;
		ModelAndView mv = new ModelAndView();
		updateEducation = EducationDAO.getEducationDetail(Integer.parseInt(request.getParameter("no")));
		mv.addObject("updateEducation", updateEducation);
		mv.setViewName("academic/educationUpdate");
		return mv;
	}

	/**
	 * 개설과목 수정
	 * @return ModelAndView
	 */
	@RequestMapping(value = "updateEducation.do", method = RequestMethod.GET)
	public ModelAndView updateEducation(@ModelAttribute Education education) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Education> CommonEducationList = new ArrayList<Education>();
		ArrayList<Education> BizEducationList = new ArrayList<Education>();
		ArrayList<Education> PolicyEducationList = new ArrayList<Education>();
		ArrayList<Education> FinEducationList = new ArrayList<Education>();
		ArrayList<Education> ServEducationList = new ArrayList<Education>();
		ArrayList<Education> LawEducationList = new ArrayList<Education>();
		ArrayList<Education> SecurEducationList = new ArrayList<Education>();
		ArrayList<Education> AdminEducationList = new ArrayList<Education>();
		ArrayList<Education> DefEducationList = new ArrayList<Education>();
		ArrayList<Education> EntpEducationList = new ArrayList<Education>();
		try {
			EducationDAO.updateEdu(education); // groupList =>DAO 에서 리턴값
			CommonEducationList = EducationDAO.getCommonEducationList();
			BizEducationList = EducationDAO.getBizEducationList();
			PolicyEducationList = EducationDAO.getPolicyEducationList();
			FinEducationList = EducationDAO.getFinEducationList();
			ServEducationList = EducationDAO.getServEducationList();
			LawEducationList = EducationDAO.getLawEducationList();
			SecurEducationList = EducationDAO.getSecurEducationList();
			AdminEducationList = EducationDAO.getAdminEducationList();
			DefEducationList = EducationDAO.getDefEducationList();
			EntpEducationList = EducationDAO.getEntpEducationList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("CommonEducationList", CommonEducationList);
		mv.addObject("BizEducationList", BizEducationList);
		mv.addObject("PolicyEducationList", PolicyEducationList);
		mv.addObject("FinEducationList", FinEducationList);
		mv.addObject("ServEducationList", ServEducationList);
		mv.addObject("LawEducationList", LawEducationList);
		mv.addObject("SecurEducationList", SecurEducationList);
		mv.addObject("AdminEducationList", AdminEducationList);
		mv.addObject("DefEducationList", DefEducationList);
		mv.addObject("EntpEducationList", EntpEducationList);
		mv.setViewName("academic/education");
		return mv;
	}

	/**
	 * 과목 삭제
	 * @return ModelAndView
	 */
	@RequestMapping(value = "deleteEducation.do", method = RequestMethod.GET)
	public ModelAndView deleteEducation(HttpServletRequest request) {
		ArrayList<Education> CommonEducationList = new ArrayList<Education>();
		ArrayList<Education> BizEducationList = new ArrayList<Education>();
		ArrayList<Education> PolicyEducationList = new ArrayList<Education>();
		ArrayList<Education> FinEducationList = new ArrayList<Education>();
		ArrayList<Education> ServEducationList = new ArrayList<Education>();
		ArrayList<Education> LawEducationList = new ArrayList<Education>();
		ArrayList<Education> SecurEducationList = new ArrayList<Education>();
		ArrayList<Education> AdminEducationList = new ArrayList<Education>();
		ArrayList<Education> DefEducationList = new ArrayList<Education>();
		ArrayList<Education> EntpEducationList = new ArrayList<Education>();
		ModelAndView mv = new ModelAndView();
		try {
			EducationDAO.deleteEducation(Integer.parseInt(request.getParameter("no")));
			CommonEducationList = EducationDAO.getCommonEducationList();
			BizEducationList = EducationDAO.getBizEducationList();
			PolicyEducationList = EducationDAO.getPolicyEducationList();
			FinEducationList = EducationDAO.getFinEducationList();
			ServEducationList = EducationDAO.getServEducationList();
			LawEducationList = EducationDAO.getLawEducationList();
			SecurEducationList = EducationDAO.getSecurEducationList();
			AdminEducationList = EducationDAO.getAdminEducationList();
			DefEducationList = EducationDAO.getDefEducationList();
			EntpEducationList = EducationDAO.getEntpEducationList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("CommonEducationList", CommonEducationList);
		mv.addObject("BizEducationList", BizEducationList);
		mv.addObject("PolicyEducationList", PolicyEducationList);
		mv.addObject("FinEducationList", FinEducationList);
		mv.addObject("ServEducationList", ServEducationList);
		mv.addObject("LawEducationList", LawEducationList);
		mv.addObject("SecurEducationList", SecurEducationList);
		mv.addObject("AdminEducationList", AdminEducationList);
		mv.addObject("DefEducationList", DefEducationList);
		mv.addObject("EntpEducationList", EntpEducationList);
		mv.setViewName("academic/education");
		return mv;
	}

}