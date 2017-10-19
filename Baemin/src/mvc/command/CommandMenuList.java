package mvc.command;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
		String rFood = request.getParameter("rFood");
//		System.out.println(rFood);
		List<Review> list = new ArrayList<Review>();
		
		try {
			list = ServiceMenuList.getInstance().selectReview(rFood);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("reviewList", list);
		
		return next;
		
	}
}

