package mvc.command;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Review;
import mybatis.service.ServiceMenuList;


public class CommandMenuList implements Command {

	private String next;
	
	public CommandMenuList( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		String boss = request.getParameter("boss");
		
		try {
			ArrayList<Review> list = ServiceMenuList.getInstance().selectReview(boss);
			request.setAttribute("reviewList", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return next;
		
	}
}

