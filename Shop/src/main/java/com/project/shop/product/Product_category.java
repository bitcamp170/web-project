package com.project.shop.product;

//��ǰ ī�װ� 
public class Product_category {

	// ��ǰ ī�װ� ��ȣ
	private int productCategoryNum;

	// ��ǰ ī�װ� �̸�
	private String productCategoryName;

	public Product_category() {
	}

	public Product_category(int productCategoryNum, String productCategoryName) {
		this.productCategoryNum = productCategoryNum;
		this.productCategoryName = productCategoryName;
	}

	public int getProductCategoryNum() {
		return productCategoryNum;
	}

	public void setProductCategoryNum(int productCategoryNum) {
		this.productCategoryNum = productCategoryNum;
	}

	public String getProductCategoryName() {
		return productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}

	@Override
	public String toString() {
		return "Product_category [productCategoryNum=" + productCategoryNum + ", productCategoryName="
				+ productCategoryName + "]";
	}

}