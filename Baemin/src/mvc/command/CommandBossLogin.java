package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Boss;
import model.Member;
import mybatis.service.ServiceLogin;


public class CommandBossLogin implements Command {

	private String next;
	
	public CommandBossLogin( String next ) {
		this.next = next;
	}
	 
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		HttpSession session = request.getSession();
		
		String id = request.getParameter("bId");
		String password = request.getParameter("bPassword");
		
		Boss b = ServiceLogin.getInstance().selectBoss(id, password);
		
		if(b == null) {
			request.setAttribute("boss", null);
			request.setAttribute("login", "true");
			
			return "../boss/BossLoginForm.jsp";
			
		}
		
		session.setAttribute("boss", b);
		
		return next;
		
	}
}
