package com.son.biz.member.impl;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.son.biz.member.MemberService;
import com.son.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public MemberVO selectOne(MemberVO vo) {
		return memberDAO.selectOne(vo);
	}

	@Override
	public MemberVO nickCheck(MemberVO vo) {
		return memberDAO.nickCheck(vo);
	}
	@Override
	public List<MemberVO> mailCheck(MemberVO vo) {
		return memberDAO.mailCheck(vo);
	}

	@Override
	public List<MemberVO> selectAll(MemberVO vo) {
		return memberDAO.selectAll(vo);
	}

	@Override
	public boolean insert(MemberVO vo) {
		return memberDAO.insert(vo);
	}


	@Override
	public boolean update(MemberVO vo) {
		return memberDAO.update(vo);
	}

	@Override
	public boolean delete(MemberVO vo) {
		return memberDAO.delete(vo);
	}
}
