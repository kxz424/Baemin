package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceAddMenu {
	
	private static ServiceAddMenu service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceAddMenu() { }
	
	public static ServiceAddMenu getInstance() {
		if(service == null) service = new ServiceAddMenu();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b); 
//		repo.insertFoodHome(h);  

	}
	

}
