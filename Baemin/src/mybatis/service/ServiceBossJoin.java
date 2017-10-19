package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceBossJoin {
	
	private static ServiceBossJoin service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceBossJoin() { }
	
	public static ServiceBossJoin getInstance() {
		if(service == null) service = new ServiceBossJoin();
		return service;
	} 
	
	public int insertBossJoin(Boss b, FoodHome h) {
		 
		repo.insertBossJoin(b);  
		int result = repo.insertFoodHome(h);
		
		return result;

	}
	

}
