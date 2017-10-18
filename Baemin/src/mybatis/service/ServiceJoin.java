package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceJoin {
	
	private static ServiceJoin service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceJoin() { }
	
	public static ServiceJoin getInstance() {
		if(service == null) service = new ServiceJoin();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);

	}
	

}
