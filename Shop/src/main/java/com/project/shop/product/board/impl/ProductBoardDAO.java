package com.project.shop.product.board.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shop.product.board.ProductBoardQnaVO;
import com.project.shop.product.board.ReviewVO;

@Repository("productBoardDAO")
public class ProductBoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	//================================ Q&A 게시판 ==================================
	public int selectTotalCountProductQna(String product_id) {
		int totalCount = sqlSession.selectOne("mappers.product_qna.totalCount", product_id);
		return totalCount;
	}
	public List<ProductBoardQnaVO> selectProductQnaList(Map map){
		List<ProductBoardQnaVO> productQnaList =
				sqlSession.selectList("mappers.product_qna.selectProductQna", map);
		return productQnaList;
	}
	
	public void insertBoardQna(Map map) {
		int boardQnaNo = selectQnaNo()+1;
		System.out.println("borardQnaNo: " + boardQnaNo);
		map.put("product_qna_num", boardQnaNo);
		sqlSession.insert("mappers.product_qna.insertBoardQna", map);
	}
	public ProductBoardQnaVO selectProductQna(int product_qna_num) {
		System.out.println("DAO에서 PRODUCT_QNA_NUM : "+product_qna_num);
		ProductBoardQnaVO productQna = sqlSession.selectOne("mappers.product_qna.selectQna", product_qna_num);
		return productQna;
	}
	public int selectQnaNo() {
		int qnaNo =sqlSession.selectOne("mappers.product_qna.selectQnaNo");
		return qnaNo;
	}
	public void updateBoardQna(Map map) {
		sqlSession.update("mappers.product_qna.updateBoardQna", map);
	}
	public void deleteBoardQna(int product_qna_num) {
		sqlSession.delete("mappers.product_qna.deleteBoardQna", product_qna_num);
	}
	//============================= REVIEW 게시판 ==============================
	public int selectReviewTotalCount(String product_id) {
		return sqlSession.selectOne("mappers.review.totalCount", product_id);
	}
	public List<ReviewVO> selectReviewList(Map map){
		List<ReviewVO> reviewList = 
				sqlSession.selectList("mappers.review.selectReviewList", map);
		return reviewList;
	}
	public int selectReviewNo() {
		int qnaNo =sqlSession.selectOne("mappers.review.selectReviewNo");
		return qnaNo;
	}
	public void insertReview(Map map) {
		map.put("review_num", selectReviewNo()+1);
		sqlSession.insert("mappers.review.insertReview", map);
	}
}
