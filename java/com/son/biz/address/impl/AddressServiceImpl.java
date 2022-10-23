package com.son.biz.address.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.son.biz.address.AddressService;
import com.son.biz.address.AddressVO;

@Service("addressService")
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	private AddressDAO addressDAO;

	@Override
	public AddressVO selectOne(AddressVO vo) {
		return addressDAO.selectOne(vo);
	}

	@Override
	public boolean insert(AddressVO vo) {
		return addressDAO.insert(vo);
	}

	@Override
	public boolean update(AddressVO vo) {
		return addressDAO.update(vo);
	}

	@Override
	public boolean delete(AddressVO vo) {
		return addressDAO.delete(vo);
	}

}
