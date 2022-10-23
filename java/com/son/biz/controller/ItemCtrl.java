package com.son.biz.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.son.biz.address.AddressService;
import com.son.biz.address.AddressVO;
import com.son.biz.buylist.BuyListService;
import com.son.biz.buylist.BuyListVO;
import com.son.biz.item.ItemService;
import com.son.biz.item.ItemSetVO;
import com.son.biz.item.ItemVO;
import com.son.biz.member.MemberVO;
import com.son.biz.review.ReviewService;
import com.son.biz.review.ReviewVO;

@Controller
@SessionAttributes("text")
public class ItemCtrl {

	@Autowired
	private ItemService itemService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private BuyListService buylistService;
	@Autowired
	private AddressService addressService;
	@RequestMapping("main.do")
	public String main(@RequestParam(value="text",required=false)String text,Model model,HttpSession session,ItemVO vo) {
		if(text!=null) {
			while(true) {
				int idx=text.indexOf(" ");
				text=text.substring(idx+1);
				if(text.contains(" ")==false) {
					session.setAttribute("text", text);
					break;
				}
			}
		}else {
			text=(String)session.getAttribute("text");
		}
		if(text.equals("rain")) {
			vo.setIcategory("053011");
			List<ItemVO> datas=itemService.selectAll(vo);
			model.addAttribute("ITEMB",datas);
		}else if(text.equals("snow")) {
			vo.setIcategory("053007002");
			List<ItemVO> datas=itemService.selectAll(vo);
			model.addAttribute("ITEMB",datas);
		}else {
			vo.setIcategory("053010");
			List<ItemVO> datas=itemService.selectAll(vo);
			model.addAttribute("ITEMB",datas);
		}
		vo.setIdate("NEW");
		List<ItemVO> datas=itemService.selectAll(vo);
		model.addAttribute("ITEMN",datas);
		return "main.jsp";
	}

	@RequestMapping("detail.do")
	public String detail(Model model,ItemVO ivo,ReviewVO rvo,ItemSetVO set) {
		ItemVO data=itemService.selectOne(ivo);
		List<ReviewVO> list=reviewService.selectAll(rvo);
		set.setItemVO(data);
		set.setrList(list);
		model.addAttribute("datas",set);
		return "detail.jsp";
	}

	@RequestMapping("productlist.do")
	public String productlist(@RequestParam(value="searchContent",required=false)String search,Model model,ItemVO vo) {
		List<ItemVO> datas;
		List<ItemVO> datas2;
		if(search!=null) {
			if(!Pattern.matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*", search)) { // 검색어에 한글이 없다면 -> 영어로 잘못 입력했다고 판단
				TempTest ts1 = new TempTest();
				String result = ts1.engToKor(search); // 해당 검색어를 한글로 변환
				search=result;
				model.addAttribute("result",result);
			}
			
			if(vo.getMore()==0) {
				vo.setMore(12);
			}
			model.addAttribute("more",vo.getMore());
			model.addAttribute("search",search);
			vo.setIname(search);
			datas=itemService.selectAll(vo);
			vo.setMore(vo.getMore()+1);
			datas2=itemService.selectAll(vo);
			
			model.addAttribute("datas",datas);
		}else {
			model.addAttribute("icategory",vo.getIcategory());
			model.addAttribute("more",vo.getMore());
			datas=itemService.selectAll(vo);
			vo.setMore(vo.getMore()+1);
			datas2=itemService.selectAll(vo);
			model.addAttribute("datas",datas);
		}
		if(datas.size()==datas2.size()) {
			int flag=1;
			model.addAttribute("flag",flag);
		}
		return "productlist.jsp";
	}
	
	@RequestMapping("insertR.do")
	public String insertR(@RequestParam(value="fileName",required=false)MultipartFile uploadFile,ReviewVO rvo,ItemVO ivo,HttpSession session) throws IllegalStateException, IOException {
		if(!uploadFile.isEmpty()) {
			String fileName=uploadFile.getOriginalFilename();
			rvo.setRimg("images/"+fileName);
			uploadFile.transferTo(new File("C:\\0607SON\\workspace\\springProject\\src\\main\\webapp\\images\\"+fileName));
		}
		MemberVO user=(MemberVO)session.getAttribute("user");
		rvo.setMid(user.getMid());
		rvo.setWriter(user.getMnick());
		reviewService.insert(rvo);
		int star=reviewService.selectStar(rvo);
		ivo.setStar(star);
		itemService.update(ivo);
		return "forward:detail.do";
	}
	
	@RequestMapping("buy.do")
	public String buy(Model model,ItemVO vo,AddressVO avo,HttpSession session) {
		ItemVO data=itemService.selectOne(vo);
		List<ItemVO> datas=new ArrayList<ItemVO>();
		datas.add(data);
		MemberVO user=(MemberVO)session.getAttribute("user");
		avo.setMid(user.getMid());
		AddressVO address=addressService.selectOne(avo);
		if(address!=null) {
		model.addAttribute("addr",address);
		}
		session.setAttribute("order", datas);
		model.addAttribute("data",datas);
		return "buy.jsp";
	}
	@RequestMapping("cartBuy.do")
	public String cartBuy(Model model,ItemVO vo,AddressVO avo,HttpSession session) {
		List<ItemVO> datas=(ArrayList<ItemVO>)session.getAttribute("datas");
		MemberVO user=(MemberVO)session.getAttribute("user");
		avo.setMid(user.getMid());
		AddressVO address=addressService.selectOne(avo);
		if(address!=null) {
			model.addAttribute("addr",address);
		}
		session.setAttribute("order", datas);
		model.addAttribute("data",datas);
		return "buy.jsp";
	}
	
	@RequestMapping("commit.do")
	public String commit(@RequestParam("address1")String address1,@RequestParam("address2")String address2,@RequestParam("total_price")String price,Model model,ItemVO ivo,BuyListVO bvo,AddressVO avo,HttpSession session) {
		List<ItemVO> datas=(List<ItemVO>)session.getAttribute("order");
		avo.setAddress(address1+" "+address2);
		MemberVO user=(MemberVO)session.getAttribute("user");
		for(ItemVO v:datas) {
			bvo.setMid(user.getMid());
			bvo.setIid(v.getIid());
			buylistService.insert(bvo);
		}
		avo.setMid(user.getMid());
		if(addressService.selectOne(avo)==null) {
			addressService.insert(avo);
		}else {
			addressService.update(avo);
		}
		
		GmailSend gs=new GmailSend();
		gs.GmailSet(user.getMemail(), "펫키지 구매내역", "<!doctype html>\r\n"
				+ "<html lang=\"en\">\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"utf-8\">\r\n"
				+ "<meta name=\"viewport\"\r\n"
				+ "	content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n"
				+ "<meta name=\"author\" content=\"Untree.co\">\r\n"
				+ "<link rel=\"shortcut icon\" href=\"favicon.png\">\r\n"
				+ "\r\n"
				+ "<meta name=\"description\" content=\"\" />\r\n"
				+ "<meta name=\"keywords\" content=\"free template, bootstrap, bootstrap4\" />\r\n"
				+ "<link\r\n"
				+ "	href=\"https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Single+Day&display=swap\"\r\n"
				+ "	rel=\"stylesheet\">\r\n"
				+ "<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\r\n"
				+ "<link\r\n"
				+ "	href=\"https://fonts.googleapis.com/css2?family=Crimson+Text:ital@0;1&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap\"\r\n"
				+ "	rel=\"stylesheet\">\r\n"
				+ "\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/animate.min.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"fonts/feather/style.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"fonts/flaticon/font/flaticon.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/jquery.fancybox.min.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/aos.css\">\r\n"
				+ "<link rel=\"stylesheet\" href=\"css/style.css\">\r\n"
				+ "\r\n"
				+ "<title>펫키지</title>\r\n"
				+ "<script src=\"https://code.jquery.com/jquery-3.6.0.js\"\r\n"
				+ "	integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\"\r\n"
				+ "	crossorigin=\"anonymous\"></script>\r\n"
				+ "<!-- memberchange만의 특수 style설정 -->\r\n"
				+ "<style type=\"text/css\">\r\n"
				+ ".modal {\r\n"
				+ "	position: fixed;\r\n"
				+ "	top: 50%;\r\n"
				+ "	left: 50%;\r\n"
				+ "	width: 100%;\r\n"
				+ "	height: 100%;\r\n"
				+ "	display: none;\r\n"
				+ "	background-color: rgba(0, 0, 0, 0.4);\r\n"
				+ "	transform: translate(-50%, -50%);\r\n"
				+ "}\r\n"
				+ "\r\n"
				+ ".modal.show {\r\n"
				+ "	display: block;\r\n"
				+ "}\r\n"
				+ "\r\n"
				+ ".modal_body {\r\n"
				+ "	position: absolute;\r\n"
				+ "	top: 50%;\r\n"
				+ "	left: 50%;\r\n"
				+ "	width: 100%;\r\n"
				+ "	height: 100vh;\r\n"
				+ "	padding: 40px;\r\n"
				+ "	text-align: center;\r\n"
				+ "	background-color: rgb(255, 255, 255);\r\n"
				+ "	border-radius: 10px;\r\n"
				+ "	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);\r\n"
				+ "	transform: translateX(-50%) translateY(-50%);\r\n"
				+ "}\r\n"
				+ "</style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<ryo:header />\r\n"
				+ "\r\n"
				+ "\r\n"
				+ "	<ryo:menu type=\"receipt\" />\r\n"
				+ "\r\n"
				+ "	<div class=\"container pt-3 pb-3 mb-3 border-bottom\">\r\n"
				+ "		<div class=\"row justify-content-center\">\r\n"
				+ "			<form>\r\n"
				+ "				<table border=\"2\"\r\n"
				+ "					style=\"width: 450px; height: 500px; border-color: black;\">\r\n"
				+ "					<tr style=\"background-color: white;\">\r\n"
				+ "						<td colspan=\"2\" align=\"center\"><h5 style=\"padding-left: 10px;\">영수증</h5></td>\r\n"
				+ "					</tr>\r\n"
				+ "					<tr>\r\n"
				+ "						<td align=\"center\" >\r\n"
				+ "							<h5 style=\"text-align: center\">제품 이름</h5>\r\n"
				+ "						</td>\r\n"
				+ "						<td>\r\n"
				+ "							<h5 style=\"text-align: center;\">제품 가격</h5>\r\n"
				+ "						</td>\r\n"
				+ "					</tr>\r\n"
				+ "					<!-- 여백 -->\r\n"
				+ "					<tr>\r\n"
				+ "						<td colspan=\"2\"></td>\r\n"
				+ "					</tr>\r\n"
				+ "					\r\n"
				+ "					<tr>\r\n"
				+ "						<td align=\"center\">\r\n"
				+ "							<h5 style=\"text-align: center\">"+datas.get(0).getIname()+" 외 "+(datas.size()-1)+"</h5>\r\n"
				+ "						</td>\r\n"
				+ "						<td style=\"text-align:right;\">\r\n"
				+ "							<h5 style=\"text-align: right; padding-right: 10px;\">\r\n"
				+ "								"+datas.get(0).getIprice()+"</h5>\r\n"
				+ "						</td>\r\n"
				+ "					</tr>\r\n"
				+ "			\r\n"
				+ "					<!-- 여백 -->\r\n"
				+ "					<tr>\r\n"
				+ "						<td colspan=\"2\"></td>\r\n"
				+ "					</tr>\r\n"
				+ "					<!-- 여백 -->\r\n"
				+ "					<!-- 펫 리스트 반복 -->\r\n"
				+ "					<tr>\r\n"
				+ "						<td>\r\n"
				+ "							<h5 style=\"text-align: center; padding-left: 10px;\">총 합계</h5>\r\n"
				+ "						</td>\r\n"
				+ "						<td>\r\n"
				+ "							<h5 style=\"text-align: right; padding-right: 10px;\">"+price+"원"+"</h5>\r\n"
				+ "						</td>\r\n"
				+ "					</tr>\r\n"
				+ "				</table>\r\n"
				+ "			</form>\r\n"
				+ "			<!-- <div>\r\n"
				+ "			<a><input type=\"button\" class=\"btn btn-outline-black btn-block\" value=\"메인으로 가기\"></a>\r\n"
				+ "			</div> -->\r\n"
				+ "\r\n"
				+ "		</div>\r\n"
				+ "	</div>\r\n"
				+ "\r\n"
				+ "\r\n"
				+ "\r\n"
				+ "	<ryo:footer />\r\n"
				+ "\r\n"
				+ "\r\n"
				+ "</body>\r\n"
				+ "</html>");
		return "ordersuccess.jsp";
	}
	
	@RequestMapping(value="cart.do",method=RequestMethod.POST)
	public String cart(Model model,ItemVO vo,HttpSession session) {
		List<ItemVO> datas=(ArrayList<ItemVO>)session.getAttribute("datas");
		ItemVO data=itemService.selectOne(vo);
		datas.add(data);
		session.setAttribute("datas", datas);
		return "forward:detail.do";
	}
	
	@RequestMapping(value="cart.do",method=RequestMethod.GET)
	public String cart() {
		return "cart.jsp";
	}
	
	@RequestMapping("deleteC.do")
	public String deleteC(@RequestParam("index")String index,HttpSession session) {
		String arr[]=index.split("/");
		ArrayList<ItemVO> datas=(ArrayList<ItemVO>)session.getAttribute("datas");
		for(int i=arr.length-1;i>=0;i--) {
				int num=Integer.parseInt(arr[i]);
				datas.remove(num);
		}
		session.setAttribute("datas", datas);
		return "cart.jsp";
	}
	
	

}
