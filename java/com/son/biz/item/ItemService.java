package com.son.biz.item;

import java.util.List;

public interface ItemService {
	boolean insert(ItemVO vo);
	List<ItemVO> selectAll(ItemVO vo);
	boolean delete(ItemVO vo);
	boolean update(ItemVO vo);
	ItemVO selectOne(ItemVO vo);
}
