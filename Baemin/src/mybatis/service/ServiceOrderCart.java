package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceOrderCart {
	
	private static ServiceOrderCart service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceOrderCart() { }
	
	public static ServiceOrderCart getInstance() {
		if(service == null) service = new ServiceOrderCart();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
//		repo.insertBossJoin(b);   
//		repo.insertFoodHome(h);

	}
	

}
