package mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import mybatis.service.ServiceLogin;


public class CommandLogout implements Command {

	private String next;
	
	public CommandLogout( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		HttpSession session = request.getSession();
		
		session.setAttribute("user", null);
		
		return next;
		
	}
}