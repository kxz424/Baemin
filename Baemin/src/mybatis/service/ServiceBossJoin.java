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
	
	public void insertBossJoin(Boss b) {
		 
		repo.insertBossJoin(b);  
//		repo.insertFoodHome(h);

	}
	

}
