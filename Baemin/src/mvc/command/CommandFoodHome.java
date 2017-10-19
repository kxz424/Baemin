package mvc.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodHome;
import mybatis.service.ServiceFoodHome;


public class CommandFoodHome implements Command {

	private String next;
	
	public CommandFoodHome( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		String cate = request.getParameter("cate");
		
		List<FoodHome> foodhome = ServiceFoodHome.getInstance().selectCategory(cate);
		
		request.setAttribute("foodhome", foodhome);
		
		return next;
		
	}
}

