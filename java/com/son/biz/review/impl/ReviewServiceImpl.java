package com.son.biz.review.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.son.biz.review.ReviewService;
import com.son.biz.review.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public List<ReviewVO> selectAll(ReviewVO vo) {
		return reviewDAO.selectAll(vo);
	}

	@Override
	public boolean insert(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewDAO.insert(vo);
	}

	@Override
	public boolean update(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewDAO.update(vo);
	}

	@Override
	public boolean delete(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewDAO.delete(vo);
	}

	@Override
	public int selectStar(ReviewVO vo) {
		return reviewDAO.selectStar(vo);
	}
	
	
}
