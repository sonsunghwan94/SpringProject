package com.son.biz.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.son.biz.member.MemberVO;

@Repository("memberDAO")
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public boolean insert(MemberVO vo) {
		try {
			mybatis.insert("MemberDAO.insertMember",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	public boolean update(MemberVO vo) {
		try {
			mybatis.update("MemberDAO.updateMember",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	public boolean delete(MemberVO vo) {
		try {
			mybatis.delete("MemberDAO.deleteMember",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	public MemberVO selectOne(MemberVO vo) {
		try {
			return mybatis.selectOne("MemberDAO.selectOneMember",vo);
		}catch(Exception e) {
			return null;
		}
	}
	public List<MemberVO> selectAll(MemberVO vo) {
		try {
			return mybatis.selectList("MemberDAO.selectOneMember",vo);
		}catch(Exception e) {
			return null;
		}
	}
	public MemberVO nickCheck(MemberVO vo) {
		try {
			return mybatis.selectOne("MemberDAO.nickCheck",vo);
		}catch(Exception e) {
			return null;
		}
	}
	public List<MemberVO> mailCheck(MemberVO vo) {
		try {
			return mybatis.selectList("MemberDAO.mailCheck",vo);
		}catch(Exception e) {
			return null;
		}
	}
	
}
