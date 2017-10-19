package mybatis.service;

import java.util.ArrayList;

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

	public ArrayList selectAddMenu(Menu m) {
		
		return repo.selectAddMenu(m); 
		
	}
	

}
