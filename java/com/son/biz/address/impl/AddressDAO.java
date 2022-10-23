package com.son.biz.address.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.son.biz.address.AddressVO;

@Repository("addressDAO")
public class AddressDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public boolean insert(AddressVO vo) {
		try {
			mybatis.insert("addressDAO.insertAddress",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	public boolean update(AddressVO vo) {
		try {
			mybatis.update("addressDAO.updateAddress",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	public boolean delete(AddressVO vo) {
		try {
			mybatis.delete("addressDAO.deleteAddress",vo);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	public AddressVO selectOne(AddressVO vo) {
		try {
			return mybatis.selectOne("addressDAO.selectOneAddress",vo);
		}catch(Exception e) {
			return null;
		}
	}

}
