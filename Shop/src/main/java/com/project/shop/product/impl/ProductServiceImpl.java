package com.project.shop.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.shop.product.ProductService;
import com.project.shop.product.ProductVO;

@Service("productService")
@Transactional(propagation=Propagation.REQUIRED)
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;
	
	
	@Override
	public Map<String, List<ProductVO>> listProduct(int productCategoryNum) throws Exception {
		Map<String, List<ProductVO>> productMap = new HashMap<String,List<ProductVO>>();
		List<ProductVO> productList = productDAO.selectProductList(productCategoryNum);
		
		if(productCategoryNum==1) {
			productMap.put("meat", productList);
		}else if(productCategoryNum==2) {
			productMap.put("vegetable", productList);
		}else if(productCategoryNum==3) {
			productMap.put("bakery", productList);
		}
		return productMap;
	}

	@Override
	public Map productDetail(String productId) throws Exception {
		Map productMap = new HashMap();
		ProductVO productVO = productDAO.selectProductDetail(productId);
		productMap.put("productVO", productVO);
		return productMap;
	}

}
