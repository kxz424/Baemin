package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CommandOrderCart implements Command {

	private String next;
	
	public CommandOrderCart( String next ) {
		this.next = next;
	}
	 
 	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
	
		
		
		return next;
		
	}
}

