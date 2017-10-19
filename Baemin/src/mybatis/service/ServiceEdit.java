package mybatis.service;

import model.FoodHome;
import mybatis.session.CommentRepository1;

public class ServiceEdit {
	
	private static ServiceEdit service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceEdit() { }
	
	public static ServiceEdit getInstance() {
		if(service == null) service = new ServiceEdit();
		return service;
	} 
	
	public void updateEdit(FoodHome fh) {
		
		repo.updateEdit(fh);  
//		repo.insertFoodHome(h); 

	}
	

}
