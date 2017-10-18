package mybatis.service;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;
import mybatis.session.CommentRepository2;

public class ServiceLogin {
	
	private static ServiceLogin service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceLogin() { }
	
	public static ServiceLogin getInstance() {
		if(service == null) service = new ServiceLogin();
		return service;
	} 
	
	public void insertBossJoin(Boss b) {
		repo.insertBossJoin(b);

	}
	

}
