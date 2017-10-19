package mybatis.service;

import model.Menu;
import mybatis.session.CommentRepository;


public class ServiceAddMenu {
	
	private static ServiceAddMenu service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceAddMenu() { } 
	
	public static ServiceAddMenu getInstance() {
		if(service == null) service = new ServiceAddMenu();
		return service;
	} 
	
	public void insertAddMenu(Menu m) {
		 
		repo.insertAddMenu(m); 
		 
 
	}

	public void selectAddMenu(Menu m) {
		
		repo.selectAddMenu(m); 
		 
	}
	

}
