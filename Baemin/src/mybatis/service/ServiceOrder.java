package mybatis.service;

import model.Boss;
import model.FoodHome;
import model.Order;
import mybatis.session.CommentRepository;
import mybatis.session.CommentRepository2;

public class ServiceOrder {
	
	private static ServiceOrder service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceOrder() { }
	
	public static ServiceOrder getInstance() {
		if(service == null) service = new ServiceOrder();
		return service;
	} 
	
	public void insertOrder(Order o) {
		repo.insertOrder(o);

	}
	

}
