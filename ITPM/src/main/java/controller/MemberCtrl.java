package controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
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
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
		Member loginUser = null;
		Member myInfo = null;
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ArrayList<Member> groupList = new ArrayList<Member>();
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
					allMemberList = MemberDAO.getAllMemberList();
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
		Member myInfo = null;
		ModelAndView mv = new ModelAndView();
		try {
			groupList = MemberDAO.getGroupList();
			myInfo = MemberDAO.getMyInfo(studentId);
			if(sGroup == null || sGroup.equals("")) {
				allMemberList = MemberDAO.getAllMemberList();
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

	@RequestMapping(value="updateMyInfo.do", method=RequestMethod.POST)
	public ModelAndView updateMyInfo(HttpServletRequest request, @ModelAttribute Member member) {
		HttpSession session = request.getSession();
		String root_path = session.getServletContext().getRealPath("/");
		System.out.println(root_path);
		ArrayList<Member> allMemberList = new ArrayList<Member>();
		ArrayList<Member> groupList = new ArrayList<Member>();
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
			System.out.println("안뇽");
			if(photoFile != null) {
				System.out.println("==========크크크");
				fileName = photoFile.getOriginalFilename();
				member.setPhoto(fileName);
				System.out.println(System.getProperty("user.home"));
				try {
					//File file = new File("/Users/Shiny/git/ITPM/ITPM/WebContent/image/member/" + fileName);
					//System.out.println(file);
					photoFile.transferTo(new File(System.getProperty("user.home") + "/git/ITPM/ITPM/WebContent/image/member/" + fileName));
					System.out.println("==============여기도 와야해");
					//MemberDAO.updateMyInfo(member);
					MemberDAO.updateMyInfo(new Member(request.getParameter("phoneNumber"), mailId, mailDomain, request.getParameter("job"), request.getParameter("jobPosition"), fileName, studentId));
				} catch (Exception e) {
					mv.setViewName("fail");
				}
			}
			groupList = MemberDAO.getGroupList();
			myInfo = MemberDAO.getMyInfo(studentId);
			if(group == null || group.equals("")) {
				allMemberList = MemberDAO.getAllMemberList();
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
}