package com.project.shop.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	
	public Map<String,List<ProductVO>> listProduct(int productCategoryNum) throws Exception;
	public Map productDetail(String product_id) throws Exception;	
}
