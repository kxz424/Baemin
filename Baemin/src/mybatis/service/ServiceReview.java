package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceReview {
	
	private static ServiceReview service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceReview() { }
	
	public static ServiceReview getInstance() {
		if(service == null) service = new ServiceReview();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);

	}
	

}
