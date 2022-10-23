package com.son.biz.buylist.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.son.biz.buylist.BuyListService;
import com.son.biz.buylist.BuyListVO;
import com.son.biz.item.ItemVO;

@Service("buylistService")
public class BuyListServieceImpl implements BuyListService{
	@Autowired
	private BuyListDAO buylistDAO;
	@Override
	public int count(BuyListVO vo) {
		// TODO Auto-generated method stub
		return buylistDAO.count(vo);
	}

	@Override
	public List<BuyListVO> selectAll(BuyListVO vo) {
		// TODO Auto-generated method stub
		return buylistDAO.selectAll(vo);
	}

	@Override
	public boolean insert(BuyListVO vo) {
		// TODO Auto-generated method stub
		return buylistDAO.insert(vo);
	}

	@Override
	public boolean delete(BuyListVO vo) {
		// TODO Auto-generated method stub
		return buylistDAO.delete(vo);
	}

}
