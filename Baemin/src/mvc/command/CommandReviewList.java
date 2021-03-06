package mvc.command;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.Review;
import mybatis.service.ServiceMenuList;
import mybatis.service.ServiceReview;


public class CommandReviewList implements Command {

	private String next;
	
	public CommandReviewList( String next ) {
		this.next = next;
	}
	  
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		String rFood = request.getParameter("rFood");
//		System.out.println(rFood);
		List<Review> list = new ArrayList<Review>();
		
		list = ServiceReview.getInstance().selectReview(rFood);
		
		
		request.setAttribute("reviewList", list);
		
		return next;
		
	}
}