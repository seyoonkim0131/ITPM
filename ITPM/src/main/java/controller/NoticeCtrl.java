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

import model.NoticeDAO;
import model.domain.Notice;
import util.PagingUtil;

/**
 * 회원정보를 관리하는 Controller
 * @author Jiwon Choi
 * @version 1.1
 * 2017.04.12
 */
@Controller
public class NoticeCtrl {
	
	/**
	 * 공지사항 목록
	 * @return ModelAndView
	 */
	@RequestMapping(value="getNoticeList.do", method=RequestMethod.GET)
	public ModelAndView getNoticeList(HttpServletRequest request) {
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		ModelAndView mv = new ModelAndView();
		try {
			//int totalCnt = NoticeDAO.getTotalCnt();
			noticeList = NoticeDAO.getNoticeList();  //groupList =>DAO 에서 리턴값
			
//			int searchNo = 10;
//			int searchCntPerPage = 10;
//			int searchUnitPage = 10;
//			
//			if(totalCnt > 0) {
//				PagingUtil.setPageInfo(reqParam, defaultCountPerPage)
//			}
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("noticeList", noticeList);
		mv.setViewName("board/notice");
		return mv;
	}
	
	/**
	 * 공지사항 내용페이지
	 * @return ModelAndView
	 */
	@RequestMapping(value="getNoticeDetail.do", method=RequestMethod.GET)
	public ModelAndView getNoticeDetail(HttpServletRequest request) {
		Notice noticeDetail = null;
		ArrayList<Notice> beforeNext = new ArrayList<Notice>();
		ModelAndView mv = new ModelAndView();
		try {
			NoticeDAO.updateView(Integer.parseInt(request.getParameter("no")));
			beforeNext = NoticeDAO.getBeforeNext(Integer.parseInt(request.getParameter("no")));
			noticeDetail = NoticeDAO.getNoticeDetail(Integer.parseInt(request.getParameter("no")));  //groupList =>DAO 에서 리턴값
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("noticeDetail", noticeDetail);  //"noticeDetail" - jsp에서 쓸값   / noticeDetail - DAO에서 리턴값
		mv.addObject("beforeNext", beforeNext);
		mv.setViewName("board/noticeDetail");
		return mv;
	}
	
	/**
	 * 공지사항 글쓰기화면
	 * @return ModelAndView
	 */
	@RequestMapping(value="insertNoticePage.do", method=RequestMethod.POST)
	public ModelAndView insertNoticePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/noticeInsert");
		return mv;
	}
	
	/**
	 * 공지사항 글쓰기
	 * @return ModelAndView
	 */
	@RequestMapping(value="insertNotice.do", method=RequestMethod.POST)
	public ModelAndView insertNotice(HttpServletRequest request, @ModelAttribute Notice notice) {
		ModelAndView mv = new ModelAndView();
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file_1 = multipartRequest.getFile("file_1");
		MultipartFile file_2 = multipartRequest.getFile("file_2");
		MultipartFile file_3 = multipartRequest.getFile("file_3");
		String fileName_1 = "";
		String fileName_2 = "";
		String fileName_3 = "";
		try {
			if(notice.getPoint() == null){
				notice.setPoint("N");
			}
			if(file_1 != null) {
				fileName_1 = file_1.getOriginalFilename();
				notice.setFile1(fileName_1);
				try {
					if(!fileName_1.equals("")) {
						//file_1.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_1));// 로컬용
						file_1.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_1)); //운영용
					} else {
						fileName_1 = request.getParameter("file1");
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			if(file_2 != null) {
				fileName_2 = file_2.getOriginalFilename();
				notice.setFile2(fileName_2);
				try {
					if(!fileName_2.equals("")) {
						//file_2.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_2));// 로컬용
						file_2.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_2)); //운영용
					} else {
						fileName_2 = request.getParameter("file2");
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			if(file_3 != null) {
				fileName_3 = file_3.getOriginalFilename();
				notice.setFile3(fileName_3);
				try {
					if(!fileName_3.equals("")) {
						//file_3.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_3));// 로컬용
						file_3.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_3)); //운영용
					} else {
						fileName_3 = request.getParameter("file3");
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			NoticeDAO.insertNotice(notice);  //select는 return값 담지만, insert update delete는 리턴값 필요X
			noticeList = NoticeDAO.getNoticeList();
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("noticeList",noticeList);
		mv.setViewName("board/notice");
		return mv;
	}
	
	/**
	 * 공지사항 글수정 화면
	 * @return ModelAndView
	 */
	@RequestMapping(value="updateNoticePage.do", method=RequestMethod.POST)
	public ModelAndView updateNoticePage(HttpServletRequest request) {
		Notice updateNotice = null;
		ModelAndView mv = new ModelAndView();
		updateNotice = NoticeDAO.getNoticeDetail(Integer.parseInt(request.getParameter("no")));
		mv.addObject("updateNotice", updateNotice);
		mv.setViewName("board/noticeUpdate");
		return mv;
	}
	
	/**
	 * 공지사항 글수정
	 * @return ModelAndView
	 */
	@RequestMapping(value="updateNotice.do", method=RequestMethod.POST)
	public ModelAndView updateNotice(HttpServletRequest request, @ModelAttribute Notice reqNotice) {
		ModelAndView mv = new ModelAndView();
		//ArrayList<Notice> noticeList = new ArrayList<Notice>();
		Notice noticeDetail = null;
		ArrayList<Notice> beforeNext = new ArrayList<Notice>();
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile file_1 = multipartRequest.getFile("file_1");
		MultipartFile file_2 = multipartRequest.getFile("file_2");
		MultipartFile file_3 = multipartRequest.getFile("file_3");
		String fileName_1 = "";
		String fileName_2 = "";
		String fileName_3 = "";
		try {
			if(reqNotice.getPoint() == null){
				reqNotice.setPoint("N");
			}
			if(file_1 != null) {
				fileName_1 = file_1.getOriginalFilename();
				reqNotice.setFile1(fileName_1);
				try {
					if(!fileName_1.equals("")) {
						//file_1.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_1));// 로컬용
						file_1.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_1)); //운영용
					} else {
						fileName_1 = request.getParameter("file1");
						reqNotice.setFile1(fileName_1);
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			if(file_2 != null) {
				fileName_2 = file_2.getOriginalFilename();
				reqNotice.setFile2(fileName_2);
				try {
					if(!fileName_2.equals("")) {
						//file_2.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_2));// 로컬용
						file_2.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_2)); //운영용
					} else {
						fileName_2 = request.getParameter("file2");
						reqNotice.setFile2(fileName_2);
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			if(file_3 != null) {
				fileName_3 = file_3.getOriginalFilename();
				reqNotice.setFile3(fileName_3);
				try {
					if(!fileName_3.equals("")) {
						//file_3.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + fileName_3));// 로컬용
						file_3.transferTo(new File(System.getProperty("user.dir") + "/webapps/ITPM/attach/" + fileName_3)); //운영용
					} else {
						fileName_3 = request.getParameter("file3");
						reqNotice.setFile3(fileName_3);
					}
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			NoticeDAO.updateNotice(reqNotice);  //groupList =>DAO 에서 리턴값
			noticeDetail = NoticeDAO.getNoticeDetail(Integer.parseInt(request.getParameter("no")));
			beforeNext = NoticeDAO.getBeforeNext(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("noticeDetail", noticeDetail);
		mv.addObject("beforeNext", beforeNext);
		mv.setViewName("board/noticeDetail");
		return mv;
	}

	/**
	 * 공지사항 글삭제
	 * @return ModelAndView
	 */
	@RequestMapping(value="deleteNotice.do", method=RequestMethod.GET)
	public ModelAndView deleteNotice(HttpServletRequest request) {
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		ModelAndView mv = new ModelAndView();
		try {
			NoticeDAO.deleteNotice(Integer.parseInt(request.getParameter("no")));
			noticeList = NoticeDAO.getNoticeList();  //groupList =>DAO 에서 리턴값
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("noticeList", noticeList);
		mv.setViewName("board/notice");
		return mv;
	}
	
	/**
	 * 첨부파일 다운로드
	 * @param request
	 * @return ModelAndView
	 */
	@RequestMapping(value="noticeFileDownload.do", method=RequestMethod.POST)
	public ModelAndView fileDownload(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String fileName = "";
		if(request.getParameter("file1") != null) {
			fileName = request.getParameter("file1");
		} else if(request.getParameter("file2") != null) {
			fileName = request.getParameter("file2");
		} else if(request.getParameter("file3") != null) {
			fileName = request.getParameter("file3");
		}
		mv.addObject("fileName", fileName);
		mv.setViewName("fileDownload");
		return mv;
	}
}