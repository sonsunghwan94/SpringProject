package com.son.biz.buylist;

import com.son.biz.item.ItemVO;
import com.son.biz.member.MemberVO;

public class BuyListVO {
	private int bid; // 구매번호
	private int iid; //구매한 물건
	private String mid; // 구매한 멤버
	private int startnum;
	private int endnum;
	private MemberVO memberVO;
	private ItemVO itemVO;
	
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public ItemVO getItemVO() {
		return itemVO;
	}
	public void setItemVO(ItemVO itemVO) {
		this.itemVO = itemVO;
	}
	public int getStartnum() {
		return startnum;
	}
	public void setStartnum(int startnum) {
		this.startnum = startnum;
	}
	public int getEndnum() {
		return endnum;
	}
	public void setEndnum(int endnum) {
		this.endnum = endnum;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getIid() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid = iid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	@Override
	public String toString() {
		return "BuyListVO [bid=" + bid + ", iid=" + iid + ", mid=" + mid + "]";
	}
	
	
}
