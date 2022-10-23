package com.son.biz.buylist.impl;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;
import com.son.biz.buylist.BuyListVO;
import com.son.biz.item.ItemVO;

@Repository("buylistDAO")
public class BuyListDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public boolean insert(BuyListVO vo) {
		try {
			mybatis.insert("BuyListDAO.insertBuyList",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}

	public boolean delete(BuyListVO vo) {
		try {
			mybatis.delete("BuyListDAO.deleteBuyList",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}

	public int count(BuyListVO vo) {
		try {
			return mybatis.selectOne("BuyListDAO.countBuyList", vo);
		}catch(Exception e) {
			return 0;
		}
	}

	public List<BuyListVO> selectAll(BuyListVO vo) {
		try {
			return mybatis.selectList("BuyListDAO.selectAllBuyList",vo);
		}catch(EmptyResultDataAccessException e) {
			return null;
		}
	}
}