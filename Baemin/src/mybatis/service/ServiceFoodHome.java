package mybatis.service;

import java.util.List;

import model.Boss;
import model.FoodHome;
import mybatis.session.CommentRepository;
import mybatis.session.CommentRepository2;

public class ServiceFoodHome {
	
	private static ServiceFoodHome service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceFoodHome() { }
	
	public static ServiceFoodHome getInstance() {
		if(service == null) service = new ServiceFoodHome();
		return service;
	} 
	
	public List<FoodHome> selectCategory(String cate) {
		 
		return repo.selectCategory(cate);

	}
	
	public List<FoodHome> selectText(String search) {
		return repo.selectText(search);

	}
	

}
