package mvc.command;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.glass.ui.Menu;

import model.FoodHome;
import model.Review;
import mybatis.service.ServiceMenuList;


public class CommandMenuList implements Command {

	private String next;
	
	public CommandMenuList( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		FoodHome foodhome = new FoodHome();
		
		String fboss = request.getParameter("fboss");
		foodhome.setfBoss(fboss);
		foodhome.setfCategory(request.getParameter("fcategory"));
		foodhome.setfClose(request.getParameter("fclose"));
		foodhome.setfIng(request.getParameter("fing"));
		foodhome.setfLocation(request.getParameter("flocation"));
		foodhome.setfName(request.getParameter("fname"));
		foodhome.setfOpen(request.getParameter("fopen"));
		foodhome.setfTel(request.getParameter("ftel"));
		
		request.setAttribute("foodhome", foodhome);
		
		List<Menu> menu = ServiceMenuList.getInstance().selectMenuList(fboss);
		request.setAttribute("menulist", menu);
		
		return next;
		
	}
}

