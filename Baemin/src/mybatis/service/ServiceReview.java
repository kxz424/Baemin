package mybatis.service;

import java.sql.SQLException;
import java.util.List;

import model.Review;
import mybatis.session.CommentRepository1;

public class ServiceReview {
	
	private static ServiceReview service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceReview() { }
	
	public static ServiceReview getInstance() {
		if(service == null) service = new ServiceReview();
		return service;
	} 
	
	public void insertReview(Review r) {
		
		repo.insertReview(r); 
  
	}
	
	public List<Review> selectReview(String rFood) {
		return repo.selectReview(rFood);
	}
	

	

}
