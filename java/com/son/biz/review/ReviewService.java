package com.son.biz.review;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> selectAll(ReviewVO vo);
	int selectStar(ReviewVO vo);
	boolean insert(ReviewVO vo);
	boolean update(ReviewVO vo);
	boolean delete(ReviewVO vo);
}
