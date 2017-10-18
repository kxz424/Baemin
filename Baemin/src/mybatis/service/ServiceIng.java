package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceIng {
	
	private static ServiceIng service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceIng() { }
	
	public static ServiceIng getInstance() {
		if(service == null) service = new ServiceIng();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		 
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);

	}
	

}
