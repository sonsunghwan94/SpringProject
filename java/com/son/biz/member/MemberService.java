package com.son.biz.member;

import java.util.List;

public interface MemberService {
	MemberVO selectOne(MemberVO vo);
	MemberVO nickCheck(MemberVO vo);
	List<MemberVO> mailCheck(MemberVO vo);
	List<MemberVO> selectAll(MemberVO vo);
	boolean insert(MemberVO vo);
	boolean update(MemberVO vo);
	boolean delete(MemberVO vo);
}
