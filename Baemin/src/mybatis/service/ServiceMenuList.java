package mybatis.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Review;
import mybatis.session.CommentRepository1;

public class ServiceMenuList {
	
	private static ServiceMenuList service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceMenuList() { }
	
	public static ServiceMenuList getInstance() {
		if(service == null) service = new ServiceMenuList();
		return service;
	} 
	
	public List<Review> selectReview(String rFood) throws SQLException {
		
//		repo.insertFoodHome(h);
		
		return repo.selectReview(rFood);
  
	}
	

}
