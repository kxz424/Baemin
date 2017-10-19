package mvc.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Review;
import mybatis.service.ServiceReview;


public class CommandReview implements Command {

	private String next;
	
	public CommandReview( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		System.out.println("1>>>>"+request.getParameter("id"));
		Review r = new Review();
		r.setrMember(request.getParameter("id"));
		r.setrContent(request.getParameter("review"));
		r.setrFood(request.getParameter("food"));
		
		ServiceReview.getInstance().insertReview(r);
		System.out.println("2>>>"+request.getParameter("id"));
		try {
			response.getWriter().print("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
}

