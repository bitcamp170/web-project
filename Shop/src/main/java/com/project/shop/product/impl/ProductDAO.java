package com.project.shop.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.shop.product.ProductVO;

@Repository("productDAO")
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ProductVO> selectProductList(int product_category_num) throws DataAccessException{
		System.out.println(product_category_num);
		System.out.println("SQL실행전");
		ProductVO product = 
				sqlSession.selectOne("mappers.product.selectGoodsList",product_category_num );
		
		
		System.out.println(product);
		
		
		
		return null;
	}
	
	public ProductVO selectProductDetail(String productId)throws DataAccessException{
		ProductVO productVO=sqlSession.selectOne("maaper.product.selectProductDetail", productId);
		return productVO;
	}
}
