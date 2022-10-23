package com.son.biz.review.impl;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.son.biz.review.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	boolean insert(ReviewVO vo) {
		try {
			mybatis.insert("ReviewDAO.insertReview",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	boolean update(ReviewVO vo) {
		try {
			mybatis.update("ReviewDAO.updateReview",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	boolean delete(ReviewVO vo) {
		try {
			mybatis.delete("ReviewDAO.deleteReview",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	List<ReviewVO> selectAll(ReviewVO vo){
		return mybatis.selectList("ReviewDAO.selectAllReview",vo);
	}
	int selectStar(ReviewVO vo) {
		int cnt=mybatis.selectOne("ReviewDAO.selectStar",vo);
		return cnt;
	}
}

