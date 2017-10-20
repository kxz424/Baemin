package mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import mybatis.service.ServiceLogin;


public class CommandBossLogout implements Command {

	private String next;
	
	public CommandBossLogout( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		HttpSession session = request.getSession();
		
		session.setAttribute("boss", null);
		
		return next;
		
	}
}