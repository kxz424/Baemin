package mybatis.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.glass.ui.Menu;

import model.FoodHome;
import model.Review;
import mybatis.session.CommentRepository1;
import mybatis.session.CommentRepository2;

public class ServiceMenuList {
	
	private static ServiceMenuList service;
	CommentRepository2 repo = new CommentRepository2();
	
	private ServiceMenuList() { }
	
	public static ServiceMenuList getInstance() {
		if(service == null) service = new ServiceMenuList();
		return service;
	} 
	
	public List<Menu> selectMenuList(String fboss) {
		
		return repo.selectMenuList(fboss);
		
	}
	

}
