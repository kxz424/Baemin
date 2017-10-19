package mybatis.service;

import model.Menu;
import mybatis.session.CommentRepository;

public class ServiceSoldOut {
	
	private static ServiceSoldOut service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceSoldOut() { }
	
	public static ServiceSoldOut getInstance() {
		if(service == null) service = new ServiceSoldOut();
		return service;
	} 
	
	public void updateSoldOut(Menu m) {
		 
		repo.updateSoldOut(m);  


	}
	

}
