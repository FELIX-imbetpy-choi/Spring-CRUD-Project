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
public class BComController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private TransactionTemplate transactionTemplate;
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
	      this.transactionTemplate = transactionTemplate;
	   }
	
		// 기업회원 로그인
		@RequestMapping("/com_login")
		public String com_login(HttpServletRequest request,Model model) {
			System.out.println("com_login()");
			String trap = "[]";
					
			IDao dao = sqlSession.getMapper(IDao.class);
			if(dao.com_login(request.getParameter("com_id"),request.getParameter("com_pw")) != null) {
				model.addAttribute("comMain", dao.comMainlist(request.getParameter("com_id")));
				// 기업 부분으로 보내기
				System.out.println(dao.com_login(request.getParameter("com_id"),request.getParameter("com_pw")));
				return "comMain";
			}
			else {
				System.out.println(dao.com_login(request.getParameter("com_id"),request.getParameter("com_pw")));
				return "Mainpage";
			}
		}
		
		// 기업 회원가입 페이지 이동
		@RequestMapping("/CompanyJoin")
		public String CompanyJoin(Model model) {
			System.out.println("CompanyJoin()");
			return "/CompanyJoin";
		}
		
		// 기업 회원가입 실행부.
		@RequestMapping("/comjoinaction")
		public String comjoinaction(HttpServletRequest request, Model model) {
					System.out.println("joinaction()");
					
					// list에서 가져옴 request변수에 들어있는것을 request 로 받아서 사용		
					final String com_id = request.getParameter("com_id");
					final String com_pw = request.getParameter("com_pw");
					final String business_num = request.getParameter("business_num");
					final String address = request.getParameter("address");
					final String company_name = request.getParameter("company_name");
					final String company_logo = request.getParameter("file");
					
					transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			            
			            @Override
			            protected void doInTransactionWithoutResult(TransactionStatus status) {
							IDao dao = sqlSession.getMapper(IDao.class);
							dao.comjoin(com_id, com_pw, business_num, address, company_name, company_logo);
			            }
			        });
					return "redirect:Mainpage";
				}
				
		// 기업 메인 페이지
		@RequestMapping("/comMain")
		public String comMain(HttpServletRequest request, Model model) {
					IDao dao = sqlSession.getMapper(IDao.class);
					model.addAttribute("comMain", dao.comMainlist(request.getParameter("com_id")));
					System.out.println("comMain()");
					return "comMain";
			}
		
		// 메인에서 공고 작성 page로 이동 시키기.
		@RequestMapping("/comContWrite_view")
		public String comContWrite_view(Model model) {
			System.out.println("comContWrite_view()");
			return "comContWrite_view";
		}
		
		// 기업 공고 작성
		   @RequestMapping("/comContWrite")
		   public String comContWrite(final HttpServletRequest request, Model model) {
		      transactionTemplate.execute(new TransactionCallbackWithoutResult() {
		         
		         @Override
		         protected void doInTransactionWithoutResult(TransactionStatus status) {
		            IDao dao = sqlSession.getMapper(IDao.class);
		            dao.comcontwrite(request.getParameter("com_id"), request.getParameter("bTitle"), request.getParameter("bContent"));
		            System.out.println("comContWrite()");
		            
		         }
		      });
		      return "redirect:comMain?com_id="+request.getParameter("com_id");
		   }
		
		// 공고 지원자 확인
		@RequestMapping("/comApply")
		public String comApply(HttpServletRequest request, Model model) {
			IDao dao = sqlSession.getMapper(IDao.class);
			model.addAttribute("comApply", dao.comApplylist(request.getParameter("seq")));
			System.out.println("comApply()");
			return "comApply";
		}
		
		// 공고 상세내용 보기
		@RequestMapping("/comContentView")
		public String comContent_view(HttpServletRequest request, Model model) {
			IDao dao = sqlSession.getMapper(IDao.class);
			model.addAttribute("comContentView", dao.comContentlist(request.getParameter("seq")));
			System.out.println("comContentView()");
			return "comContent_view";	
		}	

		// 공고 상세내용에서 수정하기로 이동하기
		@RequestMapping("/comContUpdateview")
		public String comContUpdate_view(HttpServletRequest request, Model model) {
			IDao dao = sqlSession.getMapper(IDao.class);
			model.addAttribute("comContUpdateview", dao.comContUpdateViewlist(request.getParameter("seq")));
			System.out.println("comContUpdateview()");
			return "comContUpdate_view";
		}
		
		// 기업 상세내용 수정하기 완료
		@RequestMapping("/comContUpdate")
		public String comContUpdate(final HttpServletRequest request, Model model) {
			transactionTemplate.execute(new TransactionCallbackWithoutResult() {
				
				@Override
			    protected void doInTransactionWithoutResult(TransactionStatus status) {
					IDao dao = sqlSession.getMapper(IDao.class);
					dao.comContUpdate(request.getParameter("com_id"), request.getParameter("Title"), request.getParameter("Content"),request.getParameter("seq"));
					System.out.println("comUpdate()");
					

					
				}
		  });
				return "redirect:comMain?com_id="+request.getParameter("com_id");
		}
		
		// 기업 상세내용 수정하기
				@RequestMapping(value = "/comupdate", method = RequestMethod.POST)
				public String comupdate(final HttpServletRequest request, final Model model) {
					transactionTemplate.execute(new TransactionCallbackWithoutResult() {
						@Override
					    protected void doInTransactionWithoutResult(TransactionStatus status) {
							IDao dao = sqlSession.getMapper(IDao.class);
							dao.comupdateDao(request.getParameter("com_id"),request.getParameter("com_pw"), request.getParameter("company_name"), request.getParameter("address"), request.getParameter("business_num"));
							String id = request.getParameter("com_id");
							model.addAttribute("com_id", id);
						}
					  });
					return "redirect:comMain?com_id="+request.getParameter("com_id");
				}
				
				// 기업정보 확인
				@RequestMapping("/comInfo")
				public String comInfo(HttpServletRequest request, Model model) {
					IDao dao = sqlSession.getMapper(IDao.class);
					model.addAttribute("comInfo", dao.comuser(request.getParameter("com_id")));
					System.out.println("comInfo()");
					
					return "/comInfo";
				}
				
				// 기업회원 탈퇴 확인.
				@RequestMapping("/comSecession")
				public String comSecession(HttpServletRequest request, Model model) {
							
					return "/comSecession";
				}
				
				// 기업회원 탈퇴 실행부.
				@RequestMapping("/deletecomuser")
				public String deletecomuser(HttpServletRequest request, Model model) {
					
					IDao dao = sqlSession.getMapper(IDao.class);
					dao.deletecomuserDao(request.getParameter("com_id"));
					
					return "Mainpage";
				}


}
