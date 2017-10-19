package mybatis.service;

import model.FoodHome;
import mybatis.session.CommentRepository;

public class ServiceIng {
	
	private static ServiceIng service;
	CommentRepository repo = new CommentRepository();
	
	private ServiceIng() { }
	
	public static ServiceIng getInstance() {
		if(service == null) service = new ServiceIng();
		return service;
	} 
	
	public void updateIng(FoodHome fh) {
		  
		repo.updateIng(fh); 

	}
	

}
