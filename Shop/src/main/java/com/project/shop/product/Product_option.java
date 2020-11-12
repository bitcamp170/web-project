package com.project.shop.product;

//��ǰ �ɼ� 
public class Product_option {

	// �ɼ� �̸�
	private String optionName;

	// �ɼ� ����
	private int optionPrice;

	// �ɼ� ����
	private int optionQuantity;

	// ��ǰ ���̵�
	private String productId;

	public Product_option() {
		super();
	}

	public Product_option(String optionName, int optionPrice, int optionQuantity, String productId) {
		super();
		this.optionName = optionName;
		this.optionPrice = optionPrice;
		this.optionQuantity = optionQuantity;
		this.productId = productId;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public int getOptionPrice() {
		return optionPrice;
	}

	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}

	public int getOptionQuantity() {
		return optionQuantity;
	}

	public void setOptionQuantity(int optionQuantity) {
		this.optionQuantity = optionQuantity;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "Product_option [optionName=" + optionName + ", optionPrice=" + optionPrice + ", optionQuantity="
				+ optionQuantity + ", productId=" + productId + "]";
	}

}