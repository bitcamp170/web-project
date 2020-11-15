package com.project.shop.product;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ProductVO {//상품 
	//product
	private String product_id; // 상품 아이디
	private String product_name; // 상품 이름
	private String product_detail;// 상품 설명
	private int sales_unit;// 판매 단위
	private int product_size;// 상품 용량
	private String packing_type; // 포장 타입
	private String product_image; // 상품 이미지
	private String supplier; // 거래처
	//private int product_category_num; // 상품 카테고리 번호

	//Product_category
	private int product_category_num; // 상품 카테고리 번호
	private String product_category_name; // 상품 카테고리 이름

	//product_option
	private String option_name; // 옵션 이름
	private int option_price;// 옵션 가격
	private int option_quantity; // 옵션 수량
	//private String product_id; // 상품 아이디
	
	//item
	private int item_num; // 제품 번호
	private int price; // 가격
	private int stock;// 재고
	private int sales;// 판매
	private int discount; // 할인률
	private Date reg_date; // 등록 날짜 제품 등록일자
	private int unit_price; // 단위가격
	
	private int sale_price;//판매가격
	
	//private String product_id; // 상품 아이디
	
	public ProductVO() {
		
	}
	public ProductVO(String product_id, String product_name, String product_detail, int sales_unit, int product_size,
			String packing_type, String product_image, String supplier, int product_category_num,
			String product_category_name, String option_name, int option_price, int option_quantity, int item_num,
			int price, int stock, int sales, int discount, Date reg_date, int unit_price) {
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_detail = product_detail;
		this.sales_unit = sales_unit;
		this.product_size = product_size;
		this.packing_type = packing_type;
		this.product_image = product_image;
		this.supplier = supplier;
		this.product_category_num = product_category_num;
		this.product_category_name = product_category_name;
		this.option_name = option_name;
		this.option_price = option_price;
		this.option_quantity = option_quantity;
		this.item_num = item_num;
		this.price = price;
		this.stock = stock;
		this.sales = sales;
		this.discount = discount;
		this.reg_date = reg_date;
		this.unit_price = unit_price;
		
	}
	
	public int getSale_price() {
		return sale_price;
	}
	public void setSale_price() {
		this.sale_price = (int) (this.price*(1-this.discount/(double)100));
	}
	
	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_detail() {
		return product_detail;
	}

	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}

	public int getSales_unit() {
		return sales_unit;
	}

	public void setSales_unit(int sales_unit) {
		this.sales_unit = sales_unit;
	}

	public int getProduct_size() {
		return product_size;
	}

	public void setProduct_size(int product_size) {
		this.product_size = product_size;
	}

	public String getPacking_type() {
		return packing_type;
	}

	public void setPacking_type(String packing_type) {
		this.packing_type = packing_type;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public int getProduct_category_num() {
		return product_category_num;
	}

	public void setProduct_category_num(int product_category_num) {
		this.product_category_num = product_category_num;
	}

	public String getProduct_category_name() {
		return product_category_name;
	}

	public void setProduct_category_name(String product_category_name) {
		this.product_category_name = product_category_name;
	}

	public String getOption_name() {
		return option_name;
	}

	public void setOption_name(String option_name) {
		this.option_name = option_name;
	}

	public int getOption_price() {
		return option_price;
	}

	public void setOption_price(int option_price) {
		this.option_price = option_price;
	}

	public int getOption_quantity() {
		return option_quantity;
	}

	public void setOption_quantity(int option_quantity) {
		this.option_quantity = option_quantity;
	}

	public int getItem_num() {
		return item_num;
	}

	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}

	@Override
	public String toString() {
		return "ProductVO [product_id=" + product_id + ", product_name=" + product_name + ", product_detail="
				+ product_detail + ", sales_unit=" + sales_unit + ", product_size=" + product_size + ", packing_type="
				+ packing_type + ", product_image=" + product_image + ", supplier=" + supplier
				+ ", product_category_num=" + product_category_num + ", product_category_name=" + product_category_name
				+ ", option_name=" + option_name + ", option_price=" + option_price + ", option_quantity="
				+ option_quantity + ", item_num=" + item_num + ", price=" + price + ", stock=" + stock + ", sales="
				+ sales + ", discount=" + discount + ", reg_date=" + reg_date + ", unit_price=" + unit_price + "]";
	}
	
	
	
}