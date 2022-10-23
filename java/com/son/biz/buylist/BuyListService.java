package com.son.biz.buylist;

import java.util.List;

import com.son.biz.item.ItemVO;

public interface BuyListService {
	int count(BuyListVO vo);
	List<BuyListVO> selectAll(BuyListVO vo);
	boolean insert(BuyListVO vo);
	boolean delete(BuyListVO vo);
	
}
