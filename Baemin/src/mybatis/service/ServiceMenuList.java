package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceMenuList {
	
	private static ServiceMenuList service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceMenuList() { }
	
	public static ServiceMenuList getInstance() {
		if(service == null) service = new ServiceMenuList();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);  

	}
	

}
