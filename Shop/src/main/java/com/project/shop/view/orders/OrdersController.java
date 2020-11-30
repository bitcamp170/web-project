package com.project.shop.view.orders;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.shop.common.base.BaseController;
import com.project.shop.member.MemberVO;
import com.project.shop.orders.OrderService;
import com.project.shop.orders.OrderVO;

@Controller
@RequestMapping(value="/orders")
public class OrdersController extends BaseController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/import.do")
	public ModelAndView memberList(@ModelAttribute("OrderVO") OrderVO orderVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		System.out.println("viewName: " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		
		System.out.println("import: "+orderVO);
		String address = orderVO.getLoad_address() +" "+ orderVO.getRest_address();
		orderVO.setAddress(address);
		mav.addObject(orderVO);
		return mav;
	
	}
	
	@RequestMapping(value="/addOrder.do")
	public void orderComplete(@ModelAttribute("OrderVO") OrderVO orderVO,HttpServletRequest request) throws Exception {
		System.out.println("결제성공: "+orderVO);
		HttpSession session = request.getSession();
		MemberVO memberInfo = (MemberVO)session.getAttribute("memberInfo");
		if(memberInfo!=null) {
		String member_id = memberInfo.getMember_id();
		orderVO.setMember_id(member_id);
		}
		System.out.println("결제성공2: "+orderVO);		
		orderService.addOrder(orderVO);
		
	}
	
	

}