package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceBossLogin {
	
	private static ServiceBossLogin service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceBossLogin() { }
	
	public static ServiceBossLogin getInstance() {
		if(service == null) service = new ServiceBossLogin();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		
		repo.insertBossJoin(b);
 
	}
	

}
