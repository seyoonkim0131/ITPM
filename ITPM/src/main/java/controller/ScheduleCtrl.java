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

import model.ScheduleDAO;
import model.domain.Schedule;

/**
 * 일정을 관리하는 Controller
 * @author Hae Yun Kim
 * @version 1.0
 * 2017.04.19
 */
@Controller
public class ScheduleCtrl {
	
	/**
	 *목록보기
	 * @param request
	 * @return
	 */
	@RequestMapping(value="getAllScheduleList.do", method=RequestMethod.GET)
	public ModelAndView getAllScheduleList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		ArrayList <Schedule> list = new ArrayList<Schedule>();
		try {
			list =ScheduleDAO.getAllScheduleList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("list", list);
		mv.setViewName("academic/calendar");
		return mv;
	}
	
	/**
	 * 상세
	 * @param Schedule
	 */
	@RequestMapping(value="scheduleDetail.do", method=RequestMethod.GET)
	public ModelAndView Scheduledetail(HttpServletRequest request, @ModelAttribute Schedule schedule) {
		ModelAndView mv = new ModelAndView();
		Schedule detail = null;
		ArrayList<Schedule> beforeNext = new ArrayList<Schedule>();
		try {
			ScheduleDAO.updateScheduleview(Integer.parseInt(request.getParameter("no")));
			detail = ScheduleDAO.getScheduledetail(Integer.parseInt(request.getParameter("no")));
			beforeNext = ScheduleDAO.getBeforeNext(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("detail",detail);
		mv.addObject("beforeNext", beforeNext);
		mv.setViewName("academic/calendarDetail");
		return mv;
	}
	
	/**
	 * 수정하기
	 * @param Schedule
	 */
	@RequestMapping(value="updateSchedule.do", method=RequestMethod.POST)
	public ModelAndView updateSchedule(HttpServletRequest request, @ModelAttribute Schedule schedule) {
		ModelAndView mv = new ModelAndView();
		Schedule detail = null;
		ArrayList<Schedule> beforeNext = new ArrayList<Schedule>();
		/*파일 업로드를 위한부분*/
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file = multipartRequest.getFile("file");
		String fileName = "";
		try {
			if(schedule.getPoint() == null){
				schedule.setPoint("N");
			} // 중요표시체크
			if(file != null) {
				fileName = file.getOriginalFilename();
				schedule.setFile1(fileName);
				try {
					if(!fileName.equals("")) {
						//file.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName));// 로컬용
						file.transferTo(new File("/home/ubuntu/public_html/ITPM/attach/" + fileName)); //운영용
					} else {
						fileName = request.getParameter("file1");
						schedule.setFile1(fileName);
					}
					
				} catch (Exception e) {
					mv.setViewName("fail");
				}
				ScheduleDAO.updateSchedule(schedule);
				detail = ScheduleDAO.getScheduledetail(Integer.parseInt(request.getParameter("no")));
				beforeNext = ScheduleDAO.getBeforeNext(Integer.parseInt(request.getParameter("no")));
			} //파일 셋팅이 끝나면 저장
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("beforeNext",beforeNext);
		mv.addObject("detail",detail);
		mv.setViewName("academic/calendarDetail");
		return mv;
	}
	
	/**
	 * 수정하러가기.
	 * @param Schedule
	 */
	@RequestMapping(value="goUpdateSchedule.do", method=RequestMethod.GET)
	public ModelAndView goUpdateSchedule(HttpServletRequest request, @ModelAttribute Schedule schedule) {
		ModelAndView mv = new ModelAndView();
		Schedule detail = null;
		try {
			detail = ScheduleDAO.getScheduledetail(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("detail",detail);
		mv.setViewName("academic/calendarUpdate");
		return mv;
	}
	
	/**
	 * 글쓰기.
	 * @param request
	 */
	@RequestMapping(value="insertSchedule.do", method=RequestMethod.POST)
	public ModelAndView insertSchedule(HttpServletRequest request, @ModelAttribute Schedule schedule) {
		ModelAndView mv = new ModelAndView();
		ArrayList <Schedule> list = new ArrayList<Schedule>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file = multipartRequest.getFile("file");
		String fileName = "";
		try {
			if(schedule.getPoint() == null){
				schedule.setPoint("N");
			} // 중요표시체크
			if(file != null) {
				fileName = file.getOriginalFilename();
				schedule.setFile1(fileName);
				try {
					if(!fileName.equals("")) {
						//file.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName));// 로컬용
						file.transferTo(new File("/home/ubuntu/public_html/ITPM/attach/" + fileName)); //운영용
					} else {
						fileName = request.getParameter("file1");
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
				ScheduleDAO.insertSchedule(schedule);
			} //파일 셋팅이 끝나면 저장
			list = ScheduleDAO.getAllScheduleList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("list",list);
		mv.setViewName("academic/calendar");
		return mv;
	}
	
	/**
	 * 글쓰기이동
	 * @param request
	 */
	@RequestMapping(value="goInsertSchedule.do", method=RequestMethod.POST)
	public ModelAndView goInsertSchedule() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("academic/calendarInsert");
		return mv;
	}
	
	/**
	 * 삭제
	 * @param request
	 */
	@RequestMapping(value="deleteSchedule.do", method=RequestMethod.POST)
	public ModelAndView deleteSchedule(HttpServletRequest request, @ModelAttribute Schedule schedule ) {
		ModelAndView mv = new ModelAndView();
		ArrayList <Schedule> list = new ArrayList<Schedule>();
		try {
			ScheduleDAO.deleteSchedule(Integer.parseInt(request.getParameter("no")));
			list =ScheduleDAO.getAllScheduleList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("list",list);
		mv.setViewName("academic/calendar");
		return mv;
	}
	
	/**
	 * 첨부파일 다운로드
	 * @return ModelAndView
	 */
	@RequestMapping(value="scheduleFileDownload.do", method=RequestMethod.POST)
	public ModelAndView fileDownload(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("fileName", request.getParameter("file1"));
		mv.setViewName("fileDownload");
		return mv;
	}
}