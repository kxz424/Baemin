package mybatis.service;

import model.Boss;
import mybatis.session.CommentRepository1;

public class ServiceReview {
	
	private static ServiceReview service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceReview() { }
	
	public static ServiceReview getInstance() {
		if(service == null) service = new ServiceReview();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
//		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);
  
	}
	

}
