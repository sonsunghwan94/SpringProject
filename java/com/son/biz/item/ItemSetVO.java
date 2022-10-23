package com.son.biz.item;

import java.util.ArrayList;
import java.util.List;

import com.son.biz.review.*;

public class ItemSetVO {

	
	private ItemVO itemVO;
	private List<ReviewVO> rList =new ArrayList<ReviewVO>();
	
	public ItemVO getItemVO() {
		return itemVO;
	}
	public void setItemVO(ItemVO itemVO) {
		this.itemVO = itemVO;
	}
	public List<ReviewVO> getrList() {
		return rList;
	}
	public void setrList(List<ReviewVO> rList) {
		this.rList = rList;
	}
}
