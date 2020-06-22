package com.spring.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.project.HomeController;
import com.spring.project.dao.IDao;

@Controller
public class BController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private TransactionTemplate transactionTemplate;
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
	      this.transactionTemplate = transactionTemplate;
	   }

	
	// 메인페이지
	@RequestMapping("/Mainpage")
	public String Mainpage(Model model) {
		System.out.println("Mainpage()");
				
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("Mainlist", dao.Mainlist());
				
		return "Mainpage";
	}
			
	// 개인회원 로그인
	@RequestMapping("/user_login")
	public String user_login(HttpServletRequest request,Model model) {
		System.out.println("user_login()");
				
		IDao dao = sqlSession.getMapper(IDao.class);
		if(dao.user_login(request.getParameter("user_id"),request.getParameter("user_pw"))!=null) {
			model.addAttribute("Mainlist", dao.Mainlist());
			model.addAttribute("user_login", dao.user_login(request.getParameter("user_id"),request.getParameter("user_pw")));
			return "Mainpage";
		}
		else {
			return "Mainpage";
		}
	}
			
	
	// 개인 회원가입	페이지 이동
	@RequestMapping("/UserJoin")
	public String UserJoin(Model model) {
		System.out.println("UserJoin()");
		return "/UserJoin";
	}
	
	// 개인회원 가입 실행부
		@RequestMapping("/joinaction")
		public String joinaction(HttpServletRequest request, Model model) {
			System.out.println("joinaction()");
			
			final String user_id = request.getParameter("user_id");
			final String user_pw = request.getParameter("user_pw");
			final String name = request.getParameter("name");
			final String age = request.getParameter("age");
			final String email = request.getParameter("email");
			final String major = request.getParameter("major");
			final String education = request.getParameter("education");
		
			transactionTemplate.execute(new TransactionCallbackWithoutResult() {
	            
	            @Override
	            protected void doInTransactionWithoutResult(TransactionStatus status) {
	            	IDao dao = sqlSession.getMapper(IDao.class);
					dao.userjoin(user_id, user_pw, name, age, email, major, education);
	            }
	        });
					return "redirect:Mainpage";
		}

		
		
		// 개인회원 정보 확인. - 지원한 공고 목록 
		@RequestMapping("/userInfo")
		public String userInfo(HttpServletRequest request, Model model) {
			IDao dao = sqlSession.getMapper(IDao.class);
			model.addAttribute("userInfo", dao.userDao(request.getParameter("user_id")));
			model.addAttribute("userApplyInfo", dao.userApplyInfo(request.getParameter("user_id")));
			System.out.println("userInfo()");
			System.out.println("userApplyInfo()");
			
			return "/userInfo";
		}
		
		// 개인회원 정보 수정.
		@RequestMapping("/userInfoUpdate")
		public String userInfoUpdate(HttpServletRequest request, Model model) {
			IDao dao = sqlSession.getMapper(IDao.class);
			model.addAttribute("userInfo", dao.userDao(request.getParameter("user_id")));
			System.out.println("userInfo()");
			
			return "/userInfoUpdate";
		}
		
		
		// 유저 상세내용 수정하기.
		@RequestMapping("/userupdate")
		public String userupdate(final HttpServletRequest request, final Model model) {
			
			String user_id = request.getParameter("user_id");
			System.out.println(user_id);
			
			transactionTemplate.execute(new TransactionCallbackWithoutResult() {
				
				@Override
			    protected void doInTransactionWithoutResult(TransactionStatus status) {
					IDao dao = sqlSession.getMapper(IDao.class);
					dao.userupdateDao(request.getParameter("user_id"),request.getParameter("user_pw"), request.getParameter("name"), request.getParameter("email"), request.getParameter("age"), request.getParameter("education"), request.getParameter("major"));
					System.out.println("error1");
				}
			  });
			System.out.println("error2");
			return "redirect:userInfo?user_id="+request.getParameter("user_id");
		}
		
		// 개인회원 탈퇴 확인.
		@RequestMapping("/userSecession")
		public String userSecession(HttpServletRequest request, Model model) {
					
			return "/userSecession";
		}
		
		// 개인회원 탈퇴 실행부.
		@RequestMapping("/deleteuser")
		public String deleteuser(HttpServletRequest request, Model model) {
			
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.deleteuserDao(request.getParameter("user_id"));
			
			return "Mainpage";
		}
		

	// 유저 공고 지원
	@RequestMapping("/apply")
	public String apply(final HttpServletRequest request, Model model) {
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus status) {		
				IDao dao = sqlSession.getMapper(IDao.class);
				dao.apply(request.getParameter("user_id"), request.getParameter("seq"));
				System.out.println("apply()");

            }
        });
		return "redirect:Mainpage?user_id="+request.getParameter("user_id");
	}
	
	
	// 검색기능 - 비슷한 내용을 들고 나옴
	@RequestMapping("/searchForm")
	public String searchForm(HttpServletRequest request,Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("search", dao.searchDao(request.getParameter("search")));
		
		return "/searchForm";
	}
	

	// 공고 상세 보기.
	@RequestMapping("/view")
	public String view(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("view", dao.viewDao(request.getParameter("seq")));
		System.out.println("view()");
		
		return "/view";

	}
	

}
