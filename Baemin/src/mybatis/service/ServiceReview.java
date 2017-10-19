package mybatis.service;

import java.sql.SQLException;

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
//		repo.insertFoodHome(h);
  
	}
	

	

}
