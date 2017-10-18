package mybatis.service;

import java.util.List;

import model.Boss;
import model.FoodHome;
import model.Member;
import mybatis.session.CommentRepository;
import mybatis.session.CommentRepository2;

public class ServiceLogin {
	
	private static ServiceLogin service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceLogin() { }
	
	public static ServiceLogin getInstance() {
		if(service == null) service = new ServiceLogin();
		return service;
	} 
	
	public void selectMember(String id, String password) {
		repo.selectMember(id, password);

	}
	

}
