package mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;
import mybatis.service.ServiceLogin;


public class CommandLogin implements Command {

	private String next;
	
	public CommandLogin( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		ServiceLogin.getInstance().selectMember(request.getParameter("mId"), request.getParameter("mPassword"));
		
		return next;
		
	}
}