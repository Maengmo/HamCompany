package com.ham.member;

import java.util.List;
import java.util.Map;

import com.ham.domain.MyApplicationDTO;
import com.ham.domain.MyCsCenterDTO;
import com.ham.domain.MyFDetailDTO;
import com.ham.domain.MyFieldDTO;
import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MyJACareerDTO;
import com.ham.domain.MyJAEduDTO;
import com.ham.domain.MyJALicenseDTO;
import com.ham.domain.MyJobAPLDTO;
import com.ham.domain.MyMemberDTO;
import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
import com.ham.domain.MySpeakMDTO;

public interface MyUserService {

	//사용자 정보 수정
	MyMemberDTO editProfile(String id);

	int updateProfile(MyMemberDTO dto);

	int updatepwProfile(MyMemberDTO dto);

	//포트폴리오
	void addportfolio(MyPortfolioDTO dto, List<String> files);

	List<MyPortfolioDTO> portfoliolist(String id);

	List<MyPortfolioDTO> editportfolio(String p_seq);

	void updateportfolio(MyPortfolioDTO dto, List<String> files);

	List<MyPGalleryDTO> gallerylist(String p_seq);

	void delFile(String name);

	void deleteportfolio(String p_seq);
	
	//커뮤니티
	List<MyHReviewDTO> llist(Map<String, String> map);

	String lcomment(String hr_seq);

	String lsize(String id);

	List<MySpeakMDTO> slist(Map<String, String> map);

	String scomment(String sm_seq);

	String ssize(String id);

	
	//구직 신청
	List<MyFieldDTO> flist();

	List<MyFDetailDTO> fdlist();

	int addJAP(MyJobAPLDTO jobdto, MyJAEduDTO edudto, MyJACareerDTO careerdto, MyJALicenseDTO licdto);

	List<MyApplicationDTO> getApplication(String id);

	
	//지원 내역
	void updateAccept(String o_seq);

	void updateDeny(String o_seq);

	List<MyCsCenterDTO> getCsList(String id);
	
}
