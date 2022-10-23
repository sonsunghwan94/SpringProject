package com.son.biz.address;

import java.util.List;

public interface AddressService {
	AddressVO selectOne(AddressVO vo);
	boolean insert(AddressVO vo);
	boolean update(AddressVO vo);
	boolean delete(AddressVO vo);
}
