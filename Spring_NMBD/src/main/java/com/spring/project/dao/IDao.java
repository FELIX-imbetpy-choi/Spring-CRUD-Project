package com.spring.project.dao;

import java.util.ArrayList;

import com.spring.project.dto.BDto;
import com.spring.project.dto.ContentDto;
import com.spring.project.dto.UserDto;

public interface IDao {
	public ArrayList<BDto> Mainlist();
	
	public ArrayList<BDto> user_login(final String user_id, final String user_pw);
	
	public ArrayList<BDto> com_login(final String com_id, final String com_pw);
	
	public ArrayList<ContentDto> listDao();
	
	public ArrayList<ContentDto> viewDao(String seq);
	
	public void deleteDao(String seq);
	
	public ArrayList<ContentDto> searchDao(String search);
	
	public void searchForm(String search);
	
	public ArrayList<UserDto> userDao(String user_id);
	
	public void deleteuserDao(String user_id);
	
	public void userupdateDao(String user_id,String user_pw, String name, String email, String age, String education, String major);
	
	public void userjoin(String user_id, String user_pw, String name, String age, String email, String major,
			String education);
	
	public void comjoin(String com_id, String com_pw, String business_num, String address, String company_name,
			String company_logo);
	// 기업 메인 공고 확인
	public ArrayList<BDto> comMainlist(final String com_id);
	// 기업 공고 작성
	public void comcontwrite(final String com_id, final String bTitle, final String bContent);
	// 기업 공고 지원자 확인
	public ArrayList<BDto> comApplylist(final String seq);
	// 기업 공고 내용 확인
	public ArrayList<BDto> comContentlist(final String seq);
	// 기업 공고 수정하기 불러오기
	public ArrayList<BDto> comContUpdateViewlist(final String seq);
	// 기업 공고 수정
	public void comContUpdate(final String com_id, final String Title, final String Content,final String seq);
	// 유저 공고 지원 
	public void apply(String user_id, String seq);
	// 기업 회원 탈퇴
	public void deletecomuserDao(final String com_id);
	
	public ArrayList<BDto> userApplyInfo(final String user_id);
	
	public ArrayList<BDto> comuser(String com_id);
	
	public void comupdateDao(String com_id, String com_pw, String company_name, String address, String business_num);
	
}
