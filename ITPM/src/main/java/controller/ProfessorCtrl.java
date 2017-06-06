package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.ProfessorDAO;
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
	   @RequestMapping(value="getAllProfList.do", method=RequestMethod.GET)
	   public ModelAndView getAllProfessorList(HttpServletRequest request) {
	      ModelAndView mv = new ModelAndView();
	      ArrayList <Professor> allProfList = new ArrayList<Professor>();
	      try {
	         allProfList = ProfessorDAO.getAllProfessorList();
//	         System.out.println("============="+allProfList);
	      } catch (Exception e) {
	    	  mv.setViewName("fail");
	      }
	      mv.addObject("allProfList", allProfList);
	      mv.setViewName("about/prof");
	      return mv;
	   }
	
	
	
	/**
	 * 교수정보를 수정한다.
	 * @return 
	 */
	@RequestMapping(value="updateProf.do", method=RequestMethod.POST)
	public ModelAndView updateProf(HttpServletRequest request) {
		ArrayList<Professor> allProfList = new ArrayList<Professor>();
		Professor ProfInfo = null;
		String profNumber = request.getParameter("profNumber");
		String nameKor = request.getParameter("nameKor");
		String nameEng = request.getParameter("nameEng");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String office = request.getParameter("office");
		String about = request.getParameter("about");
		String education = request.getParameter("education");
		String photo = request.getParameter("photo");
		ModelAndView mv = new ModelAndView();
		try {
			ProfessorDAO.updateProf(new Professor(request.getParameter("email"), nameKor, nameEng, phone, office, about, education, profNumber));
			allProfList = ProfessorDAO.getAllProfessorList();
//			ProfInfo = ProfessorDAO.updateProf(profNumber);
//			if(allProfList == null || allProfList.equals("")) {
//				allProfList = ProfessorDAO.getAllProfessorList();
//				mv.addObject("groupList", groupList);
//			} else {
//				allProfList = ProfessorDAO.getAllProfessorList();
//				mv.addObject("groupList", groupList);
//			}
			mv.addObject("allProfessorList", allProfList);
			mv.setViewName("about/prof");
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
	
	   
  
//   @RequestMapping(value="updateProf.do", method=RequestMethod.POST)
//   public ModelAndView updateProf(HttpServletRequest request, @ModelAttribute Professor professor) {
//      ModelAndView mv = new ModelAndView();
//      Professor detail = null;
//      try {
//         if(professor.getPoint()==null){
//            professor.setPoint("N");
//         }
//         ProfessorDAO.updateProf(professor);
//         detail = ProfessorDAO.getProfessordetail(String.parseString(request.getParameter("profNumber")));
//      } catch (Exception e) {
//         mv.setViewName("fail");
//      }
//      mv.addObject("detail",detail);
//      mv.setViewName("about/prof");
//      return mv;
//   }
   
   /**
    * 수정하러가기.
    * @param request
   
    */
//   @RequestMapping(value="goUpdateProfessor.do", method=RequestMethod.GET)
//   public ModelAndView updateProf(HttpServletRequest request) {
//      ModelAndView mv = new ModelAndView();
//      Professor detail = null;
//      try {
//         ProfessorDAO.updateProf(Professor);
//         detail = ProfessorDAO.getScheduledetail(Integer.parseInt(request.getParameter("no")));
//      } catch (Exception e) {
//         mv.setViewName("fail");
//      }
//      mv.addObject("detail",detail);
//      mv.setViewName("academic/calendarUpdate");
//      return mv;
//   }

}