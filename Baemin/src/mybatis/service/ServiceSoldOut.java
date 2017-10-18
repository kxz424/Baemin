package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceSoldOut {
	
	private static ServiceSoldOut service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceSoldOut() { }
	
	public static ServiceSoldOut getInstance() {
		if(service == null) service = new ServiceSoldOut();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);

	}
	

}
