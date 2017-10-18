package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceFoodHome {
	
	private static ServiceFoodHome service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceFoodHome() { }
	
	public static ServiceFoodHome getInstance() {
		if(service == null) service = new ServiceFoodHome();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b);  
//		repo.insertFoodHome(h);

	}
	

}
