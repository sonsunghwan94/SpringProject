package com.son.biz.item;

public class ItemVO {
	private int iid; // 물건 번호
	private String iimg; // 물건 이미지
	private String iname; // 물건 이름
	private String iprice; // 물건 가격
	private String icategory; // 물건 카테고리
	private int icnt;
	private String idate;
	private int more;
	private int star;
	
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getMore() {
		return more;
	}
	public void setMore(int more) {
		this.more = more;
	}
	public String getIdate() {
		return idate;
	}
	public void setIdate(String idate) {
		this.idate = idate;
	}
	public int getIcnt() {
		return icnt;
	}
	public void setIcnt(int icnt) {
		this.icnt = icnt;
	}
	
	public int getIid() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid = iid;
	}
	public String getIimg() {
		return iimg;
	}
	public void setIimg(String iimg) {
		this.iimg = iimg;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getIprice() {
		return iprice;
	}
	public void setIprice(String iprice) {
		this.iprice = iprice;
	}
	public String getIcategory() {
		return icategory;
	}
	public void setIcategory(String icategory) {
		this.icategory = icategory;
	}
	@Override
	public String toString() {
		return "ItemVO [iid=" + iid + ", iimg=" + iimg + ", iname=" + iname + ", iprice=" + iprice + ", icategory="
				+ icategory + ", icnt=" + icnt + ", idate=" + idate + ", more=" + more + ", star=" + star + "]";
	}
	

	
	
	
}
