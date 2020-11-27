package com.project.shop.board;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardVO {
	
	private String image1;
	private String image2;
	private String image3;
	
	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

//	row_num
	private int r_num;
	private int parent_num;

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	//	공지사항
	private int notice_num;
	private int next_no;
	private int pre_no;
	private String title;
	private String contents;
	private Date reg_date;
	private int views;

//	FAQ
	private int faq_num;
	private int qna_category_num;
	private String qna_category_name;

// 상품문의
	private int product_qna_num;
	private String product_id;
	private String member_id;
	private String product_name;

//	1:1 문의
	private int member_qna_num;
	private int order_num;
	private String email;
	private String phone;
	
	public String getProduct_name() {
		return product_name;
	}
	
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public int getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getFaq_num() {
		return faq_num;
	}

	public void setFaq_num(int faq_num) {
		this.faq_num = faq_num;
	}

	public int getQna_category_num() {
		return qna_category_num;
	}
	
	public void setQna_category_num(String qna_category_num) {
		this.qna_category_num = Integer.parseInt(qna_category_num);
	}
	
	public void setQna_category_num(int qna_category_num) {
		this.qna_category_num = qna_category_num;
	}

	public int getProduct_qna_num() {
		return product_qna_num;
	}

	public void setProduct_qna_num(int product_qna_num) {
		this.product_qna_num = product_qna_num;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getParent_num() {
		return parent_num;
	}

	public void setParent_num(int parent_num) {
		this.parent_num = parent_num;
	}

	public int getMember_qna_num() {
		return member_qna_num;
	}

	public void setMember_qna_num(int member_qna_num) {
		this.member_qna_num = member_qna_num;
	}

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQna_category_name() {
		return qna_category_name;
	}

	public void setQna_category_name(String qna_category_name) {
		this.qna_category_name = qna_category_name;
	}

	public int getNext_no() {
		return next_no;
	}

	public void setNext_no(int next_no) {
		this.next_no = next_no;
	}

	public int getPre_no() {
		return pre_no;
	}

	public void setPre_no(int pre_no) {
		this.pre_no = pre_no;
	}
	
}
