package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import model.MemberDAO;
import model.domain.Member;
import util.ExcelRead;
import util.ExcelReadOption;

/**
 * 회원정보를 관리하는 Controller
 * @author Seyoon Kim
 * @version 1.1
 * 2017.03.29
 */
@Controller
public class MemberCtrl {
	
	/**
	 * 초기화가 필요한 id인지 확인한다.
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="checkPw.do", method=RequestMethod.GET, produces={"application/json"})
	public void checkPw(HttpServletRequest request, HttpServletResponse response) {
		Member check = null;
		try {
			check = MemberDAO.checkNewPw(request.getParameter("studentId"));
			JSONObject jObject = new JSONObject();
			jObject.put("data", check.getNewPw());
			response.getWriter().write(jObject.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 존재하는 학번인지 확인
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="checkId.do", method=RequestMethod.GET, produces={"application/json"})
	public void chkeckId(HttpServletRequest request, HttpServletResponse response) {
		int check = 0;
		try {
			check = MemberDAO.checkId(request.getParameter("studentId"));
			JSONObject jObject = new JSONObject();
			jObject.put("data", check);
			response.getWriter().write(jObject.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 비밀번호를 학번으로 초기화한다.
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="updatePw.do", method=RequestMethod.GET, produces={"application/json"})
	public void updatePw(HttpServletRequest request, HttpServletResponse response) {
		try {
			MemberDAO.updatePw(request.getParameter("studentId"));
			JSONObject jObject = new JSONObject();
			jObject.put("message", "success");
			response.getWriter().write(jObject.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 비밀번호 변경 페이지로 이동
	 * @param request
	 * @return
	 */
	@RequestMapping(value="loginReset.do", method=RequestMethod.POST)
	public ModelAndView loginReset(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Member myInfo = new Member();
		try {
			myInfo = MemberDAO.getMyInfo(request.getParameter("studentId"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("myInfo", myInfo);
		mv.setViewName("login/loginReset");
		return mv;
	}
	
	@RequestMapping(value="updateNewPw.do", method=RequestMethod.POST)
	public ModelAndView updateNewPw(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		try {
			MemberDAO.updateNewPw(new Member(request.getParameter("pw"), request.getParameter("studentId")));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.setViewName("index");
		return mv;
	}
	
	/**
	 * 로그인을 한다.
	 * @param request
	 * @param response
	 * @return ModelAndView
	 */
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		Member loginUser = null;
		Member myInfo = null;
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ArrayList<Member> groupList = new ArrayList<Member>();
		ArrayList<Member> professorList = new ArrayList<Member>();
		ArrayList<Member> studentList = new ArrayList<Member>();
		ModelAndView mv = new ModelAndView();
		try {
			loginUser = MemberDAO.login(new Member(request.getParameter("pw"), request.getParameter("studentId")));
			groupList = MemberDAO.getGroupList();
			HttpSession session = request.getSession();
			session.setAttribute("loginSession", loginUser);
			if(loginUser == null) {
				mv.setViewName("fail");
			} else {
				getAllMemberList(request, loginUser.getsGroup(), loginUser.getStudentId());
				myInfo = MemberDAO.getMyInfo(request.getParameter("studentId"));
				if(loginUser.getsGroup() == null || loginUser.getsGroup().equals("")) {
					professorList = MemberDAO.getProfessorList();
					studentList = MemberDAO.getStudentList();
					allMemberList.addAll(professorList);
					allMemberList.addAll(studentList);
					mv.addObject("groupList", groupList);
				} else {
					allMemberList = MemberDAO.getGroupMemberList(loginUser.getsGroup());
					mv.addObject("groupList", groupList);
				}
				mv.addObject("allMemberList", allMemberList);
				mv.addObject("curGroup", loginUser.getsGroup());
				mv.addObject("loginUser", loginUser);
				mv.addObject("myInfo", myInfo);
				mv.setViewName("notebook/notebook");
			}
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
	
	/**
	 * 로그아웃을 한다.
	 * @param request
	 * @return ModelAndView2
	 * @throws Exception
	 */
	@RequestMapping(value="logout.do", method=RequestMethod.POST)
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("index");
		return mv;
	}
	
	/**
	 * 원우 전체를 조회한다.
	 * @return ModelAndView
	 */
	@RequestMapping(value="getAllMemberList.do", method=RequestMethod.GET)
	public ModelAndView getAllMemberList(HttpServletRequest request, String sGroup, String studentId) {
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ArrayList<Member> groupList = new ArrayList<Member>();
		ArrayList<Member> professorList = new ArrayList<Member>();
		ArrayList<Member> studentList = new ArrayList<Member>();
		Member myInfo = null;
		ModelAndView mv = new ModelAndView();
		try {
			groupList = MemberDAO.getGroupList();
			myInfo = MemberDAO.getMyInfo(studentId);
			if(sGroup == null || sGroup.equals("")) {
				professorList = MemberDAO.getProfessorList();
				studentList = MemberDAO.getStudentList();
				allMemberList.addAll(professorList);
				allMemberList.addAll(studentList);
				mv.addObject("groupList", groupList);
			} else {
				allMemberList = MemberDAO.getGroupMemberList(sGroup);
				mv.addObject("groupList", groupList);
			}
			mv.addObject("myInfo", myInfo);
			mv.addObject("allMemberList", allMemberList);
			mv.addObject("curGroup", sGroup);
			mv.setViewName("notebook/notebook");
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
	
	/**
	 * 내 정보를 조회한다.
	 * @param request
	 * @return ModelAndView
	 */
	@RequestMapping(value="goMyInfo.do", method=RequestMethod.POST)
	public ModelAndView goMyInfo(HttpServletRequest request) {
		Member myInfo = null;
		ModelAndView mv = new ModelAndView();
		try {
			myInfo = MemberDAO.getMyInfo(request.getParameter("myId"));
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		mv.addObject("myInfo", myInfo);
		mv.setViewName("notebook/myNotebook");
		return mv;
	}

	/**
	 * 내 정보를 수정한다.
	 * @param request
	 * @param member
	 * @return ModelAndView
	 */
	@RequestMapping(value="updateMyInfo.do", method=RequestMethod.POST)
	public ModelAndView updateMyInfo(HttpServletRequest request, @ModelAttribute Member member) {
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ArrayList<Member> groupList = new ArrayList<Member>();
		ArrayList<Member> professorList = new ArrayList<Member>();
		ArrayList<Member> studentList = new ArrayList<Member>();
		Member myInfo = null;
		String studentId = request.getParameter("id");
		String group = request.getParameter("group");
		String mailId = request.getParameter("mailId");
		String mailDomain = request.getParameter("mailDomain");
		MultipartRequest multipartRequest = (MultipartRequest)request;
		MultipartFile photoFile = multipartRequest.getFile("photoFile");
		ModelAndView mv = new ModelAndView();
		String fileName = "";
		try {
			if(photoFile != null) {
				fileName = photoFile.getOriginalFilename();
				member.setPhoto(fileName);
				try {
					if(!fileName.equals("")) {
						//photoFile.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/image/member/" + fileName)); //로컬
						photoFile.transferTo(new File("/home/ubuntu/public_html/ITPM/image/member" + fileName)); //운영
					} else {
						fileName = request.getParameter("photo");
					}
					MemberDAO.updateMyInfo(new Member(request.getParameter("phoneNumber"), mailId, mailDomain, request.getParameter("job"), request.getParameter("jobPosition"), fileName, studentId));
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			groupList = MemberDAO.getGroupList();
			myInfo = MemberDAO.getMyInfo(studentId);
			if(group == null || group.equals("")) {
				professorList = MemberDAO.getProfessorList();
				studentList = MemberDAO.getStudentList();
				allMemberList.addAll(professorList);
				allMemberList.addAll(studentList);
				mv.addObject("groupList", groupList);
			} else {
				allMemberList = MemberDAO.getGroupMemberList(group);
				mv.addObject("groupList", groupList);
			}
			mv.addObject("myInfo", myInfo);
			mv.addObject("allMemberList", allMemberList);
			mv.addObject("curGroup", group);
			mv.setViewName("notebook/notebook");
		} catch (Exception e) {
			mv.setViewName("fail");
		}
		return mv;
	}
	
	/*ADMIN을 위한 로직*/
	/**
	 * 신입생 등록 페이지로 이동한다.
	 * @return
	 */
	@RequestMapping(value = "goInsertStudent.do", method = RequestMethod.GET)
	public ModelAndView goInsertPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/studentInsert");
		return mv;
	}
	
	/**
	 * 업로드한 엑셀파일로 신입생을 등록한다.
	 * @param request
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(value = "insertStudentExcel.do", method = RequestMethod.POST)
	public ModelAndView insertStudentExcel(MultipartHttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		MultipartFile excelFile = request.getFile("excelFile");
		if(excelFile == null || excelFile.isEmpty()) {
			throw new RuntimeException("엑셀파일을 선택해주세요.");
		}
		//File destFile = new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/attach/" + excelFile.getOriginalFilename()); //로컬
		File destFile = new File("/home/ubuntu/public_html/ITPM/attach/" + excelFile.getOriginalFilename()); //운영
		try {
			excelFile.transferTo(destFile);
		} catch (IllegalStateException | IOException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
		ExcelReadOption excelReadOption = new ExcelReadOption();
		excelReadOption.setFilePath(destFile.getAbsolutePath());
		excelReadOption.setOutputColumns("A", "B", "C", "D");
		excelReadOption.setStartRow(2);
		List<Map<String, String>> excelContent = ExcelRead.read(excelReadOption);
		for(Map<String, String> article: excelContent) {
			MemberDAO.insertMember(new Member(article.get("A"), article.get("B"), article.get("C"), article.get("D")));
		}
		destFile.delete();
		mv.setViewName("admin/studentInsert");
		return mv;
	}
	
	/**
	 * 원우 삭제 페이지로 이동한다.
	 * @return
	 */
	@RequestMapping(value = "goDeleteStudent.do", method = RequestMethod.GET)
	public ModelAndView goDeletePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/studentDelete");
		return mv;
	}
	
	/**
	 * 학번으로 member 검색
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "getMemberById.do", method = RequestMethod.GET, produces={"application/json"})
	public ModelAndView getMemberById(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		Member member = null;
		try {
			String studentId = request.getParameter("studentId");
			member = MemberDAO.getMyInfo(studentId);
			JSONObject jObject = new JSONObject();
			jObject.put("studentId", member.getStudentId());
			jObject.put("sGroup", member.getsGroup());
			jObject.put("name", member.getName());
			jObject.put("job", member.getJob());
			jObject.put("jobPosition", member.getJobPosition());
			jObject.put("phoneNumber", member.getPhoneNumber());
			jObject.put("mailId", member.getMailId());
			jObject.put("mailDomain", member.getMailDomain());
			System.out.println(jObject);
			response.getWriter().write(jObject.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}