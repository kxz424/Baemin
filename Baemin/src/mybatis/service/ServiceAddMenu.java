package mybatis.service;

import java.util.ArrayList;
import java.util.List;

import model.FoodHome;
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
	
	public List<Menu> insertAddMenu(Menu m) {
		 
		 return repo.insertAddMenu(m); 
		  
 
	}
	 

	public List<Menu> selectAddMenu(String m) {
		   
		return repo.selectAddMenu(m); 
		
	}
	
	public List<FoodHome> selectEdit(String fh) {
		     
		return repo.selectEdit(fh); 
		
	}
	
	

}
