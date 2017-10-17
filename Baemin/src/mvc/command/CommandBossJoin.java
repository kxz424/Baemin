package mvc.command;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Boss;

public class CommandBossJoin implements Command{

	private String next;
	
	private HttpServletRequest request;
	
	public CommandBossJoin( String next ) {
		this.next = next;
	}
	
	HttpSession session = request.getSession();

	 
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		
		Boss boss = (Boss)session.getAttribute("boss");
		
		
		System.out.println(boss.getbBirth());
		
			
//		Boss boss = new Boss();
//		
//		
//		
//		boss.setbName(request.getParameter("bName"));
//		boss.setbBirth(request.getParameter("bBirth"));
//		
//		
//		
//		
//	    request.getParameter("bName");
//	    request.getParameter("bBirth");
//	    
//	    request.getParameter("bTel2");
//	    
//	    request.getParameter("bMail");
//	    request.getParameter("bNum");
//	    
//	    request.getParameter("bId");
//	    request.getParameter("bPassword");
		
		

		return next;
		
		
	}


}
