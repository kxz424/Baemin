package mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import mybatis.service.ServiceLogin;


public class CommandLogin implements Command {

	private String next;
	
	public CommandLogin( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
//		HttpSession session = request.getSession();
		
		String id = request.getParameter("mId");
		String password = request.getParameter("mPassword");
		
		Member m = ServiceLogin.getInstance().selectMember(id, password);
		
		if(m == null) {
			request.setAttribute("user", null);
			request.setAttribute("login", "true");
			
			return "LoginForm.jsp";
			
		}
		
		request.setAttribute("user", m);
		
		return next;
		
	}
}