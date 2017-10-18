package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceOrder {
	
	private static ServiceOrder service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceOrder() { }
	
	public static ServiceOrder getInstance() {
		if(service == null) service = new ServiceOrder();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b);   
//		repo.insertFoodHome(h);

	}
	

}
