package mybatis.service;

import model.FoodHome;
import mybatis.session.CommentRepository1;

public class ServiceIng {
	
	private static ServiceIng service;
	CommentRepository1 repo = new CommentRepository1();
	
	private ServiceIng() { }
	
	public static ServiceIng getInstance() {
		if(service == null) service = new ServiceIng();
		return service;
	} 
	
	public void updateIng(FoodHome fh) {
		  
		repo.updateIng(fh); 

	}
	

}
