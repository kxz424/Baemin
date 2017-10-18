package mybatis.service;

import model.Boss;
import model.FoodHome;
import model.Member;
import mybatis.session.CommentRepository;
import mybatis.session.CommentRepository2;

public class ServiceJoin {
	
	private static ServiceJoin service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceJoin() { }
	
	public static ServiceJoin getInstance() {
		if(service == null) service = new ServiceJoin();
		return service;
	} 
	
	public void insertJoin(Member m) {
		repo.insertJoin(m);
		
	}
	

}
