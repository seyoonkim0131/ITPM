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

import model.MemberDAO;
import model.ProfessorDAO;
import model.domain.Member;
import model.domain.Professor;

/**
 * 교수정보를 관리하는 Controller
 * @author Hoonseon Ryu
 * @version 1.1
 * 2017.04.19
 */
@Controller
public class ProfessorCtrl {

	/**
	 * 교수 전체를 조회한다.
	 * @return ModelAndView
	 */
	@RequestMapping(value = "getAllProfList.do", method = RequestMethod.GET)
	public ModelAndView getAllProfessorList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Professor> allProfList = new ArrayList<Professor>();
		try {
			allProfList = ProfessorDAO.getAllProfessorList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("allProfList", allProfList);
		mv.setViewName("about/professor");
		return mv;
	}

	/**
	 * 교수상세페이지
	 * @return ModelAndView
	 */
	@RequestMapping(value = "getProfessorDetail.do", method = RequestMethod.GET)
	public ModelAndView getEducationDetail(HttpServletRequest request) {
		Professor professorDetail = null;
		ModelAndView mv = new ModelAndView();
		try {
			professorDetail = ProfessorDAO.getProfessorDetail(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("professorDetail", professorDetail);
		mv.setViewName("about/professorDetail");
		return mv;
	}

	/**
	 * 교수정보 수정 화면
	 * @return ModelAndView
	 */
	@RequestMapping(value = "updateProfessorPage.do", method = RequestMethod.POST)
	public ModelAndView updateEducationPage(HttpServletRequest request) {
		Professor updateProfessor = null;
		ModelAndView mv = new ModelAndView();
		updateProfessor = ProfessorDAO.getProfessorDetail(Integer.parseInt(request.getParameter("no")));
		mv.addObject("updateProfessor", updateProfessor);
		mv.setViewName("about/professorUpdate");
		return mv;
	}

	/**
	 * 교수정보를 수정한다.
	 * @return ModelAndView
	 */
	@RequestMapping(value = "updateProfessor.do", method = RequestMethod.POST)
	public ModelAndView updateProf(HttpServletRequest request ,@ModelAttribute Professor professor) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Professor> allProfList = new ArrayList<Professor>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile photoFile = multipartRequest.getFile("photoFile");
		String fileName = "";
		try {
			if(photoFile != null) {
				fileName = photoFile.getOriginalFilename();
				try {
					if(!fileName.equals("")) {
						//photoFile.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/image/prof/" + fileName)); //로컬
						photoFile.transferTo(new File("/home/ubuntu/public_html/ITPM/image/prof/" + fileName)); //운영
					} else {
						fileName = request.getParameter("photo");
					}
					professor.setPhoto(fileName);
					//MemberDAO.updateMyInfo(new Member(request.getParameter("phoneNumber"), mailId, mailDomain, request.getParameter("job"), request.getParameter("jobPosition"), fileName, studentId));
					//ProfessorDAO.updateProfessor(new Professor(request.getParameter("no"), request.getParameter("nameKor"), request.getParameter("nameEng"), request.getParameter("phone"), request.getParameter("email"), request.getParameter("office"), request.getParameter("education"), request.getParameter("about"), fileName));
					ProfessorDAO.updateProfessor(professor);
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			allProfList = ProfessorDAO.getAllProfessorList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("allProfList", allProfList);
		mv.setViewName("about/professor");
		return mv;
	}

	/**
	 * 교수정보 삭제
	 * @return ModelAndView
	 */
	@RequestMapping(value = "deleteProfessor.do", method = RequestMethod.GET)
	public ModelAndView deleteProf(HttpServletRequest request) {
		ArrayList<Professor> allProfList = new ArrayList<Professor>();
		ModelAndView mv = new ModelAndView();
		try {
			ProfessorDAO.deleteProfessor(Integer.parseInt(request.getParameter("no")));
			allProfList = ProfessorDAO.getAllProfessorList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("allProfList", allProfList);
		mv.setViewName("about/professor");
		return mv;
	}

}