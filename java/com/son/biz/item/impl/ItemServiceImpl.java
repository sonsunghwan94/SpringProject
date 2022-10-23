package com.son.biz.item.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.son.biz.item.ItemService;
import com.son.biz.item.ItemVO;

@Service("itemService")
public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemDAO itemDAO; 
	@Override
	public boolean insert(ItemVO vo) {
		return itemDAO.insert(vo);
	}

	@Override
	public List<ItemVO> selectAll(ItemVO vo) {
		return itemDAO.selectAll(vo);
	}

	@Override
	public boolean delete(ItemVO vo) {
		// TODO Auto-generated method stub
		return itemDAO.delete(vo);
	}

	@Override
	public boolean update(ItemVO vo) {
		return itemDAO.update(vo);
	}

	@Override
	public ItemVO selectOne(ItemVO vo) {
		// TODO Auto-generated method stub
		return itemDAO.selectOne(vo);
	}

}
