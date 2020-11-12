package com.project.shop.product;

//��ǰ 
public class ProductVO {

	// ��ǰ ���̵�
	private String productId;

	// ��ǰ �̸�
	private String productName;

	// ��ǰ ����
	private String productDetail;

	// �Ǹ� ����
	private int salesUnit;

	// ��ǰ �뷮
	private int productSize;

	// ���� Ÿ��
	private String packingType;

	// ��ǰ �̹���
	private String productImage;

	// �ŷ�ó
	private String supplier;

	// ��ǰ ī�װ� ��ȣ
	private int productCategoryNum;

	public ProductVO() {
	}

	public ProductVO(String productId, String productName, String productDetail, int salesUnit, int productSize,
			String packingType, String productImage, String supplier, int productCategoryNum) {
		this.productId = productId;
		this.productName = productName;
		this.productDetail = productDetail;
		this.salesUnit = salesUnit;
		this.productSize = productSize;
		this.packingType = packingType;
		this.productImage = productImage;
		this.supplier = supplier;
		this.productCategoryNum = productCategoryNum;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public int getSalesUnit() {
		return salesUnit;
	}

	public void setSalesUnit(int salesUnit) {
		this.salesUnit = salesUnit;
	}

	public int getProductSize() {
		return productSize;
	}

	public void setProductSize(int productSize) {
		this.productSize = productSize;
	}

	public String getPackingType() {
		return packingType;
	}

	public void setPackingType(String packingType) {
		this.packingType = packingType;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public int getProductCategoryNum() {
		return productCategoryNum;
	}

	public void setProductCategoryNum(int productCategoryNum) {
		this.productCategoryNum = productCategoryNum;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", productDetail=" + productDetail
				+ ", salesUnit=" + salesUnit + ", productSize=" + productSize + ", packingType=" + packingType
				+ ", productImage=" + productImage + ", supplier=" + supplier + ", productCategoryNum="
				+ productCategoryNum + "]";
	}
	
	
}
