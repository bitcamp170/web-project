package com.project.shop.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.shop.product.ProductVO;

@Repository("productDAO")
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ProductVO> selectProductList(int product_category_num, Map map) throws DataAccessException{
		System.out.println(product_category_num);
		System.out.println("sql실행전");
		System.out.println(map.get("listKey"));
		System.out.println(map.get("orderKey"));
		System.out.println(map.get("product_category_num"));
		List<ProductVO> productList= 
				sqlSession.selectList("mappers.product.selectGoodsList",map );
		System.out.println("sql실행후");
		for(ProductVO vo : productList) {
			vo.setSale_price();
		}
		return productList;
	}
	public String selectProductCategoryName(int product_category_num) {
		String productCategoryName = sqlSession.selectOne("mappers.product.selectProductCategoryName",product_category_num );
		return productCategoryName;
	}
	//product 갯수 조회
	public int getTotalCount(int productCategoryNum) {
		int totalCount = sqlSession.selectOne("mappers.product.totalCount", productCategoryNum);
		System.out.println("product 갯수 : "+ totalCount);
		return totalCount;
		
	} 
	public ProductVO selectProductDetail(String productId)throws DataAccessException{
		ProductVO productVO=sqlSession.selectOne("maaper.product.selectProductDetail", productId);
		return productVO;
	}
	
}
