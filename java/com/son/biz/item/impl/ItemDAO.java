package com.son.biz.item.impl;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import com.son.biz.item.ItemVO;

@Repository("itemDAO")
public class ItemDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public boolean insert(ItemVO vo) {
		try {
			mybatis.insert("ItemDAO.insertItem",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	public boolean update(ItemVO vo) {
		try {
			mybatis.update("ItemDAO.updateItem",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	public boolean delete(ItemVO vo) {
		try {
			mybatis.delete("ItemDAO.deleteItem",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	public ItemVO selectOne(ItemVO vo) {
		try {
			return mybatis.selectOne("ItemDAO.selectOneItem",vo);
		}catch(Exception e) {
			return null;
		}
	}
	
	public List<ItemVO> selectAll(ItemVO vo) {
		try {
			return mybatis.selectList("ItemDAO.selectAllItem",vo);
		}catch(Exception e) {
			return null;
		}
	}
}
