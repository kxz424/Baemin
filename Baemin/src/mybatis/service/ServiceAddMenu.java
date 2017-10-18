package mybatis.service;

import model.Menu;
import mybatis.session.CommentRepository1;

public class ServiceAddMenu {
	
	private static ServiceAddMenu service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceAddMenu() { }
	
	public static ServiceAddMenu getInstance() {
		if(service == null) service = new ServiceAddMenu();
		return service;
	} 
	
	public void insertAddMenu(Menu m) {
		
		repo.insertAddMenu(m); 
//		repo.insertFoodHome(h);  

	}
	

}
