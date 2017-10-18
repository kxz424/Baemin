package mybatis.service;

import model.Menu;
import mybatis.session.CommentRepository1;

public class ServiceSoldOut {
	
	private static ServiceSoldOut service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceSoldOut() { }
	
	public static ServiceSoldOut getInstance() {
		if(service == null) service = new ServiceSoldOut();
		return service;
	} 
	
	public void updateSoldOut(Menu m) {
		 
		repo.updateSoldOut(m);  
//		repo.insertFoodHome(h);

	}
	

}
