package com.son.biz.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.son.biz.buylist.BuyListService;
import com.son.biz.buylist.BuyListVO;
import com.son.biz.item.ItemVO;
import com.son.biz.member.MemberService;
import com.son.biz.member.MemberVO;
@Controller
public class MemberCtrl {
	@Autowired
	MemberService memberService;
	@Autowired
	BuyListService buylistService;
	@RequestMapping("login.do")
	public String login(@RequestParam(value="amid",required=false)String amid,Model model,MemberVO vo,HttpSession session) {
		MemberVO user=memberService.selectOne(vo);
		if(amid!=null) {
			vo.setMid(amid);
			if(memberService.selectOne(vo)==null) {
				Random r =new Random();
				int rand;
				String nick;
				while(true) {
					rand=r.nextInt(10000)+1;
					nick="Petkige"+rand;
					MemberVO ch_vo=new MemberVO();
					ch_vo.setMnick(nick);
					if(memberService.nickCheck(ch_vo)!=null) {
						vo.setMnick(nick);
						vo.setMemail(amid);
						vo.setMname("이름없음");
						memberService.insert(vo);
						break;
					}
				}
			}
			user=memberService.selectOne(vo);
			List<ItemVO> datas=new ArrayList<ItemVO>();
			session.setAttribute("datas", datas);
			session.setAttribute("mid", user.getMid());
			session.setAttribute("user", user);
			return "main.do";
		}
		if(session.getAttribute(vo.getMid())!=null&&(int)session.getAttribute(vo.getMid())==5) { // 실패 카운트가 5가 되면
			int flag=1; 
			model.addAttribute("flag",flag); // 플래그 변수를 전달
			return "login.jsp";
		}
		if(user!=null) { // 회원 정보가 있을 시
			List<ItemVO> datas=new ArrayList<ItemVO>();
			session.setAttribute("datas", datas);
			session.setAttribute("mid", user.getMid());
			session.setAttribute("user", user);
			return "main.do";
		}else { // 회원 정보가 없을 시
			if(session.getAttribute(vo.getMid())==null) { // 해당 id로 로그인 시도한적이 없다면
				session.setAttribute(vo.getMid(), 1); // 세션에 로그인 시도한 id를 저장
			}else { // 해당 id로 로그인 시도한적이 있다면
				session.setAttribute(vo.getMid(), (int)session.getAttribute(vo.getMid())+1); // 기존 세션에 저장된 id에 카운트를 더해서 저장
			}
			int flag=2;
			model.addAttribute("flag",flag);
			return "login.jsp";
		}
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index.jsp";
	}
	
	@RequestMapping("findid.do")
	public String findId(MemberVO vo,Model model) {
		List<MemberVO>datas = memberService.mailCheck(vo);
		model.addAttribute("member", datas);
		return "idfindresult.jsp";
	}
	
	@RequestMapping("findpw.do")
	public String findPw(Model model,MemberVO vo) {
		vo=memberService.selectOne(vo);
		model.addAttribute("member",vo);
		return "pwfindresult.jsp";
	}
	
	@ResponseBody
	@RequestMapping("check.do")
	public String check(@RequestParam("phoneNumber")String pn,SendSMS sms) {
		System.out.println("폰번호:"+pn);
		String num=sms.sendSMS(pn);
		return num;
	}
	
	@RequestMapping("mypage.do")
	public String mypage(@RequestParam(value="pageNum",required=false)String pn,Model model,HttpSession session,BuyListVO bvo,MemberVO mvo) {
		
		int pageSize=5; // 한번에 보여질 페이지 갯수
		int pageNum;  // 현재 페이지 번호
		int startNum;  // 페이지 블록 시작 번호(ex.1 , 6 , 10 , ...)
		int endNum;  // 페이지 블록 끝 번호(ex.5 , 9 , 14, ...)
		int pageCount; // 전체 페이지 갯수
		int totalcnt; // 데이터 총 갯수
		
		mvo=(MemberVO)session.getAttribute("user");
		System.out.println("ID:"+mvo.getMid());
		bvo.setMid(mvo.getMid());
		if(pn!=null){ // View에서 pageNum 전달
			boolean flag=true;
			pageNum=Integer.parseInt(pn);
			model.addAttribute("pageNum",pageNum);
			model.addAttribute("flag",flag);
		}else{ // View에서 pageNum 전달 X -> 페이지 첫 진입
			pageNum=1;	// 현재 페이지 번호를 1로 설정
			model.addAttribute("firstNum",1);
		}
		startNum=((pageNum-1)/pageSize)*pageSize+1; // 페이지블록 시작 번호
		endNum=(((pageNum-1)/pageSize)+1)*pageSize; // 페이지블록 끝 번호
		totalcnt=buylistService.count(bvo); // 데이터 총 갯수
		System.out.println("총 갯수:"+totalcnt);
		pageCount=totalcnt/pageSize+(totalcnt%pageSize==0?0:1); // 페이지 갯수
		// 전체 데이터 갯수가 pageSize로 나누어 떨어지지 않으면 페이지 갯수 +1
		if(pageCount<endNum){ // 페이지 블록 끝 번호가 전체 페이지 갯수보다 크다면 
			endNum=pageCount; // 페이지 블록 끝 번호를 페이지 갯수로 설정
		}
		model.addAttribute("startNum", startNum);
		model.addAttribute("endNum", endNum);
		model.addAttribute("pcnt", pageCount);
		bvo.setStartnum((pageNum-1)*pageSize); // 페이지마다 불러올 데이터 시작 번호
		List<BuyListVO> data=buylistService.selectAll(bvo);
		List<ItemVO> datas=new ArrayList<ItemVO>();;
		for (int i = 0; i < data.size(); i++) {
			datas.add(data.get(i).getItemVO());
		}
		model.addAttribute("datas",datas);
		return "mypage.jsp";
	}
	
	@RequestMapping("updateM.do")
	public String updateM(MemberVO vo,HttpSession session) {
		if(memberService.update(vo)) {
			vo=memberService.selectOne(vo);
			session.setAttribute("user", vo);
			return "mypage.do";			
		}else {
			System.out.println("로그: 회원정보 업데이트 실패!");
			return "main.do";
		}
	}
	
	@RequestMapping("deleteM.do")
	public String deleteM(HttpSession session,MemberVO vo) {
		session.invalidate();
		memberService.delete(vo);
		return "index.jsp";
	}
	
	@ResponseBody
	@RequestMapping("checkId.do")
	public String checkId(@RequestParam("mid")String mid,MemberVO vo) {
		vo.setMid(mid);
		vo=memberService.selectOne(vo);
		if(vo==null) {
			return "2";
		}else {
			return "1";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("checkNick.do")
	public String checkNick(@RequestParam("mnick")String mnick,MemberVO vo) {
		vo.setMnick(mnick);
		vo=memberService.nickCheck(vo);
		if(vo==null) {
			return "2";
		}else {
			return "1";
		}
	}
	
	@RequestMapping("signup.do")
	public String signup(@RequestParam("memailid")String eid,@RequestParam("memailAd")String aid,MemberVO vo) {
		vo.setMemail(eid+aid);
		if(memberService.insert(vo)) {
			return "signsuccess.jsp";			
		}else {
			return "signup.jsp";
		}
	}
}
