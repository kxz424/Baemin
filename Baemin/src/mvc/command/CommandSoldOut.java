package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Menu;
import mybatis.service.ServiceSoldOut;


public class CommandSoldOut implements Command {

	private String next;
	
	public CommandSoldOut( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		Menu m = new Menu();
		request.getParameter("");
		
	
		
		ServiceSoldOut.getInstance().updateSoldOut(m);
		
		return next;
		
	}
}

