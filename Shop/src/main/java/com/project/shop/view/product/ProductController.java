package com.project.shop.view.product;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.shop.common.base.BaseController;
import com.project.shop.product.ProductService;
import com.project.shop.product.ProductVO;

@Controller
@RequestMapping(value="/product")
public class ProductController extends BaseController{
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value="/productList.do")
	public ModelAndView productList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("viewName : "+viewName);
		mav.setViewName(viewName);
		
		int productCategoryNum = Integer.parseInt(request.getParameter("productCategoryNum"));
		mav.addObject("productCategoryNum", productCategoryNum);
		System.out.println("productCategoryNum : "+productCategoryNum);
		Map<String, List<ProductVO>> productMap = productService.listProduct(productCategoryNum);
		mav.addObject("productMap", productMap);
		return mav;
	}
}