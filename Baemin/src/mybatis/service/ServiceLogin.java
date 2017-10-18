package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceLogin {
	
	private static ServiceLogin service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceLogin() { }
	
	public static ServiceLogin getInstance() {
		if(service == null) service = new ServiceLogin();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h); 

	}
	

}
