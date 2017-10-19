package mybatis.service;

import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceEdit {
	
	private static ServiceEdit service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceEdit() { }
	
	public static ServiceEdit getInstance() {
		if(service == null) service = new ServiceEdit();
		return service;
	} 
	
	public void updateEdit(FoodHome fh) {
		 
		repo.updateEdit(fh);  
 

	}
	

}
