package mybatis.service;

import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<Review> selectReview(String boss) throws SQLException {
		
		ArrayList<Review> list = repo.selectReview(boss); 
//		repo.insertFoodHome(h);
		
		return list;
  
	}
	

}
